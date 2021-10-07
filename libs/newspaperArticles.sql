 CREATE TABLE tempTable
    (  
      `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionid` int(11) DEFAULT NULL,
  `section name` varchar(50) DEFAULT NULL,
    `title` varchar(50) DEFAULT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

CREATE TABLE articles (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionid` int(11) DEFAULT NULL,
    `title` varchar(50) DEFAULT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

CREATE TABLE sections (

   `id` int(11) NOT NULL AUTO_INCREMENT,
  `section name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

