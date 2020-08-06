ALTER TABLE `stores` ADD `photo` VARCHAR(128) NOT NULL AFTER `description`;
ALTER TABLE `store_brands` ADD `city` VARCHAR(128) NOT NULL AFTER `district`;
ALTER TABLE "categories" DROP "store_id";
ALTER TABLE `categories` ADD `description` TEXT NOT NULL AFTER `name`, ADD `photo` VARCHAR(128) NOT NULL AFTER `description`, ADD `category` VARCHAR(32) NOT NULL AFTER `photo`;
ALTER TABLE `categories` ADD `store_id` text not NULL AFTER `category`;
ALTER TABLE `news_categories` CHANGE `name` `name` VARCHAR(128) NOT NULL;
ALTER TABLE `news` ADD `photo` VARCHAR(128) NOT NULL AFTER `name`;
ALTER TABLE `news` CHANGE `date` `date` VARCHAR(128) NOT NULL;
ALTER TABLE `news` CHANGE `link` `link` VARCHAR(255) NOT NULL;
ALTER TABLE `news` ADD `address` VARCHAR(255) NOT NULL AFTER `description`;
