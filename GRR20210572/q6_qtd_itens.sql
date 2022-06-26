select 
    distinct(N_NAME), sum(L_QUANTITY) as total
from
    LINEITEM
join 
    ORDERS
on
    L_ORDERKEY = O_ORDERKEY
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
    total DESC limit 10
;