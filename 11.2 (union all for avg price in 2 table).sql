SELECT AVG(price) AS average_price
FROM (
    SELECT price
    FROM vehicle v
    JOIN car c ON v.model = c.model
    WHERE v.maker = 'Duo2TC'
    UNION ALL
    SELECT price
    FROM vehicle v
    JOIN truck t ON v.model = t.model
    WHERE v.maker = 'Duo2TC'
) AS combined_price;


--Найдите среднюю цену легковых автомобилей и грузовиков, выпущенных производителем Duo2TC. Вывести: одна общая средняя цена (average_price).--