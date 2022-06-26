select
    count(O_CUSTKEY)
from
(
    select
        sum(case when O_COMMENT like "%special request%" then 1 else 0 end) as "HAS_SPECIAL",
        sum(case when O_COMMENT like "%unusual package%" then 1 else 0 end) as "HAS_UNUSUAL",
        O_CUSTKEY
    from
        ORDERS
    group by
        O_CUSTKEY
)
where
    HAS_SPECIAL != 0 AND
    HAS_UNUSUAL = 0
;