#!/usr/bin/env python3
"""
Convert all JPEG and PNG images to WebP format
Maintains directory structure and preserves originals
"""

import os
import sys
from pathlib import Path
from PIL import Image

def convert_to_webp(input_path, output_path=None, quality=85, delete_original=False):
    """
    Convert a single image to WebP format

    Args:
        input_path: Path to input image
        output_path: Path for output (if None, replaces extension)
        quality: WebP quality (0-100, default 85)
        delete_original: Whether to delete original file
    """
    try:
        # Open image
        img = Image.open(input_path)

        # Convert RGBA to RGB if necessary (WebP supports both but RGB is smaller)
        if img.mode in ('RGBA', 'LA'):
            # Keep transparency
            pass
        elif img.mode != 'RGB':
            img = img.convert('RGB')

        # Determine output path
        if output_path is None:
            output_path = Path(input_path).with_suffix('.webp')

        # Save as WebP
        img.save(output_path, 'webp', quality=quality, method=6)

        # Get file sizes
        original_size = os.path.getsize(input_path)
        new_size = os.path.getsize(output_path)
        savings = ((original_size - new_size) / original_size) * 100

        print(f"✓ Converted: {Path(input_path).name}")
        print(f"  {original_size:,} bytes → {new_size:,} bytes ({savings:.1f}% smaller)")

        # Delete original if requested
        if delete_original:
            os.remove(input_path)
            print(f"  Deleted original")

        return True

    except Exception as e:
        print(f"✗ Error converting {input_path}: {str(e)}")
        return False

def find_images(directory, extensions=('.jpg', '.jpeg', '.png', '.JPG', '.JPEG', '.PNG')):
    """
    Find all images with specified extensions in directory tree
    """
    directory = Path(directory)
    images = []

    for ext in extensions:
        images.extend(directory.rglob(f'*{ext}'))

    return sorted(images)

def convert_directory(directory, quality=85, delete_originals=False, dry_run=False):
    """
    Convert all images in a directory tree

    Args:
        directory: Root directory to search
        quality: WebP quality (0-100)
        delete_originals: Whether to delete original files
        dry_run: If True, only show what would be converted
    """
    images = find_images(directory)

    if not images:
        print(f"No JPEG or PNG images found in {directory}")
        return

    print(f"\nFound {len(images)} images to convert")
    print(f"Quality: {quality}")
    print(f"Delete originals: {delete_originals}")

    if dry_run:
        print("\n=== DRY RUN MODE ===")
        for img in images:
            print(f"  Would convert: {img}")
        print(f"\nTo actually convert, run without --dry-run flag")
        return

    print("\nStarting conversion...\n")

    success_count = 0
    fail_count = 0

    for img_path in images:
        if convert_to_webp(img_path, quality=quality, delete_original=delete_originals):
            success_count += 1
        else:
            fail_count += 1
        print()  # Blank line between conversions

    print("\n" + "="*60)
    print(f"Conversion complete!")
    print(f"  ✓ Success: {success_count}")
    if fail_count:
        print(f"  ✗ Failed: {fail_count}")
    print("="*60)

def main():
    """Main entry point"""
    import argparse

    parser = argparse.ArgumentParser(
        description='Convert JPEG and PNG images to WebP format',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Convert all images in raw folder (preserves originals)
  python convert-to-webp.py /Users/cvk/Downloads/carl/md-cv/raw

  # Convert with high quality (90)
  python convert-to-webp.py /Users/cvk/Downloads/carl/md-cv/raw --quality 90

  # Delete originals after conversion
  python convert-to-webp.py /Users/cvk/Downloads/carl/md-cv/raw --delete

  # Dry run to see what would be converted
  python convert-to-webp.py /Users/cvk/Downloads/carl/md-cv/raw --dry-run

  # Convert single file
  python convert-to-webp.py image.jpg
        """
    )

    parser.add_argument(
        'path',
        help='Path to image file or directory'
    )
    parser.add_argument(
        '-q', '--quality',
        type=int,
        default=85,
        help='WebP quality (0-100, default: 85)'
    )
    parser.add_argument(
        '-d', '--delete',
        action='store_true',
        help='Delete original files after conversion'
    )
    parser.add_argument(
        '--dry-run',
        action='store_true',
        help='Show what would be converted without actually converting'
    )

    args = parser.parse_args()

    # Check if PIL/Pillow is installed
    try:
        from PIL import Image
    except ImportError:
        print("Error: Pillow library not found!")
        print("Install with: pip install Pillow")
        sys.exit(1)

    path = Path(args.path)

    if not path.exists():
        print(f"Error: Path does not exist: {path}")
        sys.exit(1)

    # Single file or directory?
    if path.is_file():
        if path.suffix.lower() not in ('.jpg', '.jpeg', '.png'):
            print(f"Error: File must be JPEG or PNG")
            sys.exit(1)

        if args.dry_run:
            print(f"Would convert: {path}")
        else:
            convert_to_webp(path, quality=args.quality, delete_original=args.delete)

    elif path.is_dir():
        convert_directory(path, quality=args.quality, delete_originals=args.delete, dry_run=args.dry_run)

    else:
        print(f"Error: Invalid path type")
        sys.exit(1)

if __name__ == '__main__':
    main()
