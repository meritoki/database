SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `ConsumerCustomer`;
SET foreign_key_checks = 1;
CREATE TABLE `ConsumerCustomer` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idConsumer` bigint(20) UNSIGNED NOT NULL,
  `idCustomer` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idConsumer`) REFERENCES `Consumer`(id),
  FOREIGN KEY (`idCustomer`) REFERENCES `Customer`(id)
)