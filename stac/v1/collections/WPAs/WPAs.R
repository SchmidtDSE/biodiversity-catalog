library(lubridate)
library(stac4cast)
library(jsonlite)

collection <- list(
  "id"= "WPAs",
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
      "href"= "WPAs.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://www.protectedplanet.net/en/legal",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://www.protectedplanet.net/en/thematic-areas/wdpa?tab=About",
      "type"= "text/html",
      "title"= "About"
    ),
    list(
      "rel"= "describedby",
      "href"= "https://www.protectedplanet.net/en/thematic-areas/wdpa?tab=Methodology",
      "title"= "Methodology",
      "type"= "text/html"
    )
  ),
  "title"= "World Protected Areas",
  "assets"= list(
    "thumbnail"= list(
      "href"= "WPAs.png",
      "type"= "image/png",
      "title"= "World Protected Areas thumbnail"
    ),
    "spatial-polygons" = list(
      "href" = "s3://biodiversity/World-Protected-Areas-May2023.gdb",
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
        "2023-05-01T00:00:00Z",
        "2023-05-30T00:00:00Z"
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
  "description"= "The World Database on Protected Areas (WDPA) is the most comprehensive global database of marine and terrestrial protected areas. It is a joint project between UN Environment Programme and the International Union for Conservation of Nature (IUCN), and is managed by UN Environment Programme World Conservation Monitoring Centre (UNEP-WCMC), in collaboration with governments, non-governmental organisations, academia and industry.The WDPA is updated on a monthly basis",
  "stac_version"= "1.0.0",
  
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/WPAs/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE)
stac4cast::stac_validate(path)

