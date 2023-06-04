library(lubridate)
library(jsonlite)

collection <- list(
  "id"= "ebird",
  "type"= "Collection",
  "links"= list(
     list(
      "rel"= "parent",
      "type"= "application/json",
      "href"= "../../catalog.json"
    ),
    list(
      "rel"= "root",
      "type"= "application/json",
      "href"= "../../catalog.json"
    ),
    list(
      "rel"= "self",
      "type"= "application/json",
      "href"= "ebird.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://www.birds.cornell.edu/home/ebird-data-access-terms-of-use/",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://ebird.org/about",
      "type"= "text/html",
      "title"= "About"
    )
  ),
  "title"= "eBird",
  "assets"= list(
    "thumbnail"= list(
      "href"= "ebird.png",
      "type"= "image/png",
      "title"= "eBird data thumbnail",
      "role"=list("thumbnail")
    ),
    "parquet" = list(
      "href" = "s3://ebird",
      "title" = "Parquet format",
      "description" = "Access keys required. set S3 endpoint to <https://minio.carlboettiger.info>."
    )
  ),
  "extent"= list(
    "spatial"= list(
      "bbox"= list(
        list(
          -180,
          180,
          -90,
          90
        )
      )
    ),
    "temporal"= list(
      "interval" = list(list(
        "2002-01-01T00:00:00Z",
        NULL
        ))
    )
  ),
  "license"= "proprietary",
  "keywords"= list(
    "birds",
    "occurance",
    "citizen science",
    "biodiversity"
  ),
  "providers"= list(
    list(
      "url"= "https://www.birds.cornell.edu/",
      "name"= "Cornell Lab of Ornithology",
      "roles"= list(
        "processor", "licensor"
      )
    ),
   
    list(
      "url"= "https://dse.berkeley.edu",
      "name"= "Schmidt Center for Data Science and Environment",
      "roles"= list(
        "processor",
        "host"
      )
    )
  ),
  "description"= "eBird is among the world’s largest biodiversity-related science projects, with more than 100 million bird sightings contributed annually by eBirders around the world and an average participation growth rate of approximately 20% year over year. A collaborative enterprise with hundreds of partner organizations, thousands of regional experts, and hundreds of thousands of users, eBird is managed by the Cornell Lab of Ornithology.",
  "stac_version"= "1.0.0",
  
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json",
    "https://stac-extensions.github.io/alternate-assets/v1.1.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/ebird/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE)
# stac4cast::stac_validate(path)

