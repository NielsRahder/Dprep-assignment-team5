library(readr)

#create data repository 
#dir.create('./data')  


#download and load data 
download.file(url = 'http://data.insideairbnb.com/united-states/tx/dallas/2022-09-14/visualisations/listings.csv',
                                     destfile = './data/Dallas.csv')
Dallas_listings <- read_csv('data/Dallas.csv')

download.file(url = 'http://data.insideairbnb.com/united-states/il/chicago/2022-09-14/visualisations/listings.csv',,
                                      destfile = './data/Chicago.csv')
Chicago_listings <- read_csv('data/Chicago.csv')

download.file(url = 'http://data.insideairbnb.com/mexico/df/mexico-city/2022-06-21/visualisations/listings.csv',
                                           destfile = './data/Mexico.csv')
Mexico_listings <- read_csv('data/Mexico.csv')






