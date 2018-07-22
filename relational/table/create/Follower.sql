SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Follower`;
SET foreign_key_checks = 1;
CREATE TABLE `Follower` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED NOT NULL,
  `idConsumer` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id),
  FOREIGN KEY (`idConsumer`) REFERENCES `Consumer`(id)
)