library(lubridate)
library(jsonlite)

collection <- list(
  "id"= "iucn_greenlist",
  "type"= "Collection",
  "links"= list(
     list(
      "rel"= "parent",
      "type"= "application/json",
      "title"= "DSE Biodiversity Catalog",
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
      "type"= "application/json",
      "href"= "iucn_greenlist.json",
      title = "ICUN Green List"
    ),
    list(
      "rel"= "license",
      "href"= "https://www.protectedplanet.net/en/legal",
      "type"= "text/html",
      "title"= "License"
    ),
    list(
      "rel"= "about",
      "href"= "https://iucngreenlist.org/",
      "type"= "text/html",
      "title"= "About"
    )
  ),
  "title"= "IUCN Green List",
  "assets"= list(
    "thumbnail"= list(
      "href"= "iucn_greenlist.png",
      "type"= "image/png",
      "title"= "IUCN Green List thumbnail",
      "role"=list("thumbnail")
    ),
    "spatial-polygons" = list(
      "href" = "s3://biodiversity/iucn_greenlist-June2023.gdb",
      "title" = "Geodatabase format",
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
        "2023-06-01T00:00:00Z",
        "2023-06-01T00:00:00Z"
        ))
    )
  ),
  "license"= "proprietary",
  "keywords"= list(
    "Protected Areas",
    "Polygons",
    "Equity",
    "Justice",
    "IUCN",
    "Greenlist",
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
  "description"= "The IUCN Green List of Protected and Conserved Areas programme aims to improve the contribution of equitably governed and effectively managed protected areas to nature conservation and sustainable development, through the provision of associated social, economic, cultural, and spiritual values. The overarching objective of the programme is to increase and recognise the number of effectively managed and equitably governed protected and conserved areas, to deliver conservation outcomes.

The Global Standard of the IUCN Green List of Protected and Conserved Areas provides a global benchmark for how to meet the environmental challenges of the 21st century. It is also a capacity development tool for protected areas, and helps to identify which aspects of protected and conserved areas need to be strengthened. By focusing efforts on these aspects, it is more likely that success will be achieved.

A protected or conserved area that reaches the IUCN Green List Standard is certified and recognised as achieving ongoing results for people and nature in a fair and effective way. Any site can join, and work its way towards achieving verified success, and then maintain the Standard or further improve.

Any protected and conserved area that gains ‘Green List’ status demonstrates:

- Respect: for the local community through fair and meaningful engagement of rights-holders and stakeholders
- Design: planning that identifies the needs to secure the important values of the area
- Effective management: monitoring of the status of these important values
- Successful conservation results: for nature and for people
- Clear contribution: to climate change responses, health and well-being and other challenges

For more information about the IUCN Green List of Protected and Conserved Areas and the associated global Standard, visit the [IUCN Green List Website](https://iucngreenlist.org/).

More than 50 countries have signed up to implement the IUCN Green List of Protected and Conserved Areas.

",
  "stac_version"= "1.0.0",
  
  "stac_extensions"= list(
    "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/table/v1.2.0/schema.json",
    "https://stac-extensions.github.io/alternate-assets/v1.1.0/schema.json"
  )
)



path <- file.path("stac/v1/collections/iucn_greenlist/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE, null="null")
stac4cast::stac_validate(path)

