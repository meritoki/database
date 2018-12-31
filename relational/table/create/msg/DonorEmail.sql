SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `DonorEmail`;
SET foreign_key_checks = 1;
CREATE TABLE `DonorEmail` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idDonor` bigint(20) UNSIGNED NOT NULL,
    `idEmail` bigint(20) UNSIGNED NOT NULL,
    `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idDonor`) REFERENCES user.`Donor` (`id`),
    FOREIGN KEY (`idEmail`) REFERENCES `Email` (`id`)
);
