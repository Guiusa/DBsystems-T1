SELECT
    count(distinct(C_CUSTKEY)) 
from 
    CUSTOMER
    left join
        ORDERS
    on
        O_CUSTKEY = C_CUSTKEY
where
    O_ORDERKEY is null
;