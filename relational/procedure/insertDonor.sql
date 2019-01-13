DELIMITER $$

CREATE PROCEDURE user.insertDonor (IN idUserParam INT)
BEGIN
    SET @idDonor = (SELECT id FROM user.Donor WHERE idUser=idUserParam);
    INSERT INTO user.Donor (id,idUser,uuid) VALUES (@idDonor,idUserParam, UUID());
END$$

DELIMITER ;
