WITH min_engine_power AS (
    SELECT model, MIN(engine_power) AS min_power
    FROM car
    GROUP BY model
),
max_seats AS (
    SELECT model, MAX(seats) AS max_seats
    FROM car
    GROUP BY model
),
motorcycle_makers AS (
    SELECT DISTINCT v2.maker
    FROM motorcycle m
    JOIN vehicle v2 ON m.model = v2.model
),
truck_makers AS (
    SELECT DISTINCT v3.maker
    FROM truck t
    JOIN vehicle v3 ON t.model = v3.model
)
SELECT v.maker
FROM vehicle v
JOIN car c ON v.model = c.model
JOIN min_engine_power mp ON c.model = mp.model AND c.engine_power = mp.min_power
JOIN max_seats ms ON c.model = ms.model AND c.seats = ms.max_seats
WHERE v.maker IN (SELECT maker FROM motorcycle_makers)
  AND v.maker NOT IN (SELECT maker FROM truck_makers);
  
 --Найдите производителей мотоциклов, которые производят легковые автомобили, с наименьшей мощностью двигателя и с самым большим количеством мест среди всех легковых автомобилей. Вывести: maker.--