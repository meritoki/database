SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `DonorLocation`;
SET foreign_key_checks = 1;
CREATE TABLE `DonorLocation` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idDonor` bigint(20) UNSIGNED NOT NULL,
  `idLocation` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idDonor`) REFERENCES user.`Donor`(id),
  FOREIGN KEY (`idLocation`) REFERENCES `Location`(id)
)
