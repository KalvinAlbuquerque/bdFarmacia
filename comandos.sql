#Letra A)Delete e Update
UPDATE Estado
SET NOME = 'Rio Grande do Sul'
WHERE idEstado = 16;

DELETE FROM Estado
WHERE idEstado = 16;

#Letra B) Select com like
SELECT NOME, idEstado 
FROM Estado
WHERE NOME LIKE 'Bahia';

#Letra C) Select com OrderBy
SELECT NOME, idEstado
FROM Estado
ORDER BY idEstado DESC;