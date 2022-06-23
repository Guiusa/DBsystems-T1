select
    distinct(NATION.N_NAME), count(*) as total
from 
    ORDERS
join
    CUSTOMER 
on 
    ORDERS.O_CUSTKEY = CUSTOMER.C_CUSTKEY
join
    NATION
on
    CUSTOMER.C_NATIONKEY = NATION.N_NATIONKEY
group by
    NATION.N_NAME
order by
    total DESC
;