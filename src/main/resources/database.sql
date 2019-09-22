CREATE TABLE USER_MESSAGES (
    ID BIGINT NOT NULL AUTO_INCREMENT,
    USERNAME varchar(255) NOT NULL,
    PHONE_NO varchar(255) NOT NULL,
    EMAIL varchar(255) NOT NULL,
    SUBJECT VARCHAR(255) NOT NULL,
    MESSAGE VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID)
);


CREATE TABLE `MAKEUP_BLOG_POSTS` (
  `post_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_date` datetime NOT NULL,
  `post_status` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT 'draft',
  `article_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_article_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_blob` LONGBLOB,
  PRIMARY KEY (`post_ID`)
);

CREATE TABLE `IMAGE_GALLERY` (
  `IMAGE_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UPLOAD_DATE` datetime NOT NULL,
  `IMAGE_CATEGORY` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT 'draft',
  `IMAGE` LONGBLOB,
  PRIMARY KEY (`IMAGE_ID`)
);


drop table USER_MESSAGES;