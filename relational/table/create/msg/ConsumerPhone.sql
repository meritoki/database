SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `ConsumerPhone`;
SET foreign_key_checks = 1;
CREATE TABLE `ConsumerPhone` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idConsumer` bigint(20) UNSIGNED NOT NULL,
  `idPhone` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idConsumer`) REFERENCES user.`Consumer`(id),
  FOREIGN KEY (`idPhone`) REFERENCES `Phone`(id)
)
