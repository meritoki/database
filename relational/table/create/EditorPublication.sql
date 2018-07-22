SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `EditorPublication`;
SET foreign_key_checks = 1;
CREATE TABLE `EditorPublication` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idEditor` bigint(20) UNSIGNED NOT NULL,
  `idPublication` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idEditor`) REFERENCES `Editor`(id),
  FOREIGN KEY (`idPublication`) REFERENCES `Publication`(id)
)