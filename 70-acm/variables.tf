variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "algot.online"
}

variable "zone_id" {
    default =     "Z08625042U0IMS33AVUS6"

  
}