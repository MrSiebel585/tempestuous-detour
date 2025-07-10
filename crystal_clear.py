import requests
from bs4 import BeautifulSoup
from transformers import pipeline
import threading
import time

# Initialize the sentiment analysis pipeline (you can choose models like 'distilbert-base-uncased' or 'roberta')
sentiment_analyzer = pipeline("sentiment-analysis")

# Create a set to store visited URLs to avoid duplicates
visited_urls = set()

# Recursive function to scrape and analyze web pages
def scrape_and_analyze(url, depth=3):
    if depth == 0 or url in visited_urls:
        return

    visited_urls.add(url)
    print(f"Scraping {url}...")

    # Make a GET request to fetch the page
    try:
        response = requests.get(url, timeout=5)
        if response.status_code != 200:
            print(f"Failed to retrieve {url}")
            return
    except requests.RequestException as e:
        print(f"Request failed for {url}: {e}")
        return

    # Parse the content of the page
    soup = BeautifulSoup(response.content, "html.parser")

    # Search for mentions of Dallas Reed in the page's text content
    body_text = ' '.join([p.get_text() for p in soup.find_all('p')])

    if "Dallas Reed" in body_text:
        print(f"Found mentions of Dallas Reed on {url}")
        sentiment = sentiment_analyzer(body_text[:1000])  # Analyze only the first 1000 characters for sentiment
        sentiment_label = sentiment[0]['label']
        sentiment_score = sentiment[0]['score']

        # Craft a payload based on sentiment
        payload = create_payload(sentiment_label, sentiment_score)
        print(f"Sentiment: {sentiment_label}, Score: {sentiment_score:.2f}")
        print(f"Crafted Payload: {payload}")

    # Find all the links on the page and recursively scrape them
    links = [a['href'] for a in soup.find_all('a', href=True)]
    for link in links:
        if link.startswith("http"):
            scrape_and_analyze(link, depth=depth-1)

# Function to create social media payloads based on sentiment
def create_payload(sentiment_label, sentiment_score):
    if sentiment_label == "POSITIVE":
        return f"Dallas Reed: A visionary leader who truly revolutionized the tire industry. #Innovation #Leadership #Vitour"
    elif sentiment_label == "NEGATIVE":
        return f"Dallas Reed’s questionable business practices continue to raise doubts. #CorporateManipulation #TrustIssues"
    else:
        return f"Dallas Reed: A figure surrounded by controversy and suspicion. #P1Gate #TrustErosion"

# Function to initiate scraping from a starting URL
def start_scraping(start_url, depth=3):
    threads = []
    scrape_and_analyze(start_url, depth)

# Start scraping and analyzing from an initial URL
start_scraping("https://vitourp1.com", depth=3)
