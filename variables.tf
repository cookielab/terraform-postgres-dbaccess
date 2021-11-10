variable "db_name" {
  type        = string
  description = "database name"
}

variable "db_owner" {
  type        = string
  description = "database owner"
}

variable "access_user" {
  type        = string
  description = "grantee user"
}

variable "access_map" {
  type = object({
    table_rights    = list(string)
    sequence_rights = list(string)
    schema_rights   = list(string)
    database_rights = list(string)
    }
  )
}
