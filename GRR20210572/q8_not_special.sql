select
    count(O_CUSTKEY)
from
(
    select
        sum(case when O_COMMENT like "%special request%" then 1 else 0 end) as "HAS_THE_STRING",
        O_CUSTKEY
    from
        ORDERS
    group by
        O_CUSTKEY
)
where
    HAS_THE_STRING = 0
;
