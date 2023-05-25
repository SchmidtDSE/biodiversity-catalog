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
      "href"= "../catalog.json"
    ),
    list(
      "rel"= "root",
      "type"= "application/json",
      "href"= "../catalog.json"
    ),
    list(
      "rel"= "self",
      "type"= "application/json",
      "href"= "iucn.json"
    ),
    list(
      "rel"= "about",
      "href"= "https://www.protectedplanet.net/en",
      "type"= "text/html",
      "title"= "World Protected Areas"
    ),
    list(
      "rel"= "describedby",
      "href"= "https://www.protectedplanet.net/en",
      "title"= "Protected Planet",
      "type"= "text/html"
    )
  ),
  "title"= "World Protected Areas",
  "assets"= list(
    "thumbnail"= list(
      "href"= "WPAs.png",
      "type"= "image/png",
      "roles"= list(
        "thumbnail"
      ),
      "title"= "Conservation International Carbon map"
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
  "license"= "CC-BY-NC",
  "keywords"= list(
    "Protected Areas",
    "Polygons",
    "Biodiversity"
  ),
  "providers"= list(
    list(
      "url"= "https://www.protectedplanet.net/en/about",
      "name"= "Protected Planent (R)",
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
  "description"= "The IUCN Red List of Threatened Species™ contains global assessments for more than 150,300 species. More than 82% of these (>123,600 species) have spatial data.

The spatial data provided below are mostly for comprehensively assessed taxonomic groups and selected freshwater groups. It is important to note that some species (such as those listed as Data Deficient) are not mapped and subspecies, varieties and subpopulations are mapped within the parent species.

The data are made available in three formats, including taxonomic information, distribution status, IUCN Red List Category, sources and other details about the maps (see metadata document). Most species will have either polygons or points, only some have both",
  "stac_version"= "1.0.0",
  
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json"
  ),
  "publications"= list(
    "doi"= "https://doi.org/10.1038/s41893-021-00803-6",
    "citation"= "Noon, M.L., Goldstein, A., Ledezma, J.C. et al. Mapping the irrecoverable carbon in Earth’s ecosystems. Nat Sustain 5, 37–46 (2022). https://doi.org/10.1038/s41893-021-00803-6"
)
)



path <- file.path("stac/v1/collections/", "iucn.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE)
stac4cast::stac_validate(path)

