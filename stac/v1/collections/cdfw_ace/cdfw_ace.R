library(lubridate)
library(stac4cast)
library(jsonlite)

collection <- list(
  "id"= "cdfw_ace",
  "type"= "Collection",
  "links"= list(
    list(
      "rel"= "item",
      "title"= "Summary",
      "type"= "application/json",
      "href"= "items/item.json"
    ),
     list(
      "rel"= "parent",
      "title"= "DSE Biodiversity Catalog",
      "type"= "application/json",
      "href"= "../../catalog.json"
    ),
    list(
      "rel"= "root",
      "title"= "DSE Biodiversity Catalog",
      "type"= "application/json",
      "href"= "../../catalog.json"
    ),
    list(
      "rel"= "self",
      "title"= "CDFW ACE",
      "type"= "application/json",
      "href"= "collection.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://creativecommons.org/publicdomain/zero/1.0/",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://wildlife.ca.gov/Data/Analysis/Ace",
      "type"= "text/html",
      "title"= "California Areas of Conservation Emphasis"
    )
  ),
  "title"= "California Department of Fish and Wildlife (CDFW) Areas of Conservation Emphasis (ACE)",
  "assets"= list(
    "thumbnail"= list(
      "href"= "cdfw_ace.png",
      "type"= "image/png",
      "title"= "Areas of Conservation Emphasis",
      "roles"= list("thumbnail")
    )
  ), 
  "extent"= list(
    "spatial"= list(
      "bbox"= list(
        list(
          -124,
          -114,
          -32,
           42
        )
      )
    ),
    "temporal"= list(
      "interval" = list(list(
        "2018-02-01T00:00:00Z",
        NULL
        ))
    )
  ),
  "license"= "CC0",
  "keywords"= list(
    "cdfw_ace",
    "Data",
    "Climate"
  ),
  "providers"= list(
    list(
      "url"= "https://wildlife.ca.gov",
      "name"= "California Department of Fish and Wildlife",
      "roles"= list(
        "host", "processor"
      )
    ),
   
    list(
      "url"= "https://dse.berkeley.edu",
      "name"= "Schmidt Center for Data Science and Environment",
      "roles"= list(
        "host"
      )
    )
  ),
  "description"= "ACE was a CDFW Project first developed in 2009 with the purpose of providing an easily-accessible and standardized way to view a mapped summary of the best available statewide data on California's biological richness and biodiversity for use in conservation planning. ACE relies on other CDFW mapped data products including CNDDB, CWHR, and Survey of California Vegetation, as well as other mapped information found in BIOS as sources for these summarized maps. In early 2017, CDFW began an effort to improve and expand on this concept by incorporating new data, data models, and summarized information. ACE version 3.0 is now available.

The previous version of ACE primarily focused on a synthesized summary of species biodiversity, rarity, and significant habitats referred to as the “Biological Index”. Modifications to this basic format were identified based on user feedback and the availability of new information. ACE version 3.0 now includes four distinct biological summaries: Species Biodiversity, Significant Habitats, Habitat Connectivity, and predicted Climate Resilience. These summaries were developed for Terrestrial Ecosystems within each USDA Ecoregional section of the State using a 2.5 square mile-hexagon grid format and for Aquatic Ecosystems based on watersheds using hydrological units at the 12-digit code level (HUC12). The terrestrial and aquatic biodiversity summaries were combined to provide a summary of statewide biodiversity.This version of ACE also provides access to additional datasets that have been deemed useful in conservation planning, and to support recreational planning as it pertains to wildlife resources. The State Wildlife Action Plan (2015) conservation targets are also mapped and now available in ACE. Work on datasets to include in some of these categories is continuing, which once completed and combined with other datasets will provide additional data summaries. This new information will be reflected in future updates of ACE as they become available.",
  "stac_version"= "1.0.0",
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json",
    "https://stac-extensions.github.io/alternate-assets/v1.1.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/cdfw_ace/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE, null="null")
stac4cast::stac_validate(path)

