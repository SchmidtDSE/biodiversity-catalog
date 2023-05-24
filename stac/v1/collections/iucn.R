list(
  "id"= "iucn",
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
      "href"= "https://www.iucnredlist.org/",
      "type"= "text/html",
      "title"= "IUCN Redlist"
    ),
    list(
      "rel"= "describedby",
      "href"= "https://www.iucnredlist.org/resources/spatial-data-download",
      "title"= "IUCN Spatial Data",
      "type"= "text/html"
    )
  ),
  "title"= "IUCN Range Maps",
  "assets"= list(
    "thumbnail"= list(
      "href"= "https://upload.wikimedia.org/wikipedia/en/thumb/e/ec/IUCN_Red_List.svg/1280px-IUCN_Red_List.svg.png",
      "type"= "image/png",
      "roles"= list(
        "thumbnail"
      ),
      "title"= "IUCN Redlist"
    )
  ),
  "extent"= list(
    "spatial"= list(
      "bbox"= list(
        list(
          -149.6106,
          18.1135,
          -66.7987,
          68.6698
        )
      )
    ),
    "temporal"= list("2023-05-02")
  ),
  "license"= "CC0-1.0",
  "keywords"= list(
    "Forecasting",
    "Data",
    "Ecology"
  ),
  "providers"= list(
    list(
      "url"= "https=//data.ecoforecast.org",
      "name"= "Ecoforecast Data",
      "roles"= list(
        "producer",
        "processor",
        "licensor"
      )
    ),
    list(
      "url"= "https=//ecoforecast.org",
      "name"= "Ecoforecast",
      "roles"= list(
        "host"
      )
    )
  ),
  "description"= "description placeholder",
  "stac_version"= "1.0.0",
  "table_columns"= list(
    list(
      "name"= "target_id",
      "type"= "string",
      "description"= "unique identifier for target data used in the forecast"
    ),
    list(
      "name"= "datetime",
      "type"= "timestamplist(us)",
      "description"= "ISO 8601(ISO 2019)datetime the forecast starts from (a.k.a. issue time); Only needed if more than one reference_datetime is stored in asingle file. Forecast lead time is thus datetime-reference_datetime. Ina hindcast the reference_datetimewill be earlierthan the time thehindcast was actually produced (seepubDatein Section3). Datetimesare allowed to be earlier than thereference_datetimeif areanalysis/reforecast is run before the start of the forecast period. Thisvariable was calledstart_timebefore v0.5 of theEFI standard."
    ),
    list(
      "name"= "parameter",
      "type"= "string",
      "description"= "ensemble member"
    ),
    list(
      "name"= "variable",
      "type"= "string",
      "description"= "aquatic forecast variables= aquatic vars"
    ),
    list(
      "name"= "prediction",
      "type"= "double",
      "description"= "predicted forecast value"
    ),
    list(
      "name"= "family",
      "type"= "string",
      "description"= "For ensembles= “ensemble.” Default value if unspecifiedFor probability distributions= Name of the statistical distributionassociated with the reported statistics. The “sample” distribution issynonymous with “ensemble.”For summary statistics= “summary.”If this dimension does not vary, it is permissible to specifyfamilyas avariable attribute if the file format being used supports this (e.g.,netCDF)."
    ),
    list(
      "name"= "site_id",
      "type"= "string",
      "description"= "For forecasts that are not on a spatial grid, use of a site dimension thatmaps to a more detailed geometry (points, polygons, etc.) is allowable.In general this would be documented in the external metadata (e.g., alook-up table that provides lon and lat); however in netCDF this couldbe handled by the CF Discrete Sampling Geometry data model."
    ),
    list(
      "name"= "model_id",
      "type"= "string",
      "description"= "unique identifier for the model used in the forecast"
    ),
    list(
      "name"= "reference_datetime",
      "type"= "string",
      "description"= "ISO 8601(ISO 2019)datetime the forecast starts from (a.k.a. issue time); Only needed if more than one reference_datetime is stored in asingle file. Forecast lead time is thus datetime-reference_datetime. Ina hindcast the reference_datetimewill be earlierthan the time thehindcast was actually produced (seepubDatein Section3). Datetimesare allowed to be earlier than thereference_datetimeif areanalysis/reforecast is run before the start of the forecast period. Thisvariable was calledstart_timebefore v0.5 of theEFI standard."
    ),
    list(
      "name"= "date",
      "type"= "string",
      "description"= "ISO 8601(ISO 2019)datetime being predicted; follows CF conventionhttp=//cfconventions.org/cf-conventions/cf-conventions.html#time-coordinate. This variable was called time before v0.5of the EFIconvention.For time-integrated variables (e.g., cumulative net primary productivity), one should specify thestart_datetimeandend_datetimeas two variables, instead of the singledatetime.If this is not providedthedatetimeis assumed to be the MIDPOINT of theintegrationperiod."
    )
  ),
  "stac_extensions"= list(
    "https=//stac-extensions.github.io/scientific/v1.0.0/schema.json",
    "https=//stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https=//stac-extensions.github.io/table/v1.2.0/schema.json"
  ),
  "publications"= list(
    "doi"= "https=//www.doi.org/10.22541/essoar.167079499.99891914/v1",
    "citation"= "Thomas, R.Q., C. Boettiger, C.C. Carey, M.C. Dietze, L.R. Johnson, M.A. Kenney, J.S. Mclachlan, J.A. Peters, E.R. Sokol, J.F. Weltzin, A. Willson, W.M. Woelmer, and Challenge Contributors. The NEON Ecological Forecasting Challenge. Accepted at Frontiers in Ecology and Environment. Pre-print"
  )
)