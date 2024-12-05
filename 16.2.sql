SELECT DISTINCT
    pc1.model, 
    pc2.model, 
    pc1.speed, 
    pc1.ram
FROM 
    pc pc1
INNER JOIN 
    pc pc2 
ON 
    pc1.ram = pc2.ram 
    AND pc1.speed = pc2.speed 
    AND pc1.model > pc2.model


 Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD 
