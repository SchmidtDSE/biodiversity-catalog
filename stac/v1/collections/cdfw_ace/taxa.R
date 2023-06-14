library(lubridate)
library(stac4cast)
library(jsonlite)
library(readxl)
library(tidyverse)
library(sf)
poly <- spData::us_states |> filter(NAME == "California") |> st_geometry() |> st_write("poly.geojson", append=FALSE)
poly <- read_json("poly.geojson")
unlink("poly.geojson")
poly <- poly$features[[1]]$geometry
xl <- basename(url)
url <- "https://minio.carlboettiger.info/public-biodiversity/ACE_List_of_Datasets_by_Taxonomic_Group.xlsx"
download.file(url, xl)
df <- read_xlsx(xl)
unlink(xl)
names(df) <- c("href", "title", "description")
assets <- 
  df |> 
  mutate(href = paste0("/vsicurl/", "https://minio.carlboettiger.info/",
                       "public-biodiversity/",
                       "ACE_taxa/", href, ".gdb"),
         description = paste0("public bucket path to gdb database file on DSE's S3 endpoint. Prefix URL `/vsicurl/` for GDAL-based reads. Additional information at <",
                              description, ">"),
         roles = list("data")) |>
  toJSON(pretty = TRUE)
assets <- fromJSON(assets, simplifyVector = FALSE)
names(assets) <- df$href



items <- list(
  "id"= "cdfw_ace_taxa",
  "type"= "Feature",
  "collection" = "cdfw_ace",
  "links"= list(
     list(
      "rel"= "collection",
      "title"= "CDFW ACE",
      "type"= "application/json",
      "href"= "collection.json"
    ),
    list(
      "rel"= "parent",
      "title"= "CDFW ACE",
      "type"= "application/json",
      "href"= "collection.json"
    ),
    list(
      "rel"= "root",
      "title"= "DSE Biodiversity Catalog",
      "type"= "application/json",
      "href"= "../../../catalog.json"
    ),
    list(
      "rel"= "self",
      "title"= "CDFW ACE taxa Datasets",
      "type"= "application/json",
      "href"= "taxa.json"
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
  "assets"= assets,
  "geometry" = poly,
  "bbox"= list(
      -124,
      -114,
      -32,
       42
  ),
  "properties" = list("datetime" = "2018-02-01T00:00:00Z"),
  "stac_version"= "1.0.0"
)

path <- file.path("stac/v1/collections/cdfw_ace/taxa.json")
jsonlite::write_json(items, path, pretty=TRUE, auto_unbox=TRUE, null="null")
stac4cast::stac_validate(path)

