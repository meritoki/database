SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `ConsumerImage`;
SET foreign_key_checks = 1;
CREATE TABLE `ConsumerImage` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idConsumer` bigint(20) UNSIGNED NOT NULL,
  `idImage` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idConsumer`) REFERENCES `Consumer`(id),
  FOREIGN KEY (`idImage`) REFERENCES `Image`(id)
)