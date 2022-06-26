select
    distinct(N_NAME), count(*) as total
from 
    ORDERS
join
    CUSTOMER 
on 
    O_CUSTKEY = C_CUSTKEY
join
    NATION
on
    C_NATIONKEY = N_NATIONKEY
group by
    N_NAME
order by
    total DESC
;