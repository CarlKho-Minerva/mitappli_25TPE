import os
import time
import pdfkit
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager


def get_article_urls_with_selenium(medium_url):
    """
    Uses Selenium to control a real browser, ensuring all JavaScript
    content is loaded before extracting article URLs.
    """
    print("Initializing browser with Selenium...")
    urls = set()

    # --- Setup Chrome options ---
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--log-level=3")
    chrome_options.add_argument(
        "user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
    )

    # ** FIX: Explicitly tell Selenium where Chrome is on macOS **
    chrome_options.binary_location = (
        "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
    )

    driver = None  # Initialize driver to None
    try:
        service = Service(ChromeDriverManager().install())
        driver = webdriver.Chrome(service=service, options=chrome_options)

        print(f"Navigating to {medium_url}...")
        driver.get(medium_url)

        # --- Dynamic Scrolling to Load All Articles ---
        print("Scrolling down to load all articles...")
        last_height = driver.execute_script("return document.body.scrollHeight")
        scroll_attempts = 0
        max_scroll_attempts = 5  # Prevent infinite loops
        while scroll_attempts < max_scroll_attempts:
            driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
            time.sleep(2)  # Wait for new content to load
            new_height = driver.execute_script("return document.body.scrollHeight")
            if new_height == last_height:
                break  # Exit if the page height hasn't changed
            last_height = new_height
            scroll_attempts += 1

        print("Page fully loaded. Finding article links...")

        # Find all article elements and extract their primary links
        articles = driver.find_elements(By.TAG_NAME, "article")
        for article in articles:
            try:
                link_element = article.find_element(
                    By.CSS_SELECTOR, 'a[href*="/@carlkho-cvk/"]'
                )
                href = link_element.get_attribute("href")
                if href:
                    # Clean tracking parameters from the URL
                    urls.add(href.split("?")[0])
            except Exception:
                continue

    except Exception as e:
        print(f"An error occurred during Selenium execution: {e}")
    finally:
        if driver:
            driver.quit()

    return list(urls)


def convert_articles_to_pdf(urls, output_dir="medium_articles_pdf"):
    """
    Converts a list of article URLs to PDF.
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    print(f"\nStarting PDF conversion for {len(urls)} articles...")
    total_urls = len(urls)
    for i, url in enumerate(urls, 1):
        try:
            file_name = url.split("/")[-1] + ".pdf"
            output_path = os.path.join(output_dir, file_name)

            print(f"[{i}/{total_urls}] Converting: {file_name}")

            options = {
                "--load-error-handling": "ignore",
                "--javascript-delay": "3000",
                "--no-stop-slow-scripts": "",
                "--disable-smart-shrinking": "",
                "--quiet": "",
            }
            pdfkit.from_url(url, output_path, options=options)

        except Exception as e:
            if "No wkhtmltopdf executable found" in str(e):
                print("\n---")
                print("❌ CRITICAL ERROR: 'wkhtmltopdf' not found.")
                print(
                    "Please ensure wkhtmltopdf is installed and in your system's PATH."
                )
                print("For macOS with Homebrew, run: brew install --cask wkhtmltopdf")
                print("---")
                break
            else:
                print(
                    f"   └─ ❌ Failed to convert {url}. It may require login or have complex rendering."
                )


if __name__ == "__main__":
    # ** FIX: Define the URL inside the main execution block **
    medium_profile_url = "https://medium.com/@carlkho-cvk"
    article_urls = get_article_urls_with_selenium(medium_profile_url)

    if article_urls:
        print(f"Successfully found {len(article_urls)} articles.")
        convert_articles_to_pdf(article_urls)
        print("\n✅ Conversion complete.")
    else:
        print(
            "❌ No articles found. Please check your internet connection and the profile URL."
        )
