SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `ConsumerEmail`;
SET foreign_key_checks = 1;
CREATE TABLE `ConsumerEmail` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idConsumer` bigint(20) UNSIGNED NOT NULL,
  `idEmail` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idConsumer`) REFERENCES user.`Consumer`(id),
  FOREIGN KEY (`idEmail`) REFERENCES `Email`(id)
)
