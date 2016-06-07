- view: view_categorywisecreationandscan
  sql_table_name: public.view_categorywisecreationandscan
  fields:

  - dimension: c
    type: number
    sql: ${TABLE}.c

  - dimension: category_id
    type: number
    # hidden: true
    sql: ${TABLE}.category_id

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
    drill_fields: [category.id, category.name]

