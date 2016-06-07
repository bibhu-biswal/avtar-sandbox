
- view: scan_Count_by_day
  derived_table:
    sql: |
      
      select count(*),min(DATE(TIMESTAMP 'epoch' + request_time/1000 * INTERVAL '1 Second ')) as start_date from clientusage group by DATE_PART(y,(TIMESTAMP 'epoch' + request_time/1000 * INTERVAL '1 Second ')),DATE_PART(mon,(TIMESTAMP 'epoch' + request_time/1000 * INTERVAL '1 Second ')),DATE_PART(d,(TIMESTAMP 'epoch' + request_time/1000 * INTERVAL '1 Second ')) order by start_date asc

  fields:
  - dimension: count
    type: number
    sql: ${TABLE}.count

  - dimension: start_date
    type: date
    sql: ${TABLE}.start_date

  sets:
    detail:
      - count
      - start_date

