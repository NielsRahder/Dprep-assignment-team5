# Load merged data 
load("./gen/data-preparation/temp/data_merged.RData")

# Drop observations with V1 <= -0.9
df_cleaned <- df_merged[df_merged$V1 > -0.9,]

# Remove V1
df_cleaned <- df_cleaned[,c(1,2,4:7)]

# Save cleaned data
save(df_cleaned,file="./gen/data-preparation/output/data_cleaned.RData")


#subset 
Mexico <- subset(Mexico_listings, select = -c (host_name, reviews_per_month, calculated_host_listings_count, license, neighbourhood_group, minimum_nights, number_of_reviews_ltm))
MexicoDuringConcert <- subset(Mexico$last_review, select = ("03-04-2022":"07-04-2022"))

#filter dates during concert 
MexicoDuringConcert <- Mexico %>%
  filter(between(last_review, as.Date('2022-04-03'), as.Date('2022-04-07'))) %>%
  arrange(last_review)
