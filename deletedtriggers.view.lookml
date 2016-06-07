- view: deletedtriggers
  sql_table_name: public.deletedtriggers
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: archived_by
    type: string
    sql: ${TABLE}.archived_by

  - dimension: category_id
    type: number
    # hidden: true
    sql: ${TABLE}.category_id

  - dimension: clientid
    type: string
    sql: ${TABLE}.clientid

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

  - dimension: end_date
    type: number
    sql: ${TABLE}.end_date

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: payload_id
    type: string
    sql: ${TABLE}.payload_id

  - dimension: project_id
    type: string
    sql: ${TABLE}.project_id

  - dimension: reason
    type: string
    sql: ${TABLE}.reason

  - dimension: start_date
    type: number
    sql: ${TABLE}.start_date

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id, name, category.id, category.name]

