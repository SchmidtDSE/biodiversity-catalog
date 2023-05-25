conformsTo = list(
  "https://api.stacspec.org/v1.0.0/collections",
  "https://api.stacspec.org/v1.0.0/core"
)


catalog <- list(
  "type"= "Catalog",
  "id"= "biodiversity-stac",
  "title"= "Biodiversity STAC API",
  "description"= "Searchable spatiotemporal metadata for commonly used biodiversity data",
  "stac_version"= "1.0.0",
  "conformsTo"= conformsTo,
  
  # Should try to generate this programmatically from `collections`
  "links"= list(
    list(
      "rel"= "self",
      "type"= "application/json",
      "href"= "catalog.json"
    ),
    list(
      "rel"= "root",
      "type"= "application/json",
      "href"= "catalog.json"
    ),
    
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "IUCN Range Maps",
      "href"= "collections/iucn.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "Conservation International Irrecoverable Carbon",
      "href"= "collections/carbon.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "World Protected Areas",
      "href"= "collections/WPAs.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "Key Biodiversity Areas",
      "href"= "collections/KBAs.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "Global Mangrove Watch",
      "href"= "collections/GMW.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "EcoRegions 2017",
      "href"= "collections/ecoregions2017.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "IO Biodiversity Intactness Index",
      "href"= "https://planetarycomputer.microsoft.com/api/stac/v1/collections/io-biodiversity"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "Global Biodiversity Information Facility",
      "href"= "https://planetarycomputer.microsoft.com/api/stac/v1/collections/gbif"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "MoBI: Map of Biodiversity Importance",
      "href"= "https://planetarycomputer.microsoft.com/api/stac/v1/collections/mobi"
    )
  )
)


path <- file.path("stac/v1/", "catalog.json")
jsonlite::write_json(catalog, path, pretty=TRUE, auto_unbox=TRUE)
stac4cast::stac_validate(path)