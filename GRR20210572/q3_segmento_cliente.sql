select 
    C_MKTSEGMENT as segmento, count(*) as total
from 
    CUSTOMER 
group by 
    segmento 
;