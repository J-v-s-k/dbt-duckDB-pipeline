SELECT
date_trunc('month',search_date) as month,
search_term as role,
count(*) as count
from {{ ref('job_postings') }}
group by month,role
order by month,role;