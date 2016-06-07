- view: auth_client_details
  sql_table_name: public.auth_client_details
  fields:

  - dimension: access_token_expiration_value
    type: number
    sql: ${TABLE}.access_token_expiration_value

  - dimension: category_id
    type: number
    # hidden: true
    sql: ${TABLE}.category_id

  - dimension: client_id
    type: string
    sql: ${TABLE}.client_id

  - dimension: client_name
    type: string
    sql: ${TABLE}.client_name

  - dimension: client_secret
    type: string
    sql: ${TABLE}.client_secret

  - dimension: creation_method
    type: string
    sql: ${TABLE}.creation_method

  - dimension_group: datecreated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datecreated

  - dimension_group: datemodified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datemodified

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: first_name
    type: string
    sql: ${TABLE}.first_name

  - dimension: grant_types
    type: string
    sql: ${TABLE}.grant_types

  - dimension: last_name
    type: string
    sql: ${TABLE}.last_name

  - dimension: project_id
    type: string
    sql: ${TABLE}.project_id

  - dimension: scopes
    type: string
    sql: ${TABLE}.scopes

  - measure: count
    type: count
    drill_fields: [first_name, last_name, client_name, category.id, category.name]

