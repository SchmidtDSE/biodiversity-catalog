library(lubridate)
library(stac4cast)
library(jsonlite)

collection <- list(
  "id"= "carbon",
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
      "href"= "https://irrecoverable.resilienceatlas.org/map",
      "type"= "text/html",
      "title"= "Irrecoverable Carbon Resilience Atlas"
    ),
    list(
      "rel"= "describedby",
      "href"= "https://www.conservation.org/projects/irrecoverable-carbon",
      "title"= "Conservation International Irrecoverable Carbon",
      "type"= "text/html"
    )
  ),
  "title"= "Irrecoverable Carbon - Conservation International",
  "assets"= list(
    "thumbnail"= list(
      "href"= "carbon.png",
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
        "2010-01-01T00:00:00Z",
        "2018-01-01T00:00:00Z"
        ))
    )
  ),
  "license"= "CC-BY-NC",
  "keywords"= list(
    "Carbon",
    "Data",
    "Climate"
  ),
  "providers"= list(
    list(
      "url"= "https://doi.org/10.5281/zenodo.4091028",
      "name"= "Zenodo Archive",
      "roles"= list(
        "host"
      )
    ),
    list(
      "url"= "https://irrecoverable.resilienceatlas.org/map",
      "name"= "Resilience Atlas",
      "roles"= list(
        "processor",
        "host"
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
  "description"= "To avoid the catastrophic consequences of climate breakdown, there are certain places that humanity simply cannot afford to destroy. These ecosystems contain more than 139 billion metric tons of “irrecoverable carbon,” most of which is stored in mangroves, peatlands, old-growth forests and marshes.

Conservational International scientists led a team of globally renowned experts to determine where these carbon stocks are, whether they are threatened by human activities and how quickly the stocks could be recovered if lost — creating a global map of irrecoverable carbon in Earth’s ecosystems.

Informed by this pioneering research, Conservation International is undertaking an ambitious initiative to protect 4 million square kilometers (more than 1.5 million square miles) of ecosystems — an area about the size of India and Bolivia combined — containing high amounts of irrecoverable carbon and biodiversity.",
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



path <- file.path("stac/v1/collections/", "carbon.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE)
stac4cast::stac_validate(path)

