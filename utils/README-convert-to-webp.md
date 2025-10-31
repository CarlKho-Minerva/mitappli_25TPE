# Image to WebP Converter

Convert all JPEG and PNG images to WebP format for better compression and faster loading.

## Quick Start

```bash
# Install Pillow if not already installed
pip install Pillow

# Dry run to see what would be converted
python utils/convert-to-webp.py raw/ --dry-run

# Convert all images in raw folder (keeps originals)
python utils/convert-to-webp.py raw/

# Convert with custom quality
python utils/convert-to-webp.py raw/ --quality 90

# Convert and delete originals
python utils/convert-to-webp.py raw/ --delete
```

## Usage

```bash
python convert-to-webp.py <path> [options]
```

### Options

- `-q, --quality <0-100>` - WebP quality (default: 85)
- `-d, --delete` - Delete original files after conversion
- `--dry-run` - Preview what would be converted

### Examples

**Convert ESP32 hardware images:**
```bash
python utils/convert-to-webp.py raw/somach/
```

**Convert all Facebook screenshots:**
```bash
python utils/convert-to-webp.py raw/facebook/
```

**Convert single file:**
```bash
python utils/convert-to-webp.py raw/facebook/image.png
```

## Quality Guidelines

- **85** (default) - Good balance of size and quality
- **90** - High quality for portfolio images
- **75** - Smaller files for web thumbnails
- **95** - Near-lossless for important photos

## What It Does

1. Finds all `.jpg`, `.jpeg`, and `.png` files
2. Converts to WebP format
3. Shows file size savings
4. Optionally deletes originals
5. Preserves directory structure

## Benefits of WebP

- 25-35% smaller than JPEG
- 26% smaller than PNG
- Supports transparency (like PNG)
- Faster page loading
- Better for portfolio sites

## For Your CV Project

Perfect for:
- Project screenshots
- Hardware photos (ESP32, biosensors)
- Design portfolio images
- Blog post images
- Profile photos

---

*Part of Carl's CV Organization System*
