#!/bin/bash

# --- This script interactively flattens a folder and categorizes the output by file type. ---

# 1. Ask for the folder to flatten (Source)
read -p "Enter the full path to the folder you want to flatten: " SOURCE_DIR

# Check if the source folder actually exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: The folder '$SOURCE_DIR' was not found."
  exit 1
fi

# 2. Ask for the output folder (Destination)
read -p "Enter the full path for the new folder to save the categorized files in: " DEST_DIR

# 3. Interactively build the ignore list
IGNORE_LIST=() # Start with an empty list
echo "Next, enter the full paths of any folders or files you want to IGNORE."
echo "(Press ENTER on an empty line when you are finished.)"

while true; do
    read -p "Path to ignore: " item_to_ignore
    if [ -z "$item_to_ignore" ]; then
        break
    else
        IGNORE_LIST+=("$item_to_ignore")
    fi
done


# --- SUMMARY AND CONFIRMATION ---
echo
echo "========================================"
echo "          PLEASE CONFIRM"
echo "========================================"
echo "Folder to flatten:    $SOURCE_DIR"
echo "Output location:      $DEST_DIR"
echo "--> Files will be sorted into subfolders: md, images, video, audio, sheets, docs, code, other"
echo
if [ ${#IGNORE_LIST[@]} -gt 0 ]; then
    echo "The following paths will be IGNORED:"
    for item in "${IGNORE_LIST[@]}"; do
        echo "  - $item"
    done
else
    echo "No folders or files will be ignored."
fi
echo "========================================"

# Ask for a final Yes/No confirmation
read -p "Is this correct? (y/n): " confirm
if [[ "$confirm" != [yY] ]]; then
    echo "Operation cancelled."
    exit 0
fi


# --- SCRIPT LOGIC (No need to edit) ---

echo "Setting up destination folder..."
mkdir -p "$DEST_DIR"

# Create the map file and add a header
MAP_FILE="$DEST_DIR/file_map.csv"
echo "New Path,Original Full Path" > "$MAP_FILE"

# Build the 'find' command arguments
find_args=("$SOURCE_DIR")

if [ ${#IGNORE_LIST[@]} -gt 0 ]; then
    find_args+=(\()
    first_item=true
    for item in "${IGNORE_LIST[@]}"; do
        if ! $first_item; then
            find_args+=(-o)
        fi
        find_args+=(-path "$item")
        first_item=false
    done
    find_args+=(\) -prune -o)
fi

find_args+=(-type f -print)

echo "Processing, categorizing, and copying files..."
copied_count=0

# Execute the find command and loop through the results
find "${find_args[@]}" | while read -r filepath; do
  relative_path="${filepath#$SOURCE_DIR/}"

  original_filename=$(basename -- "$filepath")
  extension="${original_filename##*.}"

  # Convert extension to lowercase using a universally compatible command
  lowercase_ext=$(echo "$extension" | tr '[:upper:]' '[:lower:]')

  # --- Determine the category based on file extension ---
  category="other" # Default category
  case "$lowercase_ext" in
      md|markdown)
          category="md"
          ;;
      jpg|jpeg|png|gif|svg|webp|heic|tiff|bmp|avif)
          category="images"
          ;;
      mp4|mov|avi|mkv|webm|flv|wmv)
          category="video"
          ;;
      mp3|m4a|flac|wav|aac|ogg)
          category="audio"
          ;;
      xls|xlsx|csv|numbers)
          category="sheets"
          ;;
      pdf|doc|docx|ppt|pptx|txt|pages|key|rtf)
          category="docs"
          ;;
      js|ts|jsx|tsx|py|java|c|cpp|h|html|css|scss|sh|rb|go|php|json|xml|yml|yaml|sql)
          category="code"
          ;;
  esac

  # Create the category-specific directory
  category_dir="$DEST_DIR/$category"
  mkdir -p "$category_dir"

  # Generate a unique hash of the full relative path to create a short, safe filename
  hash=$(echo -n "$relative_path" | shasum -a 1 | awk '{print $1}')

  # Create the new filename
  if [ "$original_filename" = "$extension" ]; then # Handles files with no extension
    new_filename="$hash"
  else
    new_filename="$hash.$extension"
  fi

  # Copy the file to the correct category subfolder
  cp "$filepath" "$category_dir/$new_filename"

  # Add the mapping to our CSV file, including the category folder
  echo "\"$category/$new_filename\",\"$filepath\"" >> "$MAP_FILE"

  copied_count=$((copied_count + 1))
done

echo "----------------------------------------"
echo "Done! Copied $copied_count files."
echo
echo "Your categorized and flattened files are ready in: $DEST_DIR"
echo "A map file has been created to track original paths: $MAP_FILE"
echo "----------------------------------------"