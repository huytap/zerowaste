ALTER TABLE `stores` ADD `photo` VARCHAR(128) NOT NULL AFTER `description`;
ALTER TABLE `store_brands` ADD `city` VARCHAR(128) NOT NULL AFTER `district`;
ALTER TABLE "categories" DROP "store_id";
ALTER TABLE `categories` ADD `description` TEXT NOT NULL AFTER `name`, ADD `photo` VARCHAR(128) NOT NULL AFTER `description`, ADD `category` VARCHAR(32) NOT NULL AFTER `photo`;
