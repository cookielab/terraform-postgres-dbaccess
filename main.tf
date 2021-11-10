resource "postgresql_grant" "tables" {

  database    = var.db_name
  role        = var.access_user
  schema      = "public"
  object_type = "table"
  privileges  = var.access_map.table_rights
}

resource "postgresql_grant" "schema" {

  database    = var.db_name
  role        = var.access_user
  schema      = "public"
  object_type = "schema"
  privileges  = var.access_map.schema_rights
}

resource "postgresql_grant" "database" {

  database    = var.db_name
  role        = var.access_user
  schema      = "public"
  object_type = "database"
  privileges  = var.access_map.database_rights
}

resource "postgresql_grant" "sequence" {

  database    = var.db_name
  role        = var.access_user
  schema      = "public"
  object_type = "sequence"
  privileges  = var.access_map.sequence_rights
}

resource "postgresql_default_privileges" "tables" {

  database    = var.db_name
  role        = var.access_user
  schema      = "public"
  object_type = "table"
  privileges  = var.access_map.table_rights
  owner       = var.db_owner
}

resource "postgresql_default_privileges" "sequences" {
  database    = var.db_name
  role        = var.access_user
  schema      = "public"
  object_type = "sequence"
  privileges  = var.access_map.sequence_rights
  owner       = var.db_owner

}

