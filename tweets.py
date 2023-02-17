#Here is the required libraries

import snscrape.modules.twitter as sntwitter
import pandas as pd
import itertools
from datetime import datetime, timedelta
from time import sleep
from tqdm.notebook import tqdm

#Time interval is between

#General Time  06.02.2023 00:00 - 10.02.2023 00:00
#Twitter Closed Interval 08.02.2023 15:00 - 09.02.2023 05:00

#Tweet Data General: All tweets from Turkey in the time interval
tweet_data_general = []

scraper = sntwitter.TwitterSearchScraper("deprem" + datetime(2023,2,));

for tweet in scraper.get_items():
    break

tweet.date



#For search in the provided time limit

starting_time = 1675872000
ending_time = 1675828800
tweet_time_limit = []

start_time = 1622498400
end_time = 1622502000

for t in range(72):
    for i, tweet in enumerate(sntwitter.TwitterSearchScraper(
            f'your-query since_time:{convertTime(start_time, t)} until_time:{convertTime(end_time, t)}').get_items()):

        if i > 60:
            break
        Tweets.append({'Date': tweet.date, 'Text': tweet.content, 'Ticker': 'your-iterator'})

tweets_df = pd.DataFrame(Tweets, columns=['Date', 'Text', 'Ticker'])
tweets_df.to_csv('sampleTwitter.csv', encoding='UTF-8')


# Creating list to append tweet data to
tweets_list2 = []

# Using TwitterSearchScraper to scrape data and append tweets to list
for i,tweet in enumerate(sntwitter.TwitterSearchScraper('deprem since:2023-02-06 until:2023-02-07').get_items()):
    if i>100:
        break
    tweets_list2.append([tweet.date, tweet.id, tweet.content, tweet.user.username])

tweets_list2
# Creating a dataframe from the tweets list above
tweets_df2 = pd.DataFrame(tweets_list2, columns=['Datetime', 'Tweet Id', 'Text', 'Username'])

tweets_df2 

tweets_df2.to_csv('deneme2')

start_time = 1622498400
end_time = 1622502000

convertTime(start_time, t)

def convertTime(var_time,var):
    time = datetime.strptime(f'{datetime.fromtimestamp(var_time)}', '%Y-%m-%d %H:%M:%S')+timedelta(hours=1)*var
    time = int(time.timestamp())
    return time

Tweets = []

for t in range(72):
    for i, tweet in enumerate(sntwitter.TwitterSearchScraper(
            f'your-query since_time:{convertTime(start_time, t)} until_time:{convertTime(end_time, t)}').get_items()):

        if i > 60:
            break
        Tweets.append({'Date': tweet.date, 'Text': tweet.content, 'Ticker': 'your-iterator'})


tweets_df = pd.DataFrame(Tweets, columns=['Date', 'Text', 'Ticker'])
tweets_df.to_csv('sampleTwitter.csv', encoding='UTF-8')
