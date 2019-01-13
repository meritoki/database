DELIMITER $$

CREATE PROCEDURE user.insertConsumer (IN idUserParam INT)
BEGIN
    SET @idConsumer = (SELECT id FROM user.Consumer WHERE idUser=idUserParam);
    INSERT INTO user.Consumer (id,idUser,uuid) VALUES (@idConsumer,idUserParam, UUID());
END$$

DELIMITER ;
