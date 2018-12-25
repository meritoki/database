SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `AgentLocation`;
SET foreign_key_checks = 1;
CREATE TABLE `AgentLocation` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAgent` bigint(20) UNSIGNED NOT NULL,
  `idLocation` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAgent`) REFERENCES user.`Agent`(id),
  FOREIGN KEY (`idLocation`) REFERENCES `Location`(id)
)
