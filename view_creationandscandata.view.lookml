- view: view_creationandscandata
  sql_table_name: public.view_creationandscandata
  fields:

  - dimension: c
    type: number
    sql: ${TABLE}.c

  - dimension: clientid
    type: string
    sql: ${TABLE}.clientid

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: r
    type: number
    sql: ${TABLE}.r

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: []

