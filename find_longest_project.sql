SELECT p.id, max(p.finish_date - p.start_date)*12/365  AS MONTH_COUNT from projects p
GROUP BY p.id
having max(p.finish_date - p.start_date) = (select max(p2.finish_date - p2.start_date ) from projects p2);