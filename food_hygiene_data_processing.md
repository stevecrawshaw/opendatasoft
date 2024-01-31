# Food Hygiene Data Processing

The food hygiene ratings data are processed using the [food_api.R](food_api.R) R script. Data are retrieved from the UK's [Food Hygiene Ratings Service](https://ratings.food.gov.uk/) using the API. Extraneous columns are removed and anomalous geolocation data are replaced with NA to limit the mapping extent on the open data portal. Some columns are relocated prior to upload to the portal. A geopoint column is created from the latitude and longitude.

Note that the components of the overall rating (0 - 5) are comprised of:

- Food Hygiene
- Structural
- Confidence in Management

These are somewhat counter - intuitive with the scores being defects. So 0 means no defects. A full description of the weighting is beyond this document but can be found [here](https://smartercommunications.food.gov.uk/connect/lsc9TTpp1s)