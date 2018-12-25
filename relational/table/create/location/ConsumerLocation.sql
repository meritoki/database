SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `ConsumerLocation`;
SET foreign_key_checks = 1;
CREATE TABLE `ConsumerLocation` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idConsumer` bigint(20) UNSIGNED NOT NULL,
  `idLocation` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idConsumer`) REFERENCES user.`Consumer`(id),
  FOREIGN KEY (`idLocation`) REFERENCES `Location`(id)
)
