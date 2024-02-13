library(testthat)

german_cities <- c("Berlin", "Hamburg", "Munich", "Cologne", "Frankfurt", "Rostock")

# Is the dataset of length six?
expect_length(german_cities,6 ) 
# Are the observations characters?
expect_equal(class(german_cities), "character") 
# Is every unique observation "Berlin"?
expect_true(all(unique(german_cities) == "Berlin"))