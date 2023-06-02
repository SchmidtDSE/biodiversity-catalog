library(lubridate)
library(stac4cast)
library(jsonlite)

collection <- list(
  "id"= "iucn",
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
      "href"= "iucn.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://www.iucn.org/terms-and-conditions",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://www.iucnredlist.org/",
      "type"= "text/html",
      "title"= "IUCN Redlist"
    ),
    list(
      "rel"= "describedby",
      "href"= "https://www.iucnredlist.org/resources/spatial-data-download",
      "title"= "IUCN Spatial Data",
      "type"= "text/html"
    )
  ),
  "title"= "IUCN Range Maps",
  "assets"= list(
    "thumbnail"= list(
      "href"= "https://upload.wikimedia.org/wikipedia/en/thumb/e/ec/IUCN_Red_List.svg/1280px-IUCN_Red_List.svg.png",
      "type"= "image/png",
      "roles"= list(
        "thumbnail"
      ),
      "title"= "IUCN Redlist"
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
        "2023-05-02T00:00:00Z",
        "2023-05-02T00:00:00Z"
        ))
    )
  ),
  "license"= "proprietary",
  "keywords"= list(
    "Biodiversity",
    "Data",
    "Ecology"
  ),
  "providers"= list(
    list(
      "url"= "https://www.iucnredlist.org/",
      "name"= "IUCN Redlist",
      "roles"= list(
        "producer",
        "licensor"
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
  "description"= "The IUCN Red List of Threatened Species™ contains global assessments for more than 150,300 species. More than 82% of these (>123,600 species) have spatial data.

The spatial data provided below are mostly for comprehensively assessed taxonomic groups and selected freshwater groups. It is important to note that some species (such as those listed as Data Deficient) are not mapped and subspecies, varieties and subpopulations are mapped within the parent species.

The data are made available in three formats, including taxonomic information, distribution status, IUCN Red List Category, sources and other details about the maps (see metadata document). Most species will have either polygons or points, only some have both",
  "stac_version"= "1.0.0"
)



path <- file.path("stac/v1/collections/iucn/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE)
stac4cast::stac_validate(path)

