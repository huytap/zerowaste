ALTER TABLE `stores` ADD `photo` VARCHAR(128) NOT NULL AFTER `description`;
ALTER TABLE `store_brands` ADD `city` VARCHAR(128) NOT NULL AFTER `district`;
--ALTER TABLE "categories" DROP "store_id";
ALTER TABLE `categories` ADD `description` TEXT NOT NULL AFTER `name`, ADD `photo` VARCHAR(128) NOT NULL AFTER `description`, ADD `category` VARCHAR(32) NOT NULL AFTER `photo`;
ALTER TABLE `categories` ADD `store_id` text not NULL AFTER `category`;
ALTER TABLE `news_categories` CHANGE `name` `name` VARCHAR(128) NOT NULL;
ALTER TABLE `news` ADD `photo` VARCHAR(128) NOT NULL AFTER `name`;
ALTER TABLE `news` CHANGE `date` `date` VARCHAR(128) NOT NULL;
ALTER TABLE `news` CHANGE `link` `link` VARCHAR(255) NOT NULL;
ALTER TABLE `news` ADD `address` VARCHAR(255) NOT NULL AFTER `description`;
/*07/08/2020*/
ALTER TABLE `stores` ADD `store_category_id` VARCHAR(128) NOT NULL AFTER `id`;
ALTER TABLE `stores` ADD `youtube` VARCHAR(256) NOT NULL AFTER `instagram`, ADD `shopee` VARCHAR(256) NOT NULL AFTER `youtube`, ADD `lazada` VARCHAR(256) NOT NULL AFTER `shopee`, ADD `email` VARCHAR(128) NOT NULL AFTER `lazada`;
ALTER TABLE `galleries` CHANGE `hotel_id` `store_id` INT(11) NOT NULL;
/*30-08*/
ALTER TABLE `contact` CHANGE `connect` `website` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
/*28-9*/
ALTER TABLE `store_brands` ADD `address_photo` VARCHAR(128) NOT NULL AFTER `phone`;
/*30-9*/
ALTER TABLE `galleries` CHANGE `roomtype_id` `product_id` INT(11) NOT NULL;
/*2-10*/
ALTER TABLE `news` ADD `large_photo` VARCHAR(128) NOT NULL AFTER `photo`;
