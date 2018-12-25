SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `ConsumerIdentification`;
SET foreign_key_checks = 1;
CREATE TABLE `ConsumerIdentification` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idConsumer` bigint(20) UNSIGNED NOT NULL,
  `idIdentification` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idConsumer`) REFERENCES user.`Consumer`(id),
  FOREIGN KEY (`idIdentification`) REFERENCES `Identification`(id)
)
