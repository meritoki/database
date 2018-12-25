SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `AgentEmail`;
SET foreign_key_checks = 1;
CREATE TABLE `AgentEmail` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAgent` bigint(20) UNSIGNED NOT NULL,
    `idEmail` bigint(20) UNSIGNED NOT NULL,
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAgent`) REFERENCES user.`Agent` (`id`),
    FOREIGN KEY (`idEmail`) REFERENCES `Email` (`id`)
);
