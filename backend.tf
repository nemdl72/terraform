terraform {
  backend "remote" {
    organization = "getapptitude"

    workspaces {
      name = "terraform1"
    }
  }
}
