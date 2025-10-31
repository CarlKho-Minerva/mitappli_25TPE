#!/usr/bin/env python3
"""
Unified Full-Page Screenshot to PDF Tool

This script captures full-page screenshots of web pages and saves them as PDFs,
similar to the GoFullPage Chrome extension functionality.

Usage:
    # Interactive mode
    python page_screenshot_unified.py

    # Single URL mode
    python page_screenshot_unified.py <url>

    # Single URL with options
    python page_screenshot_unified.py <url> --format A4 --output-dir /path/to/output
"""

import sys
import os
import re
import tempfile
import argparse
from pathlib import Path
from urllib.parse import urlparse
import asyncio

# =============================================================================
# CENTRALIZED PATH CONFIGURATION - UPDATE THESE PATHS AS NEEDED
# =============================================================================

# Main project root - dynamically determine from script location
PROJECT_ROOT = Path(__file__).parent.parent.parent.parent

# Virtual environment path
VENV_PATH = PROJECT_ROOT / ".venv"

# Default output directories
DEFAULT_SESSION_DIR = PROJECT_ROOT / "session-01" / "readings"
DEFAULT_BASE_DIR = PROJECT_ROOT / "base"

# =============================================================================
# DEPENDENCIES CHECK AND IMPORT
# =============================================================================

# Global variables for imported modules
playwright = None
reportlab_available = False

def check_and_import_dependencies():
    """Check if required packages are available, provide helpful error messages"""
    global playwright, reportlab_available
    missing_packages = []

    try:
        from playwright.async_api import async_playwright
        playwright = async_playwright
    except ImportError:
        missing_packages.append('playwright')

    try:
        from reportlab.pdfgen import canvas
        from reportlab.lib.pagesizes import letter, A4, legal
        from reportlab.lib.utils import ImageReader
        reportlab_available = True
    except ImportError:
        missing_packages.append('reportlab')

    if missing_packages:
        print(f"❌ Missing required packages: {', '.join(missing_packages)}")
        print("\n🔧 To fix this, run:")
        print(f"   cd {PROJECT_ROOT}")
        print("   source .venv/bin/activate")
        print(f"   pip install {' '.join(missing_packages)}")
        if 'playwright' in missing_packages:
            print("   playwright install")
        print("\n🚀 Or use the setup script from the documentation")
        sys.exit(1)

    print("✅ All required packages available")

# =============================================================================
# UTILITY FUNCTIONS
# =============================================================================

def sanitize_filename(filename):
    """Sanitize filename by removing/replacing invalid characters"""
    filename = re.sub(r'[<>:"/\\|?*]', '_', filename)
    filename = re.sub(r'\s+', ' ', filename).strip()
    if len(filename) > 200:
        filename = filename[:200]
    return filename

def get_domain_from_url(url):
    """Extract domain name from URL for filename generation"""
    try:
        parsed = urlparse(url)
        domain = parsed.netloc
        # Remove www. prefix if present
        if domain.startswith('www.'):
            domain = domain[4:]
        return domain
    except Exception:
        return "unknown_site"

def is_valid_url(url):
    """Check if URL is valid"""
    try:
        result = urlparse(url)
        return all([result.scheme, result.netloc])
    except Exception:
        return False

def normalize_url(url):
    """Normalize URL by adding https if no scheme is provided"""
    if not url.startswith(('http://', 'https://')):
        url = 'https://' + url
    return url

# =============================================================================
# PDF UTILITIES
# =============================================================================

def get_page_size(format_name):
    """Get page size tuple for PDF format"""
    from reportlab.lib.pagesizes import letter, A4, legal

    formats = {
        'A4': A4,
        'letter': letter,
        'legal': legal
    }
    return formats.get(format_name, A4)

