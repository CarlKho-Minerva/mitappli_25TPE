import os
import requests
from bs4 import BeautifulSoup
import pdfkit


def get_article_urls(medium_url):
    """
    Scrapes a Medium user's profile to get all their article URLs.
    """
    urls = []
    try:
        response = requests.get(medium_url)
        response.raise_for_status()
        soup = BeautifulSoup(response.text, "html.parser")
        article_links = soup.find_all("a", {"aria-label": "Post Preview Title"})
        for link in article_links:
            urls.append(link["href"])
    except requests.exceptions.RequestException as e:
        print(f"Error fetching the Medium page: {e}")
    return list(set(urls))  # Use set to get unique URLs


def convert_articles_to_pdf(urls, output_dir="medium_articles_pdf"):
    """
    Converts a list of article URLs to PDF and saves them in a directory.
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for url in urls:
        try:
            # The article title is usually the last part of the URL
            file_name = url.split("/")[-1] + ".pdf"
            output_path = os.path.join(output_dir, file_name)
            pdfkit.from_url(url, output_path)
            print(f"Successfully converted {url} to {output_path}")
        except Exception as e:
            print(f"Could not convert {url}. Error: {e}")


if __name__ == "__main__":
    medium_profile_url = "https://medium.com/@carlkho-cvk"
    article_urls = get_article_urls(medium_profile_url)

    if article_urls:
        print(f"Found {len(article_urls)} articles. Starting conversion...")
        convert_articles_to_pdf(article_urls)
    else:
        print("No articles found.")
