select 
	product.type,
	laptop.model,
	laptop.speed
from 
	laptop
join 
	product on product.model = laptop.model
where 
	laptop.speed > (select min(speed) from pc);
	
Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed 