def create_pdf_from_image(image_path, pdf_path, page_format='A4'):
    """Create PDF from screenshot image"""
    from reportlab.pdfgen import canvas
    from reportlab.lib.utils import ImageReader
    from PIL import Image

    try:
        # Open the image to get dimensions
        with Image.open(image_path) as img:
            img_width, img_height = img.size

        # Get page size
        page_size = get_page_size(page_format)
        page_width, page_height = page_size

        # Calculate scaling to fit image on page while maintaining aspect ratio
        scale_x = page_width / img_width
        scale_y = page_height / img_height
        scale = min(scale_x, scale_y) * 0.95  # 95% to leave small margins

        # Calculate final dimensions
        final_width = img_width * scale
        final_height = img_height * scale

        # Center the image on the page
        x_offset = (page_width - final_width) / 2
        y_offset = (page_height - final_height) / 2

        # Create PDF
        c = canvas.Canvas(str(pdf_path), pagesize=page_size)

        # If image is very tall, split into multiple pages
        if final_height > page_height * 0.95:
            # Calculate how many pages we need
            pages_needed = int(img_height / (page_height / scale)) + 1
            section_height = img_height / pages_needed

            for page_num in range(pages_needed):
                if page_num > 0:
                    c.showPage()

                # Calculate the section of image for this page
                y_start = page_num * section_height
                y_end = min((page_num + 1) * section_height, img_height)

                # Crop the image for this page
                with Image.open(image_path) as img:
                    cropped = img.crop((0, y_start, img_width, y_end))

                    # Save temporary cropped image
                    with tempfile.NamedTemporaryFile(suffix='.png', delete=False) as temp_file:
                        cropped.save(temp_file.name, 'PNG')
                        temp_path = temp_file.name

                try:
                    # Add cropped image to PDF page
                    cropped_height = y_end - y_start
                    final_cropped_height = cropped_height * scale
                    y_pos = page_height - final_cropped_height - 10  # 10pt margin from top

                    c.drawImage(temp_path, x_offset, y_pos,
                              width=final_width,
                              height=final_cropped_height)
                finally:
                    # Clean up temporary file
                    try:
                        os.unlink(temp_path)
                    except:
                        pass
        else:
            # Single page - image fits
            c.drawImage(str(image_path), x_offset, y_offset,
                       width=final_width, height=final_height)

        c.save()
        return True

    except Exception as e:
        print(f"❌ Error creating PDF: {e}")
        return False

# =============================================================================
# CORE SCREENSHOT FUNCTIONS
# =============================================================================

async def capture_full_page_screenshot(url, output_path, wait_time=3000):
    """Capture full-page screenshot of a web page"""

    async with playwright() as p:
        # Launch browser in headless mode
        browser = await p.chromium.launch(headless=True)
        context = await browser.new_context(
            viewport={'width': 1920, 'height': 1080},
            user_agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
        )

        try:
            page = await context.new_page()

            print(f"🌐 Loading page: {url}")
            await page.goto(url, wait_until='networkidle', timeout=30000)

            # Wait a bit for any dynamic content to load
            print(f"⏳ Waiting {wait_time/1000}s for page to fully load...")
            await page.wait_for_timeout(wait_time)

            # Get page title for filename
            title = await page.title()
            print(f"📄 Page title: {title}")

            # Take full page screenshot
            print("📸 Capturing full-page screenshot...")
            await page.screenshot(
                path=output_path,
                full_page=True,
                type='png'
            )

            return title

        except Exception as e:
            raise Exception(f"Failed to capture screenshot: {e}")
        finally:
            await browser.close()

async def screenshot_url_to_pdf(url, output_dir=".", page_format="A4", wait_time=3000):
    """Take a full-page screenshot of URL and convert to PDF"""

    try:
        # Normalize URL
        url = normalize_url(url)

        if not is_valid_url(url):
            raise Exception(f"Invalid URL: {url}")

        # Create output filename based on URL and title
        domain = get_domain_from_url(url)

        # Create temporary file for screenshot
        with tempfile.NamedTemporaryFile(suffix='.png', delete=False) as temp_file:
            screenshot_path = temp_file.name

        try:
            # Capture screenshot
            page_title = await capture_full_page_screenshot(url, screenshot_path, wait_time)

            # Create safe filename
            if page_title and page_title.strip():
                safe_title = sanitize_filename(page_title)
                filename_base = f"{safe_title}_{domain}"
            else:
                filename_base = f"screenshot_{domain}"

            # Create PDF
            pdf_filename = f"{filename_base}.pdf"
            pdf_path = Path(output_dir) / pdf_filename

            print(f"📄 Creating PDF: {pdf_filename}")
            success = create_pdf_from_image(screenshot_path, pdf_path, page_format)

            if success:
                # Get file size
                file_size = pdf_path.stat().st_size / 1024  # KB
                print(f"\n✅ PDF saved to: {pdf_path}")
                print(f"📊 File size: {file_size:.1f} KB")
                return str(pdf_path)
            else:
                raise Exception("Failed to create PDF")

        finally:
            # Clean up temporary screenshot file
            try:
                os.unlink(screenshot_path)
            except:
                pass

    except Exception as e:
        print(f"❌ Error processing URL: {e}")
        return None

# =============================================================================
# BATCH SCREENSHOT MODE
# =============================================================================

