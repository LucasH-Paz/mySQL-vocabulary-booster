USE hr;
DELIMITER $ $ CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50)) BEGIN
SELECT
  ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
FROM
  employees AS E
  INNER JOIN jobs AS J ON E.JOB_ID = J.JOB_ID
WHERE
  J.JOB_TITLE = cargo;
END $ $ DELIMITER;
