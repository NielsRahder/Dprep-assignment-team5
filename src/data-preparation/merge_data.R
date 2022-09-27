# Load datasets into R 
Dallas_listings <- read_csv('data/Dallas_listings.csv')
Dallas_reviews <- read_csv('data/Dallas_reviews.csv')

install.packages('dplyr')
library(dplyr)


#join datasets
Dallas_reviews <- Dallas_reviews %>%
  rename('id' = listing_id)

Dallas <- left_join(Dallas_listings, Dallas_reviews, by = 'id')




# Save merged data
save(df_merged,file="./gen/data-preparation/temp/data_merged.RData")