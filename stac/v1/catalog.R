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
      "href"= "stac/v1/catalog.json"
    ),
    list(
      "rel"= "root",
      "type"= "application/json",
      "href"= "stac/v1/catalog.json"
    ),
    
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "IUCN Range Maps",
      "href"= "stac/v1/collections/iucn.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "Conservation International Irrecoverable Carbon",
      "href"= "stac/v1/collections/carbon.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "World Protected Areas",
      "href"= "stac/v1/collections/WPAs.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "Key Biodiversity Areas",
      "href"= "stac/v1/collections/KBAs.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "Global Mangrove Watch",
      "href"= "stac/v1/collections/GMW.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "EcoRegions 2017",
      "href"= "stac/v1/collections/ecoregions2017.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "IO Biodiversity Intactness Index",
      "href"= "stac/v1/collections/io-biodiversity.json"
    ),
    list(
      "rel"= "child",
      "type"= "application/json",
      "title"= "Global Biodiversity Information Facility",
      "href"= "stac/v1/collections/gbif.json"
    )
  )
)


path <- file.path("stac/v1/", "catalog.json")
jsonlite::write_json(catalog, path, pretty=TRUE, auto_unbox=TRUE)
stac4cast::stac_validate(path)