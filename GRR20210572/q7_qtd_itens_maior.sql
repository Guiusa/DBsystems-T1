select
    pais, total
from
(
    select 
        distinct(NATION.N_NAME) as pais, sum(LINEITEM.L_QUANTITY) as total
    from
        LINEITEM
    join 
        ORDERS
    on
        LINEITEM.L_ORDERKEY = ORDERS.O_ORDERKEY
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
)
where
    total >= 62000
;