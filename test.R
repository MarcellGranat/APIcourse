rdbnomics::rdb(provider_code = "OECD", dataset_code = "DP_LIVE", dimensions = list(indicator = "CPI", LOCATION = "SWE"))
rdbnomics::rdb(api_link = "https://db.nomics.world/OECD/DP_LIVE/SWE.CPI.TOT.AGRWTH.M")

ids <- str_c(locations, ".CPI.TOT.AGRWTH.A")

rdbnomics::rdb(provider_code = "OECD", dataset_code = "DP_LIVE", ids = ids)
  
ids |> 
  head(50) |> 
  tail(10) |> 
  map(safely(\(x) rdbnomics::rdb(provider_code = "OECD", dataset_code = "DP_LIVE", ids = x), NA), .progress = TRUE)

