
/*
	auth
*/
BEGIN;
SET @idAccount = 1;
SET @idUser = 1;
SET @idClient = 1;
INSERT INTO auth.Account (`id`,`uuid`) VALUES (@idAccount,UUID());
INSERT INTO auth.User (`id`,uuid, `idAccount`,`name`,`password`,`registerDate`,`activityDate`,`login`,`role`) VALUES (@idUser,UUID(),@idAccount,'jorodriguez1988@yahoo.com','$2a$10$opfjMC.OXSLPcVkfV9WAIO6g/PbxP6Z.vZJTxT0o1.E9CslTnvAhW',NOW(),NOW(),0,'consumer');
INSERT INTO auth.Client (`id`,`idUser`,`secret`, `identification`,`name`, registerDate,activityDate) VALUES (@idClient,@idUser,"123",'01','mobile',NOW(),NOW());
COMMIT;


/*
	user
*/
Set @idConsumer=1;
INSERT INTO user.Consumer(id,idUser,uuid) VALUES (@idConsumer,@idUser,UUID());
COMMIT;

/*
	id
*/
SET @idIdentification=1;
INSERT INTO id.Identification (id,firstName,lastName,name, gender, birthDate) VALUES (@idIdentification,"Joaquin","Rodriguez","Joaquin Osvaldo Rodriguez", "M", NOW());
INSERT INTO id.ConsumerIdentification (idConsumer,idIdentification) VALUES (@idConsumer,@idIdentification);
COMMIT;

/*
	location
*/
SET @idLocation=1;
INSERT INTO location.Location (id,addressOne,city,zipCode) VALUES (@idLocation,"123 Fake Street","Blue Bell", "19422");
INSERT INTO location.ConsumerLocation(idConsumer,idLocation) VALUES (@idConsumer,@idLocation);
COMMIT;

/*
	msg
*/
SET @idEmail=1;
INSERT INTO msg.Email (id,address) VALUES (@idEmail,"jorodriguez199@yahoo.com");
INSERT INTO msg.ConsumerEmail (idConsumer,idEmail) VALUES (@idConsumer,@idEmail);
COMMIT;

SET @idPhone=1;
INSERT INTO msg.Phone (`id`,`number`) VALUES (@idPhone,"34979441");
INSERT INTO msg.ConsumerPhone (idConsumer,idPhone) VALUES (@idConsumer,@idPhone);
COMMIT;

/*
  card
*/
-- SET @idCard=1;
-- INSERT INTO card.Card(id) VALUES (@idCard);
-- INSERT INTO card.ConsumerCard (idConsumer,idCard) VALUES (@idConsumer,@idCard);
-- COMMIT;
