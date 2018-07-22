SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Agent`;
SET foreign_key_checks = 1;
CREATE TABLE `Agent` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED,
  `idProducer` bigint(20) UNSIGNED,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id),
  FOREIGN KEY (`idProducer`) REFERENCES `Producer`(id)
)