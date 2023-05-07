terraform {
  cloud {
    organization = "elma"

    workspaces {
      name = "scrapingproject"
    }
  }
}