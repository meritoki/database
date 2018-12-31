SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `AgentIdentification`;
SET foreign_key_checks = 1;
CREATE TABLE `AgentIdentification` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAgent` bigint(20) UNSIGNED NOT NULL,
  `idIdentification` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAgent`) REFERENCES user.`Agent`(id),
  FOREIGN KEY (`idIdentification`) REFERENCES `Identification`(id)
)
