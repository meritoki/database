SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Pulication`;
SET foreign_key_checks = 1;
CREATE TABLE `Publication` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  `character` varchar(1024) NOT NULL,
  `text` varchar(1024) NOT NULL,
  `repository` varchar(1024) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deletedDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id)
)