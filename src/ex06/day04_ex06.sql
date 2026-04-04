CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT
    pi."name" AS pizzeria_name
FROM
    menu m
    JOIN pizzeria pi ON pi.id = m.pizzeria_id
    JOIN person_visits pv ON pv.pizzeria_id = m.pizzeria_id
    JOIN person p ON p.id = pv.person_id
WHERE
    price < 800
    AND p.name = 'Dmitriy'
    AND pv.visit_date = '2022-01-08';

