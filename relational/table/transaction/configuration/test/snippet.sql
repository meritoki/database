SET @idAccount = 2;
INSERT INTO `Account` (`id`,`guid`) VALUES (@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
SET @idUser = 2;
INSERT INTO `User` (`id`,`idAccount`,`name`,`password`,`registerDate`,`activityDate`,`login`,`role`) VALUES (@idUser,@idAccount,'test','$2a$10$FQe5x9FGf4C160hiQsubCOCAF8guhkMoCISRVjG4ku4ul1x4XHacO','2015-06-16 09:34:58','2015-06-16 16:54:00',41,'quality-manager');
INSERT INTO `Consumer` (`idUser`,`idAccount`,`uuid`) VALUES (@idUser,@idAccount,'4d73d200-70e4-11e5-a5be-000c2907b940');
INSERT INTO `Email` (`address`, `idUser`,`idAccount`) VALUES ('test@outlook.com',@idUser,@idAccount);
INSERT INTO `Phone` (`idAccount`,`number`, `idUser`) VALUES (@idAccount,'3015148700',@idUser);
INSERT INTO `Identification` (`idAccount`,`firstName`,`middleName`,`middleInitial`,`lastName`,`name`,`sex`,`guid`,`idUser`) VALUES (@idAccount,'test',null,null,'test','Test','M','4d73d200-70e4-11e5-a5be-000c2907b940',@idUser);
-- source ./model/relational/table/transaction/client/meritbuilders/recorder.sql
COMMIT;
