

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO tbladmin VALUES
("1","Test","admin","7894561238","test@gmail.com","5f4dcc3b5aa765d61d8327deb882cf99","2021-08-29 00:00:00");




CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(180) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `categoryName` (`categoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


INSERT INTO tblcategory VALUES
("1","Grocery","2021-09-16 22:15:07"),
("2","Electronics","2021-09-16 22:16:03"),
("3","Other","2021-09-22 10:41:47"),
("5","kirana","2022-05-15 12:54:14");




CREATE TABLE `tblexpense` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


INSERT INTO tblexpense VALUES
("1","1","2021-09-19","Grocery","Tea","120","2021-09-22 21:58:16"),
("2","1","2021-09-19","Electronics","Mobile","10000","2021-09-22 21:58:39"),
("3","1","2021-09-20","Other","Test Product","100","2021-09-22 22:01:10"),
("4","1","2021-09-22","Grocery","Milk","25","2021-09-22 23:04:11"),
("5","3","2022-05-15","Grocery","chicken","220","2022-05-15 12:55:11");




CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO tbluser VALUES
("1","Test","anujk30@gmail.com","9632587410","5f4dcc3b5aa765d61d8327deb882cf99","2021-09-22 21:57:29"),
("2","John Doe","jondeo@test.com","1234567890","5f4dcc3b5aa765d61d8327deb882cf99","2021-09-24 06:56:32"),
("3","chiru","chiru15326@gmail.com","9676111653","5f4dcc3b5aa765d61d8327deb882cf99","2022-05-15 12:54:51");


