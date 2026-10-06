"""Free, key-less RSS sources grouped by the categories the agent reports on."""

CATEGORIES = {
    "US Politics": [
        "https://feeds.npr.org/1014/rss.xml",
        "https://feeds.bbci.co.uk/news/world/us_and_canada/rss.xml",
        "https://rss.nytimes.com/services/xml/rss/nyt/Politics.xml",
    ],
    "US Local (Boston & Nation)": [
        "https://news.google.com/rss/search?q=Boston+Massachusetts+when:1d&hl=en-US&gl=US&ceid=US:en",
        "https://rss.nytimes.com/services/xml/rss/nyt/US.xml",
        "https://feeds.npr.org/1003/rss.xml",
    ],
    "World Politics & Conflict": [
        "https://feeds.bbci.co.uk/news/world/rss.xml",
        "https://www.aljazeera.com/xml/rss/all.xml",
        "https://rss.nytimes.com/services/xml/rss/nyt/World.xml",
    ],
    "US Economy": [
        "https://feeds.npr.org/1017/rss.xml",
        "https://www.cnbc.com/id/20910258/device/rss/rss.html",
        "https://rss.nytimes.com/services/xml/rss/nyt/Economy.xml",
    ],
    "Global Economy & Markets": [
        "https://feeds.bbci.co.uk/news/business/rss.xml",
        "https://www.cnbc.com/id/100727362/device/rss/rss.html",
    ],
    "Soccer": [
        "https://feeds.bbci.co.uk/sport/football/rss.xml",
        "https://www.espn.com/espn/rss/soccer/news",
    ],
    "Science & Technology": [
        "https://feeds.bbci.co.uk/news/science_and_environment/rss.xml",
        "https://www.sciencedaily.com/rss/top/science.xml",
        "https://feeds.npr.org/1019/rss.xml",
    ],
}
