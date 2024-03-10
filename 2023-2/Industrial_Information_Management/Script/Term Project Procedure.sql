/*Create Procedure View_Species_Holder*/

DELIMITER //

CREATE PROCEDURE VIEW_SPECIES_HOLDER
(
IN newSpecies VARCHAR(45)
)

BEGIN

DECLARE varBalance INT;

SELECT Calculate_Balance(COALESCE(COUNT(D.DepositID), 0), COALESCE(COUNT(R.RetrievalID), 0)) INTO varBalance
FROM DEPOSIT AS D
LEFT JOIN RETRIEVAL AS R ON R.SEED_SeedID = D.SEED_SeedID
JOIN SEED AS S ON S.SeedID = D.SEED_SeedID
JOIN INSTITUTE AS I ON I.InstituteID = D.INSTITUTE_InstituteID
WHERE S.FullScientificName = newSpecies;

IF (varBalance = 0)
THEN
SELECT 'There are no institute who holds the species.'
AS Search_Result;

ELSE
SELECT I.InstituteID, I.InstituteName, I.InstituteCode, I.INSTITUTE_LOCATION_InstituteLocation AS InstituteLocation, Count(*) AS NumOfSeeds
FROM INSTITUTE AS I
JOIN DEPOSIT AS D ON I.InstituteID = D.INSTITUTE_InstituteID
LEFT JOIN RETRIEVAL AS R ON R.SEED_SeedID = D.SEED_SeedID
JOIN SEED AS S ON S.SeedID = D.SEED_SeedID
WHERE S.FullScientificName = newSpecies
GROUP BY I.InstituteID, I.InstituteName, I.InstituteCode, InstituteLocation;

END IF;

END;
//

CALL VIEW_SPECIES_HOLDER('Phaseolus vulgaris');