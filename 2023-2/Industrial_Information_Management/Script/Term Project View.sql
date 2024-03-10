/*Create View*/
CREATE VIEW INSTITUTE_DEPOSIT_BALANCE AS
SELECT I.InstituteCode AS InstituteCode,
	   I.InstituteName AS Institute,
       Calculate_Balance(COUNT(D.DepositID), COALESCE(COUNT(R.RetrievalID), 0)) AS Balance,
       S.SeedName AS SeedName,
       S.Genus AS Genus,
       S.Species AS Species,
       S.FullScientificName AS FullScientificName
FROM DEPOSIT AS D
LEFT JOIN RETRIEVAL AS R ON R.SEED_SeedID = D.SEED_SeedID
JOIN SEED AS S ON S.SeedID = D.SEED_SeedID
JOIN INSTITUTE AS I ON I.InstituteID = D.INSTITUTE_InstituteID
GROUP BY I.InstituteCode, I.InstituteName, S.SeedName, S.Genus, S.Species, S.FullScientificName;

/*View Select By Institute, Order By Total Score DESC*/
SELECT * 
FROM institute_deposit_balance
WHERE InstituteCode = 'DEU038'
ORDER BY Balance DESC;
