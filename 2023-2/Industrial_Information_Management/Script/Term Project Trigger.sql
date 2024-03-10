DELIMITER //

CREATE TRIGGER seed_insert_trigger
BEFORE INSERT ON SEED
FOR EACH ROW
BEGIN
    DECLARE species_name VARCHAR(45);
    DECLARE genus_name VARCHAR(45);
    DECLARE space_count INT;
    
    SET space_count = LENGTH(NEW.FullScientificName) - LENGTH(REPLACE(NEW.FullScientificName, ' ', ''));
    
    IF space_count >= 2 THEN
        SET genus_name = SUBSTRING_INDEX(NEW.FullScientificName, ' ', 1);
        SET species_name = SUBSTRING_INDEX(NEW.FullScientificName, ' ', 2);
    ELSEIF space_count = 1 THEN
        SET species_name = NEW.FullScientificName;
        SET genus_name = SUBSTRING_INDEX(NEW.FullScientificName, ' ', 1);
    END IF;

    IF NEW.Species IS NULL THEN
        SET NEW.Species = species_name;
    END IF;

    IF NEW.Genus IS NULL THEN
        SET NEW.Genus = genus_name;
    END IF;

    SET NEW.SeedName = 'Information Needed';

    IF NEW.SeedID IS NULL THEN
        SET NEW.SeedID = (SELECT COALESCE(MAX(SeedID), 0) + 1 FROM SEED);
    END IF;
END;
//

DELIMITER ;
