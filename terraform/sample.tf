terraform {
  backend "http" {

  }
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "~> 3.1"
    }
  }
}

variable "gitlab_access_token" {
  type = string
}
provider "gitlab" {
  token = var.gitlab_access_token
}

data "gitlab_project" "sample_project" {
    id = "4"
}

# Add avariable to the project
resource "gitlab_project_variable" "sample_project_variable" {
  project = data.gitlab_project.sample_project.id
  key = "sample_variable"
  value = "Bonjour David"
}
