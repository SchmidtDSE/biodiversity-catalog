library(lubridate)
library(stac4cast)
library(jsonlite)

collection <- list(
  "id"= "ecoregions",
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
      "href"= "ecoregions.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://creativecommons.org/licenses/by/4.0",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "<https://www.resolve.ngo/about.htm",
      "type"= "text/html",
      "title"= "About"
    )
  ),
  "title"= "RESOLVE Ecoregions 2017",
  "assets"= list(
    "thumbnail"= list(
      "href"= "ecoregions.png",
      "type"= "image/png",
      "roles"= list(
        "thumbnail"
      ),
      "title"= "Ecoregions 2017 thumbnail"
    ),
    "flatgeobuf"= list(
      "href" = "s3://public-biodiversity/Ecoregions2017.fgb",
      "title"= "Polygon data",
      "description" =  "S3 Bucket access (anonymous access permitted)",
      "roles"= list(
        "data"
      ),
      "alternate" = list(
        "http" =  list(
          "title"= "http access",
          "href"= "https://minio.carlboettiger.info/public-biodiversity/Ecoregions2017.fgb"
        ),
        "http" =  list(
          "title"= "Original Shapefile",
          "href"= "https://storage.googleapis.com/teow2016/Ecoregions2017.zip"
        )
      )
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
        "2017-01-01T00:00:00Z",
        NULL
        ))
    )
  ),
  "license"= "CC-BY",
  "keywords"= list(
    "ecoregions",
    "Polygons",
    "Biodiversity"
  ),
  "providers"= list(
    list(
      "url"= "https://www.resolve.ngo/",
      "name"= "RESOLVE",
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
  "description"= "This map offers a depiction of the 846 ecoregions that represent our living planet. Ecoregions are ecosystems of regional extent. These are color coded on this map to highlight their distribution and the biological diversity they represent. This new map is based on recent advances in biogeography - the science concerning the distribution of plants and animals. The original ecoregions map has been widely used since its introduction in 2001, underpinning the most recent analyses of the effects of global climate change on nature by ecologists to the distribution of the world's beetles to modern conservation planning. In the same vein, our updated ecoregions can now be used to chart progress towards achieving the visionary goal of Nature Needs Half, to protect half of all the land on Earth to save a living terrestrial biosphere.",
  "stac_version"= "1.0.0",
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json",
    "https://stac-extensions.github.io/alternate-assets/v1.1.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/ecoregions/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, 
                     auto_unbox=TRUE, null="null")
stac4cast::stac_validate(path)

