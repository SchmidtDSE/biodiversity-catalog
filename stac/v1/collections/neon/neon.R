library(lubridate)
library(jsonlite)

collection <- list(
  "id"= "neon",
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
      "href"= "neon.json",
      "title"="National Ecological Observatory Network (NEON)"
    ),
    list(
      "rel"= "license",
      "href"= "http://creativecommons.org/publicdomain/mark/1.0",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://www.neonscience.org/",
      "type"= "text/html",
      "title"= "About"
    )
  ),
  "title"= "National Ecological Observatory Network",
  "assets"= list(
    "thumbnail"= list(
      "href"= "https://www.neonscience.org/sites/default/files/styles/max_width_1170px/public/2020-08/lidar_GrandMesa_sq.jpg",
      "type"= "image/png",
      "title"= "NEON Data Portal thumbnail",
      "role"=list("thumbnail")
    ),
    "data-portal" = list(
      "href" = "https://data.neonscience.org",
      "title" = "NEON Web portal",
      "description" = "NEON data is avialable through a public Google Cloud object store."
    )
  ),
  "extent"= list(
    "spatial" = list(
      "bbox" = list(
        list(
          -149.6106,
          18.1135,
          -66.7987,
          68.6698
        )
      )
    ),
    "temporal"= list(
      "interval" = list(list(
        "2023-06-01T00:00:00Z",
        "2023-06-01T00:00:00Z"
        ))
    )
  ),
  "license"= "Public Domain",
  "keywords"= list(
    "NEON",
    "Biodiversity"
  ),
  "providers"= list(
    list(
      "url"= "https://neonscience.org",
      "name"= "National Ecological Observatory Network",
      "roles"= list("processor")
    ),
    list(
      "url"= "https://www.battelle.org/",
      "name"= "Battelle Memorial Institute",
      "roles"= list("manager")
    ),
    list(
      "url"= "https://www.nsf.gov/",
      "name"= "National Science Foundation",
      "roles"= list("funder")
    ),
    list(
      "url"= "https://cloud.google.com/storage",
      "name"= "Google Cloud Storage",
      "roles"= list("host")
    )
  ),
  "description"= "National Ecological Observatory Network (NEON) is a large facility program operated by Battelle Memorial Institute and funded by the National Science Foundation. In full operation since 2019, NEON gathers and provides long-term, standardized data on ecological responses of the biosphere to changes in land use and climate, and on feedback with the geosphere, hydrosphere, and atmosphere.[1] NEON is a continental-scale research platform for understanding how and why our ecosystems are changing.",
  "stac_version"= "1.0.0",
  
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json",
    "https://stac-extensions.github.io/alternate-assets/v1.1.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/neon/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE)
# stac4cast::stac_validate(path)

