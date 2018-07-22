/*
Name: management.sql
Author: Joaquin Rodriguez
Date: 20150624
*/
CREATE DATABASE IF NOT EXISTS web;
USE web;

source ./relational/table/create/Account.sql
source ./relational/table/create/User.sql
source ./relational/table/create/Client.sql
source ./relational/table/create/Code.sql
source ./relational/table/create/Email.sql
source ./relational/table/create/Identification.sql
source ./relational/table/create/Location.sql
source ./relational/table/create/Organization.sql
source ./relational/table/create/Phone.sql
source ./relational/table/create/Token.sql
source ./relational/table/create/Image.sql
source ./relational/table/create/Document.sql

source ./relational/table/create/Administrator.sql

source ./relational/table/create/Producer.sql

source ./relational/table/create/Consumer.sql
source ./relational/table/create/ConsumerEmail.sql
source ./relational/table/create/ConsumerIdentification.sql
source ./relational/table/create/ConsumerPhone.sql
source ./relational/table/create/ConsumerLocation.sql
source ./relational/table/create/ConsumerCustomer.sql
source ./relational/table/create/CustomerCard.sql

source ./relational/table/create/Follower.sql

source ./relational/table/create/Family.sql
source ./relational/table/create/Relationship.sql

source ./relational/table/create/Leader.sql
source ./relational/table/create/LeaderFollower.sql

source ./relational/table/create/Member.sql

source ./relational/table/create/Merchant.sql
source ./relational/table/create/MerchantCustomer.sql
source ./relational/table/create/MerchantLocation.sql
source ./relational/table/create/MerchantPhone.sql

source ./relational/table/create/Organization.sql
source ./relational/table/create/OrganizationEmail.sql
source ./relational/table/create/OrganizationLocation.sql
source ./relational/table/create/OrganizationMember.sql
source ./relational/table/create/OrganizationPhone.sql
source ./relational/table/create/OrganizationPublisher.sql
source ./relational/table/create/OrganizationAdministrator.sql

source ./relational/table/create/Publisher.sql
source ./relational/table/create/Publication.sql
source ./relational/table/create/PublisherPublication.sql
source ./relational/table/create/PublisherViewer.sql

source ./relational/table/create/Viewer.sql


