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
/*18/12/2020*/
ALTER TABLE `store_brands` ADD `lat` DECIMAL NOT NULL AFTER `address_photo`, ADD `lng` DECIMAL NOT NULL AFTER `lat`;
ALTER TABLE `news` ADD `added_date` DATETIME NOT NULL AFTER `status`;
/*30/3/2021*/
ALTER TABLE `stores` ADD `logo` VARCHAR(128) NOT NULL AFTER `description`;
/*16/04/2021*/
ALTER TABLE `categories` ADD `field_custom_1` TEXT NOT NULL AFTER `store_id`, ADD `field_custom_2` TEXT NOT NULL AFTER `field_custom_1`;
ALTER TABLE `categories` ADD `slug` VARCHAR(128) NOT NULL AFTER `name`;


ALTER TABLE `categories` ADD `avatar` VARCHAR(128) NOT NULL AFTER `photo`;
ALTER TABLE `categories` ADD `review_description` TEXT NOT NULL AFTER `description`;

ALTER TABLE `users` CHANGE `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, CHANGE `added_date` `added_date` DATETIME NULL, CHANGE `updated_date` `updated_date` DATETIME NULL, CHANGE `updated_by` `updated_by` INT(11) NULL, CHANGE `last_login_date` `last_login_date` DATETIME NULL, CHANGE `cellphone` `cellphone` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, CHANGE `remarks` `remarks` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL, CHANGE `ip_address` `ip_address` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, CHANGE `hotel_id` `hotel_id` INT(11) NULL, CHANGE `password_reset_token` `password_reset_token` VARCHAR(728) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, CHANGE `gender` `gender` ENUM('male','female') CHARACTER SET utf8 COLLATE utf8_general_ci NULL;