async def batch_screenshot_mode():
    """Interactive batch screenshot mode"""
    print("📸 Web Page Screenshot to PDF Tool")
    print("=" * 50)

    # Get destination folder
    print("\n📁 Enter destination folder path:")
    print(f"   Example: {DEFAULT_SESSION_DIR}")
    print(f"   Example: {DEFAULT_BASE_DIR}/screenshots")
    dest_folder = input("📁 Destination: ").strip()

    if not dest_folder:
        print("❌ No destination folder provided!")
        return

    # Create destination folder if it doesn't exist
    dest_path = Path(dest_folder)
    dest_path.mkdir(parents=True, exist_ok=True)
    print(f"✅ Destination folder ready: {dest_path}")

    # Get PDF format
    print("\n📄 Select PDF format:")
    print("   1. A4 (default)")
    print("   2. Letter")
    print("   3. Legal")
    format_choice = input("📄 Format (1/2/3): ").strip()

    format_map = {'1': 'A4', '2': 'letter', '3': 'legal'}
    page_format = format_map.get(format_choice, 'A4')
    print(f"✅ Using format: {page_format}")

    # Get URLs
    print("\n🔗 Paste your URLs (one per line):")
    print("   Press Enter twice when done, or type 'done' to finish")
    print("   Example URLs:")
    print("   https://www.example.com")
    print("   github.com/user/repo")
    print()

    urls = []
    while True:
        url = input("🔗 URL: ").strip()

        if not url or url.lower() == 'done':
            break

        normalized_url = normalize_url(url)
        if is_valid_url(normalized_url):
            urls.append(normalized_url)
            domain = get_domain_from_url(normalized_url)
            print(f"   ✅ Added: {domain}")
        else:
            print(f"   ❌ Invalid URL: {url}")

    if not urls:
        print("❌ No valid URLs provided!")
        return

    print(f"\n📋 Found {len(urls)} URLs to screenshot")
    print(f"📁 Saving to: {dest_path}")
    print(f"📄 Format: {page_format}")

    # Confirm before starting
    confirm = input(f"\n🚀 Start screenshot capture? (y/N): ").strip().lower()
    if confirm not in ['y', 'yes']:
        print("❌ Cancelled by user")
        return

    # Process each URL
    successful = 0
    failed = 0

    print(f"\n{'='*60}")
    print("📸 Starting batch screenshot capture...")
    print(f"{'='*60}")

    for i, url in enumerate(urls, 1):
        print(f"\n[{i}/{len(urls)}] Processing: {url}")
        print("-" * 50)

        try:
            result = await screenshot_url_to_pdf(
                url=url,
                output_dir=dest_path,
                page_format=page_format
            )

            if result:
                successful += 1
                print(f"✅ Success [{i}/{len(urls)}]")
            else:
                failed += 1
                print(f"❌ Failed [{i}/{len(urls)}]")

        except Exception as e:
            failed += 1
            print(f"❌ Error processing URL {i}: {e}")

    # Summary
    print(f"\n{'='*60}")
    print("📊 BATCH SCREENSHOT COMPLETE")
    print(f"{'='*60}")
    print(f"✅ Successful: {successful}")
    print(f"❌ Failed: {failed}")
    print(f"📁 Output folder: {dest_path}")

    if successful > 0:
        print(f"\n🎉 {successful} PDFs are ready!")

        # List generated files
        pdf_files = list(dest_path.glob("*.pdf"))
        if pdf_files:
            print(f"\n📚 Generated files:")
            for file in sorted(pdf_files):
                size_kb = file.stat().st_size / 1024
                print(f"   📄 {file.name} ({size_kb:.1f} KB)")

# =============================================================================
# MAIN FUNCTION AND COMMAND LINE INTERFACE
# =============================================================================

async def main():
    # Check dependencies first
    check_and_import_dependencies()

    parser = argparse.ArgumentParser(
        description="Full-Page Screenshot to PDF Tool",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
    # Interactive batch mode
    python page_screenshot_unified.py

    # Single URL screenshot
    python page_screenshot_unified.py https://www.example.com

    # Single URL with custom format and output directory
    python page_screenshot_unified.py https://www.example.com --format letter --output-dir ./screenshots
        """
    )

    parser.add_argument(
        "url",
        nargs='?',  # Optional positional argument
        help="URL to screenshot (if not provided, enters batch mode)"
    )
    parser.add_argument(
        "--format",
        default="A4",
        choices=["A4", "letter", "legal"],
        help="PDF page format (default: A4)"
    )
    parser.add_argument(
        "--output-dir",
        default=".",
        help="Output directory for PDF file (default: current directory)"
    )
    parser.add_argument(
        "--wait-time",
        type=int,
        default=3000,
        help="Time to wait for page to load (milliseconds, default: 3000)"
    )

    args = parser.parse_args()

    # If no URL provided, enter batch mode
    if not args.url:
        await batch_screenshot_mode()
        return

    # Single URL mode
    url = normalize_url(args.url)
    if not is_valid_url(url):
        print("❌ Error: Please provide a valid URL")
        sys.exit(1)

    print("📸 Single URL Screenshot Mode")
    print("=" * 40)

    result = await screenshot_url_to_pdf(
        url=url,
        output_dir=args.output_dir,
        page_format=args.format,
        wait_time=args.wait_time
    )

    if result:
        print(f"\n🎉 Screenshot PDF created successfully!")
    else:
        print(f"\n❌ Screenshot capture failed!")
        sys.exit(1)

if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        print("\n\n❌ Interrupted by user (Ctrl+C)")
        sys.exit(1)
    except Exception as e:
        print(f"\n❌ Unexpected error: {e}")
        sys.exit(1)