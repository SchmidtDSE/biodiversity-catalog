library(lubridate)
library(jsonlite)

collection <- list(
  "id"= "MPAs",
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
      "href"= "MPAs.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://www.protectedplanet.net/en/legal",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://www.protectedplanet.net/en/thematic-areas/marine-protected-areas",
      "type"= "text/html",
      "title"= "About"
    )
  ),
  "title"= "Marine Protected Areas",
  "assets"= list(
    "thumbnail"= list(
      "href"= "MPAs.png",
      "type"= "image/png",
      "title"= "Marine Protected Areas thumbnail",
      "role"=list("thumbnail")
    ),
    "spatial-polygons" = list(
      "href" = "s3://biodiversity/Marine-Protected-Areas-June2023.gdb",
      "title" = "Geodatabase format",
      "description" = "Access keys required. set S3 endpoint to <https://minio.carlboettiger.info>.  Direct downloads of most recent version are available from <https://www.protectedplanet.net/en/thematic-areas/wdpa?tab=WDPA>"
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
        "2023-06-01T00:00:00Z",
        "2023-06-01T00:00:00Z"
        ))
    )
  ),
  "license"= "proprietary",
  "keywords"= list(
    "Protected Areas",
    "Polygons",
    "Biodiversity"
  ),
  "providers"= list(
    list(
      "url"= "https://www.protectedplanet.net/en/about",
      "name"= "Protected Planet",
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
  "description"= "The global coverage of marine protected areas (MPAs) is 8.16%. The Global Ocean can be divided into areas within national jurisdiction (National Waters) and those in international waters (Areas Beyond National Jurisdiction (ABNJ))

MPAs can be more easily created by governments in national waters where there are dedicated legal systems in place. In ABNJ it is more difficult to create MPAs due to the complex legal framework in place. As such, the percentage of MPAs created within national waters is much higher than that for ABNJ. National waters represent 39% of the global ocean and at present, 18.70% of these waters are designated as protected areas. In contrast, only 1.44% of ABNJ, which makes up the remaining 61% of the global ocean, has been established as protected areas. At present, international discussions are underway to establish ways of simplifying the process to create MPAs in ABNJ. For more information on this, please see the DOALOS website.",
  "stac_version"= "1.0.0",
  
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json",
    "https://stac-extensions.github.io/alternate-assets/v1.1.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/MPAs/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE)
# stac4cast::stac_validate(path)

