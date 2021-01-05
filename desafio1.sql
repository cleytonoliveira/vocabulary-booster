SELECT 
	COUNTRY_NAME AS 'País',
    IF (region_id = 1, 'incluído', 'não incluído') AS 'Status de Inclusão'
FROM hr.countries;
