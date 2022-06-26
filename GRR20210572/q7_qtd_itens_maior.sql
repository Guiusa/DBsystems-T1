select
    pais, total
from
(
    select 
        distinct(N_NAME) as pais, sum(L_QUANTITY) as total
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
        total DESC 
)
where
    total >= 62000
;