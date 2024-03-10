/* Seed Balance Calculator */
DELIMITER //
CREATE FUNCTION Calculate_Balance
(
varSeedDepositNumber INT,
varSeedRetrievalNumber INT
)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE varCalculate_Balance INT;
SET varCalculate_Balance = varSeedDepositNumber - varSeedRetrievalNumber;
RETURN varCalculate_Balance;
END
//
DELIMITER ;