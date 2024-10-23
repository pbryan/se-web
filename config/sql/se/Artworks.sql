CREATE TABLE IF NOT EXISTS `Artworks` (
  `ArtworkId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ArtistId` int(10) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `UrlName` varchar(255) NOT NULL,
  `CompletedYear` smallint unsigned NULL,
  `CompletedYearIsCirca` boolean NOT NULL DEFAULT FALSE,
  `Created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated` timestamp NOT NULL,
  `Status` enum('unverified', 'approved', 'declined', 'in_use') DEFAULT 'unverified',
  `SubmitterUserId` int(10) unsigned NULL,
  `ReviewerUserId` int(10) unsigned NULL,
  `MuseumUrl` varchar(255) NULL,
  `PublicationYear` smallint unsigned NULL,
  `PublicationYearPageUrl` varchar(255) NULL,
  `CopyrightPageUrl` varchar(255) NULL,
  `ArtworkPageUrl` varchar(255) NULL,
  `IsPublishedInUs` tinyint(1) NOT NULL DEFAULT FALSE,
  `EbookUrl` varchar(255) NULL,
  `MimeType` enum('image/jpeg', 'image/png', 'image/bmp', 'image/tiff') NOT NULL,
  `Exception` TEXT NULL DEFAULT NULL,
  `Notes` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ArtworkId`),
  KEY `index1` (`Status`),
  KEY `index2` (`UrlName`),
  KEY `index3` (`ArtistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
