
BEGIN;
SET @idAccount = 1;
SET @idUser = 1;
INSERT INTO `Account` (`id`,`uuid`) VALUES (@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `User` (`id`,`idAccount`,`name`,`password`,`registerDate`,`activityDate`,`login`,`role`) VALUES (@idUser,@idAccount,'jorodriguez1988@yahoo.com','$2a$10$opfjMC.OXSLPcVkfV9WAIO6g/PbxP6Z.vZJTxT0o1.E9CslTnvAhW','2015-06-16 09:34:58','2015-06-16 09:34:58',0,'consumer');
INSERT INTO `Consumer` (`idUser`,`idAccount`,`uuid`) VALUES (@idUser,@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `Email` (`idUser`,`idAccount`,`address`) VALUES (@idUser,@idAccount,'jorodriguez1988@yahoo.com');
INSERT INTO `Identification` (`idUser`,`idAccount`,`firstName`,`middleName`,`middleInitial`,`lastName`,`name`,`gender`,`guid`) VALUES (@idUser,@idAccount,'Joaquin',null,null,'Rodriguez','Joaquin Rodriguez','M','0fbfa716-70e4-11e5-a5be-000c2907b940');
COMMIT;

BEGIN;
SET @idAccount = 2;
SET @idUser = 2;
INSERT INTO `Account` (`id`,`uuid`) VALUES (@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `User` (`id`,`idAccount`,`name`,`password`,`registerDate`,`activityDate`,`login`,`role`) VALUES (@idUser,@idAccount,'gcanz@yahoo.com','$2a$10$opfjMC.OXSLPcVkfV9WAIO6g/PbxP6Z.vZJTxT0o1.E9CslTnvAhW','2015-06-16 09:34:58','2015-06-16 09:34:58',0,'consumer');
INSERT INTO `Consumer` (`idUser`,`idAccount`,`uuid`) VALUES (@idUser,@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `Email` (`idUser`,`idAccount`,`address`) VALUES (@idUser,@idAccount,'gcanz@yahoo.com');
INSERT INTO `Identification` (`idUser`,`idAccount`,`firstName`,`middleName`,`middleInitial`,`lastName`,`name`,`gender`,`guid`) VALUES (@idUser,@idAccount,'Gabriela',null,'A','Canziani','Gabriela Canziani','F','0fbfa716-70e4-11e5-a5be-000c2907b940');
COMMIT;

BEGIN;
SET @idAccount = 3;
SET @idUser = 3;
INSERT INTO `Account` (`id`,`uuid`) VALUES (@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `User` (`id`,`idAccount`,`name`,`password`,`registerDate`,`activityDate`,`login`,`role`) VALUES (@idUser,@idAccount,'srod@yahoo.com','$2a$10$opfjMC.OXSLPcVkfV9WAIO6g/PbxP6Z.vZJTxT0o1.E9CslTnvAhW','2015-06-16 09:34:58','2015-06-16 09:34:58',0,'consumer');
INSERT INTO `Consumer` (`idUser`,`idAccount`,`uuid`) VALUES (@idUser,@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `Email` (`idUser`,`idAccount`,`address`) VALUES (@idUser,@idAccount,'srod@yahoo.com');
INSERT INTO `Identification` (`idUser`,`idAccount`,`firstName`,`middleName`,`middleInitial`,`lastName`,`name`,`gender`,`guid`) VALUES (@idUser,@idAccount,'Silveria',null,null,'Rodriguez','Silveria Rodriguez','F','0fbfa716-70e4-11e5-a5be-000c2907b940');
COMMIT;

BEGIN;
SET @idAccount = 4;
SET @idUser = 4;
INSERT INTO `Account` (`id`,`uuid`) VALUES (@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `User` (`id`,`idAccount`,`name`,`password`,`registerDate`,`activityDate`,`login`,`role`) VALUES (@idUser,@idAccount,'crod@yahoo.com','$2a$10$opfjMC.OXSLPcVkfV9WAIO6g/PbxP6Z.vZJTxT0o1.E9CslTnvAhW','2015-06-16 09:34:58','2015-06-16 09:34:58',0,'consumer');
INSERT INTO `Consumer` (`idUser`,`idAccount`,`uuid`) VALUES (@idUser,@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `Email` (`idUser`,`idAccount`,`address`) VALUES (@idUser,@idAccount,'crod@yahoo.com');
INSERT INTO `Identification` (`idUser`,`idAccount`,`firstName`,`middleName`,`middleInitial`,`lastName`,`name`,`gender`,`guid`) VALUES (@idUser,@idAccount,'Clarisa',null,null,'Rodriguez','Clarisa Rodriguez','F','0fbfa716-70e4-11e5-a5be-000c2907b940');
COMMIT;
