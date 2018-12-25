SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `AgentPhone`;
SET foreign_key_checks = 1;
CREATE TABLE `AgentPhone` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAgent` bigint(20) UNSIGNED NOT NULL,
    `idPhone` bigint(20) UNSIGNED NOT NULL,
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAgent`) REFERENCES user.`Agent` (`id`),
    FOREIGN KEY (`idPhone`) REFERENCES `Phone` (`id`)
);
