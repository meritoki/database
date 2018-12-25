SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `DonorPhone`;
SET foreign_key_checks = 1;
CREATE TABLE `DonorPhone` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idDonor` bigint(20) UNSIGNED NOT NULL,
    `idPhone` bigint(20) UNSIGNED NOT NULL,
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idDonor`) REFERENCES user.`Donor` (`id`),
    FOREIGN KEY (`idPhone`) REFERENCES `Phone` (`id`)
);
