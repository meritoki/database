
/*
	auth
*/
BEGIN;
SET @idAccount=2;
SET @idUser=2;
SET @idClient=2;
INSERT INTO auth.Account (`id`,`uuid`) VALUES (@idAccount,UUID());
INSERT INTO auth.User (`id`,uuid, `idAccount`,`name`,`password`,`registerDate`,`activityDate`,`login`,`role`) VALUES (@idUser,UUID(),@idAccount,'jorodriguez1988@yahoo.com','$2a$10$opfjMC.OXSLPcVkfV9WAIO6g/PbxP6Z.vZJTxT0o1.E9CslTnvAhW',NOW(),NOW(),0,'Donor');
INSERT INTO auth.Client (`id`,idUser,`secret`, `identification`,`name`, registerDate,activityDate) VALUES (@idClient,@idUser,'123','01','mobile',NOW(),NOW());
COMMIT;


/*
	user
*/
Set @idDonor=2;
INSERT INTO user.Donor(id,idUser,uuid) VALUES (@idDonor,@idUser,UUID());
COMMIT;

/*
	id
*/
SET @idIdentification=2;
INSERT INTO id.Identification (id,firstName,lastName,name, gender, birthDate) VALUES (@idIdentification,"Joaquin","Rodriguez","Joaquin Osvaldo Rodriguez", "M", NOW());
INSERT INTO id.DonorIdentification (idDonor,idIdentification) VALUES (@idDonor,@idIdentification);
COMMIT;

/*
	location
*/
SET @idLocation=2;
INSERT INTO location.Location (id,addressOne,city,zipCode) VALUES (@idLocation,"123 Fake Street","Blue Bell", "19422");
INSERT INTO location.DonorLocation(idDonor,idLocation) VALUES (@idDonor,@idLocation);
COMMIT;

/*
	msg
*/
SET @idEmail=2;
INSERT INTO msg.Email (id,address) VALUES (@idEmail,"jorodriguez199@yahoo.com");
INSERT INTO msg.DonorEmail (idDonor,idEmail) VALUES (@idDonor,@idEmail);
COMMIT;

/*
  card
*/
SET @idCard=2;
INSERT INTO card.Card(id) VALUES (@idCard);
INSERT INTO card.DonorCard (idDonor,idCard) VALUES (@idDonor,@idCard);
COMMIT;
