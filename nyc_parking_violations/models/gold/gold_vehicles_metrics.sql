select
  registration_state,
  count(summons_number) as ticket_count
from
  {{ref('silver_violation_tickets')}}
where
  registration_state != 'NY'
group by
  registration_state
order by
  ticket_count desc