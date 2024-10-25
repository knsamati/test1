# Charger les libraries

library(robotoolbox)
library(tidyverse)
# Se connecter au compte kobo url=l'adresse du serveur token = API du compte
kobo_setup(url = "https://kf.kobotoolbox.org",
           token = Sys.getenv("TOKEN"))
# Pour verifier les identifiants 
#kobo_settings()

# La liste des projets qui sont sur le compte

#l <- kobo_asset_list()
#l

# se connecter à un projet spécifique
asset <- kobo_asset(Sys.getenv("UID"))

asset |>
  kobo_asset() |>
  kobo_data() |> 
  write_rds("mydf.rds")
