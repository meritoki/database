SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `DonorIdentification`;
SET foreign_key_checks = 1;
CREATE TABLE `DonorIdentification` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idDonor` bigint(20) UNSIGNED NOT NULL,
  `idIdentification` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idDonor`) REFERENCES user.`Donor`(id),
  FOREIGN KEY (`idIdentification`) REFERENCES `Identification`(id)
)
