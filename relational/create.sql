/*
	Name create.sql
	Author Joaquin Osvaldo Rodriguez
	Date 20181201

	Requires all scripts are in respective folders
	and the sql is valid
*/

/*
	auth
*/
CREATE DATABASE IF NOT EXISTS auth;
USE auth;
source ./relational/table/create/auth/Account.sql
source ./relational/table/create/auth/User.sql
source ./relational/table/create/auth/Client.sql
source ./relational/table/create/auth/Code.sql
source ./relational/table/create/auth/Token.sql
/*
	user
*/
CREATE DATABASE IF NOT EXISTS user;
USE user;
source ./relational/table/create/user/Organization.sql
source ./relational/table/create/user/Consumer.sql
source ./relational/table/create/user/Agent.sql
source ./relational/table/create/user/Donor.sql
source ./relational/table/create/user/Administrator.sql
source ./relational/table/create/user/Merchant.sql
source ./relational/table/create/user/Customer.sql
/*
	id
*/
CREATE DATABASE IF NOT EXISTS id;
USE id;
source ./relational/table/create/id/Identification.sql
source ./relational/table/create/id/ConsumerIdentification.sql
source ./relational/table/create/id/DonorIdentification.sql
/*
	location
*/
CREATE DATABASE IF NOT EXISTS location;
USE location;
source ./relational/table/create/location/Location.sql
source ./relational/table/create/location/MerchantLocation.sql
source ./relational/table/create/location/AgentLocation.sql
source ./relational/table/create/location/ConsumerLocation.sql
source ./relational/table/create/location/DonorLocation.sql
source ./relational/table/create/location/OrganizationLocation.sql
/*
	lang
*/
CREATE DATABASE IF NOT EXISTS lang;
USE lang;
source ./relational/table/create/lang/Language.sql
#source ./relational/table/create/lang/UserLanguage.sql
/*
	file
*/
CREATE DATABASE IF NOT EXISTS `file`;
USE `file`;
source ./relational/table/create/file/Image.sql
source ./relational/table/create/file/Document.sql
#source ./relational/table/create/file/Video.sql
/*
	msg
*/
CREATE DATABASE IF NOT EXISTS msg;
USE msg;
source ./relational/table/create/msg/Phone.sql
source ./relational/table/create/msg/AdministratorPhone.sql
source ./relational/table/create/msg/AgentPhone.sql
source ./relational/table/create/msg/ConsumerPhone.sql
source ./relational/table/create/msg/MerchantPhone.sql
source ./relational/table/create/msg/DonorPhone.sql
source ./relational/table/create/msg/Email.sql
source ./relational/table/create/msg/AdministratorEmail.sql
source ./relational/table/create/msg/AgentEmail.sql
source ./relational/table/create/msg/ConsumerEmail.sql
source ./relational/table/create/msg/MerchantEmail.sql
source ./relational/table/create/msg/DonorEmail.sql
/*
	card
*/
CREATE DATABASE IF NOT EXISTS card;
USE card;
source ./relational/table/create/card/Card.sql
source ./relational/table/create/card/CustomerCard.sql
source ./relational/table/create/card/DonorCard.sql
/*
	bank
*/
/*
CREATE DATABASE IF NOT EXISTS bank;
USE bank;
source ./relational/table/create/bank/Bank.sql
source ./relational/table/create/bank/BankMerchant.sql
source ./relational/table/create/bank/DonorCustomer.sql
source ./relational/table/create/bank/MerchantCustomer.sql
source ./relational/table/create/bank/Token.sql
source ./relational/table/create/bank/CardToken.sql
source ./relational/table/create/bank/Transaction.sql
*/
/*
	org
*/
/*
CREATE DATABASE IF NOT EXISTS org;
USE org;
source ./relational/table/create/org/OrganizationAdministrator.sql
*/
