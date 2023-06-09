library(lubridate)
library(jsonlite)

collection <- list(
  "id"= "KBAs",
  "type"= "Collection",
  "links"= list(
     list(
      "rel"= "parent",
      "title"= "DSE Biodiversity Catalog",
      "type"= "application/json",
      "href"= "../../catalog.json"
    ),
    list(
      "rel"= "root",
      "type"= "application/json",
      "title"= "DSE Biodiversity Catalog",
      "href"= "../../catalog.json"
    ),
    list(
      "rel"= "self",
      "title"= "Key Biodiversity Areas",
      "type"= "application/json",
      "href"= "KBAs.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://www.keybiodiversityareas.org/termsofservice",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://www.keybiodiversityareas.org/working-with-kbas/programme",
      "type"= "text/html",
      "title"= "About"
    )
  ),
  "title"= "Key Biodiversity Areas (KBAs)",
  "assets"= list(
    "thumbnail"= list(
      "href"= "KBAs.png",
      "type"= "image/png",
      "title"= "KBAs thumbnail",
      "roles"= list("thumbnail")
    )
  ),
  "item_assets"= list(
    "spatial-polygons" = list(
      "href" = "s3://biodiversity/KBAs-March2023/KBAsGlobal_2023_March_01_POL.shp",
      "title" = "shapefile format",
      "description" = "Access keys required. set S3 endpoint to <https://minio.carlboettiger.info>"
    ),
    "spatial-points" = list(
      "href" = "s3://biodiversity/KBAs-March2023/KBAsGlobal_2023_March_01_PNT.shp",
      "title" = "shapefile format",
      "description" = "Access keys required. set S3 endpoint to <https://minio.carlboettiger.info>"
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
        NULL
        ))
    )
  ),
  "license"= "proprietary",
  "keywords"= list(
    "KBAs",
    "Polygons",
    "Biodiversity"
  ),
  "providers"= list(
    list(
      "url"= "https://www.mangrovealliance.org",
      "name"= "KBAs",
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
  "description"= "KBAs are home to critical populations of the world’s threatened species. By mapping and protecting KBAs, we can ensure the conservation of the largest and most important populations of these species – and give them a real chance of survival.

Identifying KBAs involves taking a global view of species conservation. Many countries identify sites for conservation based on the rarity of species in their own country, even if the species is widespread in other countries. Applying the KBA criteria ensures that the global population of a species is assessed and the most important populations for that species as a whole are identified, including maintaining the genetic variation needed to adapt to a changing planet.

Species at risk include those that are identified as globally threatened on the IUCN Red List of Threatened Species. These are species with very small, geographically restricted or rapidly declining populations. But the KBA criteria also identify vital sites for species with populations that are confined to small areas or form large aggregations at certain times of the year for breeding, feeding or migrating – since these species are all dependent on the health of a limited number of key habitats.

There are also areas that are hotspots of life, where gatherings of different species exist, particularly those with small ranges, and the loss of these sites would have a disproportionate impact on multiple species. These special sites have their own KBA criteria so that they can be identified.

The KBA criteria also allow proposers to assess the genetic variation within a species, where this is known, to identify sites of critical importance for genetic diversity.",
  "stac_version"= "1.0.0",
  
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json",
    "https://stac-extensions.github.io/alternate-assets/v1.1.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/KBAs/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, 
                     auto_unbox=TRUE, null="null")
# stac4cast::stac_validate(path)

