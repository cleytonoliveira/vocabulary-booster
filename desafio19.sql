USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT )
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_pessoas_contratadas INT;
SELECT COUNT(JOB_ID)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
INTO total_pessoas_contratadas;
RETURN total_pessoas_contratadas;
END $$

DELIMITER ;
