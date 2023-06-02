library(lubridate)
library(stac4cast)
library(jsonlite)

collection <- list(
  "id"= "mangroves",
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
      "href"= "mangroves.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://www.mangrovealliance.org/terms-of-use/",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://www.mangrovealliance.org/about-us/",
      "type"= "text/html",
      "title"= "About"
    )
  ),
  "title"= "Global Mangrove Watch",
  "assets"= list(
    "thumbnail"= list(
      "href"= "mangroves.png",
      "type"= "image/png",
      "title"= "Global Mangrove Watch thumbnail"
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
        "2015-01-01T00:00:00Z",
        NULL
        ))
    )
  ),
  "license"= "proprietary",
  "keywords"= list(
    "Mangroves",
    "Polygons",
    "Biodiversity"
  ),
  "providers"= list(
    list(
      "url"= "https://www.mangrovealliance.org",
      "name"= "Mangrove Alliance",
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
  "description"= "The Global mangrove Watch (GMW) was established in 2011 under the Japan Aerospace Exploration Agency’s (JAXA) Kyoto & Carbon Initiative by Aberystwyth University, solo Earth Observation and the International Water Management Institute, with the aim to provide open access geospatial information about mangrove extent and changes to the Ramsar Convention on Wetlands. In collaboration with Wetlands International and with support from DOB Ecology, the first GMW baseline maps were released in 2018 at the Ramsar COP13. The GMW maps also constitute the official mangrove datasets used by UNEP for reporting on Sustainable Development Goal 6.6.1 (change in the extent of water-related ecosystems over time).",
  "stac_version"= "1.0.0",
  
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/", "mangroves.json")
jsonlite::write_json(collection, path, pretty=TRUE, 
                     auto_unbox=TRUE, null="null")
stac4cast::stac_validate(path)

