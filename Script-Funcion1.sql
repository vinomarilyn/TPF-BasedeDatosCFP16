DELIMITER //

CREATE FUNCTION calcular_costo_total_descuento(
    PaqueteID INT,
    descuento DECIMAL(5,2)
)

RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE costo_base DECIMAL(10, 2);
    DECLARE costo_total DECIMAL(10, 2);
    
    -- Obtener el costo base del viaje
    SELECT Precio INTO costo_base
    FROM paquetesviaje
    WHERE PaqueteID = PaqueteID
    LIMIT 1;
   
    -- Calcular el costo total aplicando el descuento
    SET costo_total = costo_base - (costo_base * descuento / 100);
    
    RETURN costo_total;
END //
DELIMITER ; 

-- Aplicando descuentos 
SELECT calcular_costo_total_descuento(1, 5.00) as costo_total_con_descuento;

-- Control de prueba     
SELECT Precio FROM paquetesviaje WHERE PaqueteID = 1;
