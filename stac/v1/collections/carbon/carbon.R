library(lubridate)
library(stac4cast)
library(jsonlite)

collection <- list(
  "id"= "carbon",
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
      "title"= "DSE Biodiversity Catalog",
      "type"= "application/json",
      "href"= "../../catalog.json"
    ),
    list(
      "rel"= "self",
      "title"= "Conservation International Irrecoverable Carbon",
      "type"= "application/json",
      "href"= "carbon.json"
    ),
    list(
      "rel"= "license",
      "href"= "https://creativecommons.org/licenses/by-nc/4.0/legalcode",
      "type"= "text/html",
      "title"= "License"
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
      "title"= "Irrecoverable Carbon Thumbnail",
      "roles"= list("thumbnail")
    )
  ), 
  "item_assets"= list(
      "irr_biomass_2010" = list(
      "href" = "/vsis3/biodiversity/carbon/Irrecoverable_Carbon_2010/Irrecoverable_C_Biomass_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Irrecoverable Carbon Biomass, 2010"
    ),
    "irr_soil_2010" = list(
      "href" = "/vsis3/biodiversity/carbon/Irrecoverable_Carbon_2010/Irrecoverable_C_Soil_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Irrecoverable Carbon Soil, 2010"
    ),
    "irr_total_2010" = list(
      "href" = "/vsis3/biodiversity/carbon/Irrecoverable_Carbon_2010/Irrecoverable_C_Total_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Irrecoverable Carbon Total, 2010"
    ),
    "irr_biomass_2018" = list(
      "href" = "s3://biodiversity/carbon/Irrecoverable_Carbon_2018/Irrecoverable_C_Biomass_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Irrecoverable Carbon Biomass, 2018"
    ),
    "irr_soil_2018" = list(
      "href" = "s3://biodiversity/carbon/Irrecoverable_Carbon_2018/Irrecoverable_C_Soil_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Irrecoverable Carbon Soil, 2018"
    ),
    "irr_total_2018" = list(
      "href" = "s3://biodiversity/carbon/Irrecoverable_Carbon_2018/Irrecoverable_C_Total_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Irrecoverable Carbon Total, 2018"
    ),
    
    "vul_biomass_2010" = list(
      "href" = "s3://biodiversity/carbon/Vulnerable_Carbon_2010/Vulnerable_C_Biomass_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Vulnerable Carbon Biomass, 2010"
    ),
    "vul_soil_2010" = list(
      "href" = "s3://biodiversity/carbon/Vulnerable_Carbon_2010/Vulnerable_C_Soil_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Vulnerable Carbon Soil, 2010"
    ),
    "vul_total_2010" = list(
      "href" = "s3://biodiversity/carbon/Vulnerable_Carbon_2010/Vulnerable_C_Total_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Vulnerable Carbon Total, 2010"
    ),
    "vul_biomass_2018" = list(
      "href" = "s3://biodiversity/carbon/Vulnerable_Carbon_2018/Vulnerable_C_Biomass_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Vulnerable Carbon Biomass, 2018"
    ),
    "vul_soil_2018" = list(
      "href" = "s3://biodiversity/carbon/Vulnerable_Carbon_2018/Vulnerable_C_Soil_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Vulnerable Carbon Soil, 2018"
    ),
    "vul_total_2018" = list(
      "href" = "s3://biodiversity/carbon/Vulnerable_Carbon_2018/Vulnerable_C_Total_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Vulnerable Carbon Total, 2018"
    ),
    
    
        
    "vul_biomass_2010" = list(
      "href" = "s3://biodiversity/carbon/Manageable_Carbon_2010/Manageable_C_Biomass_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Manageable Carbon Biomass, 2010"
    ),
    "vul_soil_2010" = list(
      "href" = "s3://biodiversity/carbon/Manageable_Carbon_2010/Manageable_C_Soil_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Manageable Carbon Soil, 2010"
    ),
    "vul_total_2010" = list(
      "href" = "s3://biodiversity/carbon/Manageable_Carbon_2010/Manageable_C_Total_2010.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Manageable Carbon Total, 2010"
    ),
    "vul_biomass_2018" = list(
      "href" = "s3://biodiversity/carbon/Manageable_Carbon_2018/Manageable_C_Biomass_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Manageable Carbon Biomass, 2018"
    ),
    "vul_soil_2018" = list(
      "href" = "s3://biodiversity/carbon/Manageable_Carbon_2018/Manageable_C_Soil_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Manageable Carbon Soil, 2018"
    ),
    "vul_total_2018" = list(
      "href" = "s3://biodiversity/carbon/Manageable_Carbon_2018/Manageable_C_Total_2018.tif",
      "type" = "image/tiff; application=geotiff; profile=cloud-optimized",
      "title" = "Manageable Carbon Total, 2018"
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
  "description"= "These datasets provide global maps of carbon density (aboveground, belowground biomass carbon and soil organic carbon stocks) for the year 2010 and 2018 at ~300-m spatial resolution in Mg ha-1 (Coordinate System: WGS 1984, float format). Input maps were collected from published literature, and where necessary, updated to cover the focal time period. These updates were applied to the manageable carbon, vulnerable carbon and irrecoverable carbon maps. Manageable carbon is carbon in terrestrial and coastal ecosystems that could experience an anthropogenic land-use conversion event . Vulnerable carbon is the carbon that would be that would be released in a typical land-use conversion. Irrecoverable carbon is  the carbon that, if lost, would not recover by mid-century.  Datasets are disaggregated for carbon density in biomass or soils.",
  "publications"= list(
    "doi"= "https://doi.org/10.1038/s41893-021-00803-6",
    "citation"= "Noon, M.L., Goldstein, A., Ledezma, J.C. et al. Mapping the irrecoverable carbon in Earth’s ecosystems. Nat Sustain 5, 37–46 (2022). https://doi.org/10.1038/s41893-021-00803-6"
),
"stac_version"= "1.0.0",
"stac_extensions"= list(
  "https://stac-extensions.github.io/scientific/v1.0.0/schema.json",
  "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
  "https://stac-extensions.github.io/table/v1.2.0/schema.json",
  "https://stac-extensions.github.io/alternate-assets/v1.1.0/schema.json"
)
)



path <- file.path("stac/v1/collections/carbon/collection.json")
jsonlite::write_json(collection, path, pretty=TRUE, auto_unbox=TRUE)
#stac4cast::stac_validate(path)

