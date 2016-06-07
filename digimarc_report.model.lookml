- connection: redshift_lpp_trial

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: account
  joins:
    - join: category
      type: left_outer 
      sql_on: ${account.category_id} = ${category.id}
      relationship: many_to_one


- explore: auth_client_details
  joins:
    - join: category
      type: left_outer 
      sql_on: ${auth_client_details.category_id} = ${category.id}
      relationship: many_to_one


- explore: category

- explore: clientusage




- explore: deletedtriggers
  joins:
    - join: category
      type: left_outer 
      sql_on: ${deletedtriggers.category_id} = ${category.id}
      relationship: many_to_one


- explore: label

- explore: label_history
  joins:
    - join: account
      type: left_outer 
      sql_on: ${label_history.account_id} = ${account.id}
      relationship: many_to_one

    - join: label
      type: left_outer 
      sql_on: ${label_history.label_id} = ${label.id}
      relationship: many_to_one

    - join: category
      type: left_outer 
      sql_on: ${account.category_id} = ${category.id}
      relationship: many_to_one


- explore: overalltriggers
  joins:
    - join: category
      type: left_outer 
      sql_on: ${overalltriggers.category_id} = ${category.id}
      relationship: many_to_one


- explore: tempdeletedtriggers
  joins:
    - join: category
      type: left_outer 
      sql_on: ${tempdeletedtriggers.category_id} = ${category.id}
      relationship: many_to_one


- explore: temptriggers
  joins:
    - join: category
      type: left_outer 
      sql_on: ${temptriggers.category_id} = ${category.id}
      relationship: many_to_one


- explore: triggers
  joins:
    - join: category
      type: left_outer 
      sql_on: ${triggers.category_id} = ${category.id}
      relationship: many_to_one


- explore: view_categorywisecreationandscan
  joins:
    - join: category
      type: left_outer 
      sql_on: ${view_categorywisecreationandscan.category_id} = ${category.id}
      relationship: many_to_one


- explore: view_creationandscandata

- explore: scan_Count_by_day

