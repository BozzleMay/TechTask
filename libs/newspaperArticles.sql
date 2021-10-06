


    CREATE TABLE StagingData
    (  
      `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionid` int(11) DEFAULT NULL,
  `section name` varchar(50) DEFAULT NULL,
    `title` varchar(50) DEFAULT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

    

TRUNCATE table StagingData

BULK
INSERT StagingData
FROM 'newspaperData.csv'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)
GO