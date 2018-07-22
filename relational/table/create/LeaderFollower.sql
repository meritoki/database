SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `LeaderFollower`;
SET foreign_key_checks = 1;
CREATE TABLE `LeaderFollower` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idLeader` bigint(20) UNSIGNED NOT NULL,
  `idFollower` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idLeader`) REFERENCES `Leader`(id),
  FOREIGN KEY (`idFollower`) REFERENCES `Follower`(id)
)