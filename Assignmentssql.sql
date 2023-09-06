show databases;
create database population;
use population;
CREATE TABLE city_info (
    ID int,
    cityname VARCHAR(17),
    countrycode VARCHAR(3),
    district VARCHAR(20),
    population int
);
select * from city_info;

insert into city_info (ID,cityname,countrycode,district,population) values
 ('19','Zaanstad','NLD','Noord-Holland','135621'),
 ('214','Porto Alegre','BRA','Rio Grande do Sul','1314032'),
 ('397','Lauro de Freitas','BRA','Bahia','109236'),
 ('547','Dobric','BGR','Varna','100399'),
 ('552','Bujumbura','BDI','Bujumbura','300000'),
 ('554','Santiago de Chile','CHL','Santiago','4703954'),
 ('626','al-Minya','EGY','al-Minya','201360'),
 ('646','Santa Ana','SLV','Santa Ana','139389'),
 ('762','Bahir','Dar','ETH Amhara','96140'),
 ('796','Baguio','PHL','CAR','252386'),
 ('896','Malungon','PHL','Southern Mindanao','93232'),
 ('904','Banjul','GMB','Banjul','42326'),
 ('924','Villa','GTM','Nueva','101295'),
 ('990','Waru','IDN','East Java','124300'),
 ('1155','Latur','IND','Maharashtra','197408'),
 ('1222','Tenali','IND','Andhra Pradesh','143726'),
 ('1235','Tirunelveli','IND','Tamil Nadu','135825'),
 ('1256','Alandur','IND','Tamil Nadu','125244'),
 ('1279','Neyveli','IND','Tamil Nadu','118080'),
 ('1293','Pallavaram','IND','Tamil Nadu','111866'),
 ('1350','Dehri','IND','Bihar','94526'),
 ('1383','Tabriz','IRN','East Azerbaidzan','1191043'),
 ('1385','Karaj','IRN','Teheran','940968'),
 ('1508','Bolzano','ITA','Trentino-Alto Adige','97232'),
 ('1520','Cesena','ITA','Emilia-Romagna','89852'),
 ('1613','Neyagawa','JPN','Osaka','257315'),
 ('1630','Ageo','JPN','Saitama','209442'),
 ('1661','Sayama','JPN','Saitama','162472'),
 ('1681','Omuta','JPN','Fukuoka','142889'),
 ('1739','Tokuyama','JPN','Yamaguchi','107078'),
 ('1793','Novi Sad','YUG','Vojvodina','179626'),
 ('1857','Kelowna','CAN','British Colombia','89442'),
 ('1895','Harbin','CHN','Heilongjiang','4289800'),
 ('1900','Changchun','CHN','Jilin','2812000'),
 ('1913','Lanzhou','CHN','Gansu','1565800'),
 ('1947','Changzhou','CHN','Jiangsu','530000'),
 ('2070','Dezhou','CHN','Shandong','195485'),
 ('2081','Heze','CHN','Shandong','189293'),
 ('2111','Chenzhou','CHN','Hunan','169400'),
 ('2153','Xianning','CHN','Hubei','136811'),
 ('2192','Lhasa','CHN','Tibet','120000'),
 ('2193','Lianyuan','CHN','Hunan','118858'),
 ('2227','Xingcheng','CHN','Liaoning','102384'),
 ('2273','Villavicencio','COL','Meta','273140'),
 ('2384','Tong-yong','KOR','Kyongsangnam','131717'),
 ('2386','Yongju','KOR','Kyongsangbuk','131097'),
 ('2387','Chinhae','KOR','Kyongsangnam','125997'),
 ('2388','Sangju','KOR','Kyongsangbuk','124116'),
 ('2406','Herakleion','GRC','Crete','116178'),
 ('2440','Monrovia','LBR','Montserrado','850000'),
 ('2462','Lilongwe','MWI','Lilongwe','435964'),
 ('2505','Taza','MAR','Taza-Al Hoceima-Taou','92700'),
 ('2555','Xalapa','MEX','Veracruz','390058'),
 ('2602','Ocosingo','MEX','Chiapas','171495'),
 ('2609','Nogales','MEX','Sonora','159103'),
 ('2670','San Pedro Cholula','MEX','Puebla','99734'),
 ('2689','Palikir','FSM','Pohnpei','8600'),
 ('2706','Tete','MOZ','Tete','101984'),
 ('2716','Sittwe (Akyab)','MMR','Rakhine','137600'),
 ('2922','Carolina','PRI','Carolina','186076'),
 ('2967','Grudziadz','POL','Kujawsko-Pomorskie','102434'),
 ('2972','Malabo','GNQ','Bioko','40000'),
 ('3073','Essen','DEU','Nordrhein-Westfalen','599515'),
 ('3169','Apia','WSM','Upolu','35900'),
 ('3198','Dakar','SEN','Cap-Vert','785071'),
 ('3253','Hama','SYR','Hama','343361'),
 ('3288','Luchou','TWN','Taipei','160516'),
 ('3309','Tanga','TZA','Tanga','137400'),
 ('3353','Sousse','TUN','Sousse','145900'),
 ('3377','Kahramanmaras','TUR','Kahramanmaras','245772'),
 ('3430','Odesa','UKR','Odesa','1011000'),
 ('3581','St Petersburg','RUS','Pietari','4694000'),
 ('3770','Hanoi','VNM','Hanoi','1410000'),
 ('3815','El Paso','USA','Texas','563662'),
 ('3878','Scottsdale','USA','Arizona','202705'),
 ('3965','Corona','USA','California','124966'),
 ('3973','Concord','USA','California','121780'),
 ('3977','Cedar Rapids','USA','Iowa','120758'),
 ('3982','Coral Springs','USA','Florida','117549'),
 ('4054','Fairfield','USA','California','92256'),
 ('4058','Boulder','USA','Colorado','91238'),
 ('4061','Fall River','USA','Massachusetts','90555');
 
/*Q1. Query all columns for all American cities in the CITY table with populations larger than 100000.
  */
  
SELECT * FROM city_info WHERE countrycode = 'USA'  AND population > 100000;




/* Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000.
The CountryCode for America is USA.*/

select cityname from city_info where countrycode='USA' and population>120000;





# Q3. Query all columns (attributes) for every row in the CITY table.

SELECT * FROM city_info;




# Q4. Query all columns for a city in CITY with the ID 1661.

select * from city_info where ID=1661;




# Q.5 Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is

select * from city_info where countrycode='JPN';




# Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

select cityname from city_info where countrycode='JPN';


CREATE TABLE station_table (
    ID int,
    city VARCHAR(21),
    state VARCHAR(50),
    Lat_N int,
    Long_W int    
);

drop table station_table;
CREATE TABLE station_table (
    ID int,
    city VARCHAR(21),
    state VARCHAR(50),
    Lat_N int,
    Long_W int    
);

insert into station_table (ID,city,state,Lat_N,Long_W) values	
 ('794', 'Kissee Mills', 'MO', '139', '73'),	
 ('824', 'Loma Mar', 'CA', '48', '130'),	
 ('603', 'Sandy Hook', 'CT', '72', '148'),	
 ('478', 'Tipton', 'IN', '33', '97'),	
 ('619', 'Arlington', 'CO', '75', '92'),	
 ('711', 'Turner', 'AR', '50', '101'),	
 ('839', 'Slidell', 'LA', '85', '151'),	
 ('411', 'Negreet', 'LA', '98', '105'),	
 ('588', 'Glencoe', 'KY', '46', '136'),	
 ('665', 'Chelsea', 'IA', '98', '59'),	
 ('342', 'Chignik Lagoon', 'AK', '103', '153'),	
 ('733', 'Pelahatchie', 'MS', '38', '28'),	
 ('441', 'Hanna City', 'IL', '50', '136'),	
 ('811', 'Dorrance', 'KS', '102', '121'),	
 ('698', 'Albany', 'CA', '49', '80'),	
 ('325', 'Monument', 'KS', '70', '141'),	
 ('414', 'Manchester', 'MD', '73', '37'),	
 ('113', 'Prescott', 'IA', '39', '65'),	
 ('971', 'Graettinger', 'IA', '94', '150'),	
 ('266', 'Cahone', 'CO', '116', '127'),	
 ('617', 'Sturgis', 'MS', '36', '126'),	
 ('495', 'Upperco', 'MD', '114', '29'),	
 ('473', 'Highwood', 'IL', '27', '150'),	
 ('959', 'Waipahu', 'HI', '106', '33'),	
 ('438', 'Bowdon', 'GA', '88', '78'),	
 ('571', 'Tyler', 'MN', '133', '58'),	
 ('92', 'Watkins', 'CO', '83', '96'),	
 ('399', 'Republic', 'MI', '75', '130'),	
 ('426', 'Millville', 'CA', '32', '145'),	
 ('844', 'Aguanga', 'CA', '79', '65'),	
 ('321', 'Bowdon Junction', 'GA', '85', '33'),	
 ('606', 'Morenci', 'AZ', '104', '110'),	
 ('957', 'South El Monte', 'CA', '74', '79'),	
 ('833', 'Hoskinston', 'KY', '65', '65'),	
 ('843', 'Talbert', 'KY', '39', '58'),	
 ('166', 'Mccomb', 'MS', '74', '42'),	
 ('339', 'Kirk', 'CO', '141', '136'),	
 ('909', 'Carlock', 'IL', '117', '84'),	
 ('829', 'Seward', 'IL', '72', '90'),	
 ('766', 'Gustine', 'CA', '111', '140'),	
 ('392', 'Delano', 'CA', '126', '91'),	
 ('555', 'Westphalia', 'MI', '32', '143'),	
 ('33', 'Saint Elmo', 'AL', '27', '50'),	
 ('728', 'Roy', 'MT', '41', '51'),	
 ('656', 'Pattonsburg', 'MO', '138', '32'),	
 ('394', 'Centertown', 'MO', '133', '93'),	
 ('366', 'Norvell', 'MI', '125', '93'),	
 ('96', 'Raymondville', 'MO', '70', '148'),	
 ('867', 'Beaver Island', 'MI', '81', '164'),	
 ('977', 'Odin', 'IL', '53', '115'),	
 ('741', 'Jemison', 'AL', '62', '25'),	
 ('436', 'West Hills', 'CA', '68', '73'),	
 ('323', 'Barrigada', 'GU', '60', '147'),	
 ('3', 'Hesperia', 'CA', '106', '71'),	
 ('814', 'Wickliffe', 'KY', '80', '46'),	
 ('375', 'Culdesac', '"ID"', '47', '78'),	
 ('467', 'Roselawn', 'IN', '87', '51'),	
 ('604', 'Forest Lakes', 'AZ', '144', '114'),	
 ('551', 'San Simeon', 'CA', '37', '28'),	
 ('706', 'Little Rock', 'AR', '122', '121'),	
 ('647', 'Portland', 'AR', '83', '44'),	
 ('25', 'New Century', 'KS', '135', '79'),	
 ('250', 'Hampden', 'MA', '76', '26'),	
 ('124', 'Pine City', 'MN', '119', '129'),	
 ('547', 'Sandborn', 'IN', '55', '93'),	
 ('701', 'Seaton', 'IL', '128', '78'),	
 ('197', 'Milledgeville', 'IL', '90', '113'),	
 ('613', 'East China', 'MI', '108', '42'),	
 ('630', 'Prince Frederick', 'MD', '104', '57'),	
 ('767', 'Pomona Park', 'FL', '100', '163'),	
 ('679', 'Gretna', 'LA', '75', '142'),	
 ('896', 'Yazoo City', 'MS', '95', '85'),	
 ('403', 'Zionsville', 'IN', '57', '36'),	
 ('519', 'Rio Oso', 'CA', '29', '105'),	
 ('482', 'Jolon', 'CA', '66', '52'),	
 ('252', 'Childs', 'MD', '92', '104'),	
 ('600', 'Shreveport', 'LA', '136', '38'),	
 ('14', 'Forest', 'MS', '120', '50'),	
 ('260', 'Sizerock', 'KY', '116', '112'),	
 ('65', 'Buffalo Creek', 'CO', '47', '148'),	
 ('753', 'Algonac', 'MI', '118', '80'),	
 ('174', 'Onaway', 'MI', '108', '55'),	
 ('263', 'Irvington', 'IL', '96', '68'),	
 ('253', 'Winsted', 'MN', '68', '72'),	
 ('557', 'Woodbury', 'GA', '102', '93'),	
 ('897', 'Samantha', 'AL', '75', '35'),	
 ('98', 'Hackleburg', 'AL', '119', '120'),	
 ('423', 'Soldier', 'KS', '77', '152'),	
 ('361', 'Arrowsmith', 'IL', '28', '109'),	
 ('409', 'Columbus', 'GA', '67', '46'),	
 ('312', 'Bentonville', 'AR', '36', '78'),	
 ('854', 'Kirkland', 'AZ', '86', '57'),	
 ('160', 'Grosse Pointe', 'MI', '102', '91'),	
 ('735', 'Wilton', 'ME', '56', '157'),	
 ('608', 'Busby', 'MT', '104', '29'),	
 ('122', 'Robertsdale', 'AL', '97', '85'),	
 ('93', 'Dale', 'IN', '69', '34'),	
 ('67', 'Reeds', 'MO', '30', '42'),	
 ('906', 'Hayfork', 'CA', '35', '116'),	
 ('34', 'Mcbrides', 'MI', '74', '35'),	
 ('921', 'Lee Center', 'IL', '95', '77'),	
 ('401', 'Tennessee', 'IL', '55', '155'),	
 ('536', 'Henderson', 'IA', '77', '77'),	
 ('953', 'Udall', 'KS', '112', '59'),	
 ('370', 'Palm Desert', 'CA', '106', '145'),	
 ('614', 'Benedict', 'KS', '138', '95'),	
 ('998', 'Oakfield', 'ME', '47', '132'),	
 ('805', 'Tamms', 'IL', '59', '75'),	
 ('235', 'Haubstadt', 'IN', '27', '32'),	
 ('820', 'Chokio', 'MN', '81', '134'),	
 ('650', 'Clancy', 'MT', '45', '164'),	
 ('791', 'Scotts Valley', 'CA', '119', '90'),	
 ('324', 'Norwood', 'MN', '144', '34'),	
 ('442', 'Elkton', 'MD', '103', '156'),	
 ('633', 'Bertha', 'MN', '39', '105'),	
 ('109', 'Bridgeport', 'MI', '50', '79'),	
 ('780', 'Cherry', 'IL', '68', '46'),	
 ('492', 'Regina', 'KY', '131', '90'),	
 ('965', 'Griffin', 'GA', '38', '151'),	
 ('778', 'Pine Bluff', 'AR', '60', '145'),	
 ('337', 'Mascotte', 'FL', '121', '146'),	
 ('259', 'Baldwin', 'MD', '81', '40'),	
 ('955', 'Netawaka', 'KS', '109', '119'),	
 ('752', 'East Irvine', 'CA', '106', '115'),	
 ('886', 'Pony', 'MT', '99', '162'),	
 ('200', 'Franklin', 'LA', '82', '31'),	
 ('384', 'Amo', 'IN', '103', '159'),	
 ('518', 'Vulcan', 'MO', '108', '91'),	
 ('188', 'Prairie Du Rocher', 'IL', '75', '70'),	
 ('161', 'Alanson', 'MI', '90', '72'),	
 ('486', 'Delta', 'LA', '136', '49'),	
 ('406', 'Carver', 'MN', '45', '122'),	
 ('940', 'Paron', 'AR', '59', '104'),	
 ('237', 'Winchester', '"ID"', '38', '80'),	
 ('465', 'Jerome', 'AZ', '121', '34'),	
 ('591', 'Baton Rouge', 'LA', '129', '71'),	
 ('570', 'Greenview', 'CA', '80', '57'),	
 ('429', 'Lucerne Valley', 'CA', '35', '48'),	
 ('278', 'Cromwell', 'MN', '128', '53'),	
 ('927', 'Quinter', 'KS', '59', '25'),	
 ('59', 'Whitewater', 'MO', '82', '71'),	
 ('218', 'Round Pond', 'ME', '127', '124'),	
 ('291', 'Clarkdale', 'AZ', '58', '73'),	
 ('668', 'Rockton', 'IL', '116', '86'),	
 ('682', 'Pheba', 'MS', '90', '127'),	
 ('775', 'Eleele', 'HI', '80', '152'),	
 ('527', 'Auburn', 'IA', '95', '137'),	
 ('108', 'North Berwick', 'ME', '70', '27'),	
 ('190', 'Oconee', 'GA', '92', '119'),	
 ('232', 'Grandville', 'MI', '38', '70'),	
 ('405', 'Susanville', 'CA', '128', '80'),	
 ('273', 'Rosie', 'AR', '72', '161'),	
 ('813', 'Verona', 'MO', '109', '152'),	
 ('444', 'Richland', 'GA', '105', '113'),	
 ('899', 'Fremont', 'MI', '54', '150'),	
 ('738', 'Philipsburg', 'MT', '95', '72'),	
 ('215', 'Kensett', 'IA', '55', '139'),	
 ('743', 'De Tour Village', 'MI', '25', '25'),	
 ('377', 'Koleen', 'IN', '137', '110'),	
 ('727', 'Winslow', 'IL', '113', '38'),	
 ('363', 'Reasnor', 'IA', '41', '162'),	
 ('117', 'West Grove', 'IA', '127', '99'),	
 ('420', 'Frankfort Heights', 'IL', '71', '30'),	
 ('888', 'Bono', 'AR', '133', '150'),	
 ('784', 'Biggsville', 'IL', '85', '138'),	
 ('413', 'Linthicum Heights', 'MD', '127', '67'),	
 ('695', 'Amazonia', 'MO', '45', '148'),	
 ('609', 'Marysville', 'MI', '85', '132'),	
 ('471', 'Cape Girardeau', 'MO', '73', '90'),	
 ('649', 'Pengilly', 'MN', '25', '154'),	
 ('946', 'Newton Center', 'MA', '48', '144'),	
 ('380', 'Crane Lake', 'MN', '72', '43'),	
 ('383', 'Newbury', 'MA', '128', '85'),	
 ('44', 'Kismet', 'KS', '99', '156'),	
 ('433', 'Canton', 'ME', '98', '105'),	
 ('283', 'Clipper Mills', 'CA', '113', '56'),	
 ('474', 'Grayslake', 'IL', '61', '33'),	
 ('233', 'Pierre Part', 'LA', '52', '90'),	
 ('990', 'Bison', 'KS', '132', '74'),	
 ('502', 'Bellevue', 'KY', '127', '121'),	
 ('327', 'Ridgway', 'CO', '77', '110'),	
 ('4', 'South Britain', 'CT', '65', '33'),	
 ('228', 'Rydal', 'GA', '35', '78'),	
 ('642', 'Lynnville', 'KY', '25', '146'),	
 ('885', 'Deerfield', 'MO', '40', '35'),	
 ('539', 'Montreal', 'MO', '129', '127'),	
 ('202', 'Hope', 'MN', '140', '43'),	
 ('593', 'Aliso Viejo', 'CA', '67', '131'),	
 ('521', 'Gowrie', 'IA', '130', '127'),	
 ('938', 'Andersonville', 'GA', '141', '72'),	
 ('919', 'Knob Lick', 'KY', '135', '33'),	
 ('528', 'Crouseville', 'ME', '36', '81'),	
 ('331', 'Cranks', 'KY', '55', '27'),	
 ('45', 'Rives Junction', 'MI', '94', '116'),	
 ('944', 'Ledyard', 'CT', '134', '143'),	
 ('949', 'Norway', 'ME', '83', '88'),	
 ('88', 'Eros', 'LA', '95', '58'),	
 ('878', 'Rantoul', 'KS', '31', '118'),	
 ('35', 'Richmond Hill', 'GA', '39', '113'),	
 ('17', 'Fredericktown', 'MO', '105', '112'),	
 ('447', 'Arkadelphia', 'AR', '98', '49'),	
 ('498', 'Glen Carbon', 'IL', '60', '140'),	
 ('351', 'Fredericksburg', 'IN', '44', '78'),	
 ('774', 'Manchester', 'IA', '129', '123'),	
 ('116', 'Mc Henry', 'MD', '93', '112'),	
 ('963', 'Eriline', 'KY', '93', '65'),	
 ('643', 'Wellington', 'KY', '100', '31'),	
 ('781', 'Hoffman Estates', 'IL', '129', '53'),	
 ('364', 'Howard Lake', 'MN', '125', '78'),	
 ('777', 'Edgewater', 'MD', '130', '72'),	
 ('15', 'Ducor', 'CA', '140', '102'),	
 ('910', 'Salem', 'KY', '86', '113'),	
 ('612', 'Sturdivant', 'MO', '93', '86'),	
 ('537', 'Hagatna', 'GU', '97', '151'),	
 ('970', 'East Haddam', 'CT', '115', '132'),	
 ('510', 'Eastlake', 'MI', '134', '38'),	
 ('354', 'Larkspur', 'CA', '107', '65'),	
 ('983', 'Patriot', 'IN', '82', '46'),	
 ('799', 'Corriganville', 'MD', '141', '153'),	
 ('581', 'Carlos', 'MN', '114', '66'),	
 ('825', 'Addison', 'MI', '96', '142'),	
 ('526', 'Tarzana', 'CA', '135', '81'),	
 ('176', 'Grapevine', 'AR', '92', '84'),	
 ('994', 'Kanorado', 'KS', '65', '85'),	
 ('704', 'Climax', 'MI', '127', '107'),	
 ('582', 'Curdsville', 'KY', '84', '150'),	
 ('884', 'Southport', 'CT', '59', '63'),	
 ('196', 'Compton', 'IL', '106', '99'),	
 ('605', 'Notasulga', 'AL', '66', '115'),	
 ('430', 'Rumsey', 'KY', '70', '50'),	
 ('234', 'Rogers', 'CT', '140', '33'),	
 ('700', 'Pleasant Grove', 'AR', '135', '145'),	
 ('702', 'Everton', 'MO', '119', '51'),	
 ('662', 'Skanee', 'MI', '70', '129'),	
 ('171', 'Springerville', 'AZ', '124', '150'),	
 ('615', 'Libertytown', 'MD', '144', '111'),	
 ('26', 'Church Creek', 'MD', '39', '91'),	
 ('692', 'Yellow Pine', '"ID"', '83', '150'),	
 ('336', 'Dumont', 'MN', '57', '129'),	
 ('464', 'Gales Ferry', 'CT', '104', '37'),	
 ('315', 'Ravenna', 'KY', '79', '106'),	
 ('505', 'Williams', 'AZ', '73', '111'),	
 ('842', 'Decatur', 'MI', '63', '161'),	
 ('982', 'Holbrook', 'AZ', '134', '103'),	
 ('868', 'Sherrill', 'AR', '79', '152'),	
 ('554', 'Brownsdale', 'MN', '52', '50'),	
 ('199', 'Linden', 'MI', '53', '32'),	
 ('453', 'Sedgwick', 'AR', '68', '75'),	
 ('451', 'Fort Atkinson', 'IA', '142', '140'),	
 ('950', 'Peachtree City', 'GA', '80', '155'),	
 ('326', 'Rocheport', 'MO', '114', '64'),	
 ('189', 'West Somerset', 'KY', '73', '45'),	
 ('638', 'Clovis', 'CA', '92', '138'),	
 ('156', 'Heyburn', '"ID"', '82', '121'),	
 ('861', 'Peabody', 'KS', '75', '152'),	
 ('722', 'Marion Junction', 'AL', '53', '31'),	
 ('428', 'Randall', 'KS', '47', '135'),	
 ('677', 'Hayesville', 'IA', '119', '42'),	
 ('183', 'Jordan', 'MN', '68', '35'),	
 ('322', 'White Horse  Beach', 'MA', '54', '59'),	
 ('827', 'Greenville', 'IL', '50', '153'),	
 ('242', 'Macy', 'IN', '138', '152'),	
 ('621', 'Flowood', 'MS', '64', '149'),	
 ('960', 'Deep River', 'IA', '75', '38'),	
 ('180', 'Napoleon', 'IN', '32', '160'),	
 ('382', 'Leavenworth', 'IN', '100', '121'),	
 ('853', 'Coldwater', 'KS', '47', '26'),	
 ('105', 'Weldon', 'CA', '134', '118'),	
 ('357', 'Yellville', 'AR', '35', '42'),	
 ('710', 'Turners Falls', 'MA', '31', '125'),	
 ('520', 'Delray Beach', 'FL', '27', '158'),	
 ('920', 'Eustis', 'FL', '42', '39'),	
 ('684', 'Mineral Point', 'MO', '91', '41'),	
 ('355', 'Weldona', 'CO', '32', '58'),	
 ('389', 'Midpines', 'CA', '106', '59'),	
 ('303', 'Cascade', '"ID"', '31', '157'),	
 ('501', 'Tefft', 'IN', '93', '150'),	
 ('673', 'Showell', 'MD', '44', '163'),	
 ('834', 'Bayville', 'ME', '106', '143'),	
 ('255', 'Brighton', 'IL', '107', '32'),	
 ('595', 'Grimes', 'IA', '42', '74'),	
 ('709', 'Nubieber', 'CA', '132', '49'),	
 ('100', 'North Monmouth', 'ME', '130', '78'),	
 ('522', 'Harmony', 'MN', '124', '126'),	
 ('16', 'Beaufort', 'MO', '71', '85'),	
 ('231', 'Arispe', 'IA', '31', '137'),	
 ('923', 'Union Star', 'MO', '79', '132'),	
 ('891', 'Humeston', 'IA', '74', '122'),	
 ('165', 'Baileyville', 'IL', '82', '61'),	
 ('757', 'Lakeville', 'CT', '59', '94'),	
 ('506', 'Firebrick', 'KY', '49', '95'),	
 ('76', 'Pico Rivera', 'CA', '143', '116'),	
 ('246', 'Ludington', 'MI', '30', '120'),	
 ('583', 'Channing', 'MI', '117', '56'),	
 ('666', 'West Baden Springs', 'IN', '30', '96'),	
 ('373', 'Pawnee', 'IL', '85', '81'),	
 ('504', 'Melber', 'KY', '37', '55'),	
 ('901', 'Manchester', 'MN', '71', '84'),	
 ('306', 'Bainbridge', 'GA', '62', '56'),	
 ('821', 'Sanders', 'AZ', '130', '96'),	
 ('586', 'Ottertail', 'MN', '100', '44'),	
 ('95', 'Dupo', 'IL', '41', '29'),	
 ('524', 'Montrose', 'CA', '136', '119'),	
 ('716', 'Schleswig', 'IA', '119', '51'),	
 ('849', 'Harbor Springs', 'MI', '141', '148'),	
 ('611', 'Richmond', 'IL', '113', '163'),	
 ('904', 'Ermine', 'KY', '119', '62'),	
 ('740', 'Siler', 'KY', '137', '117'),	
 ('439', 'Reeves', 'LA', '35', '51'),	
 ('57', 'Clifton', 'AZ', '30', '135'),	
 ('155', 'Casco', 'MI', '138', '109'),	
 ('755', 'Sturgis', 'MI', '117', '135'),	
 ('11', 'Crescent City', 'FL', '58', '117'),	
 ('287', 'Madisonville', 'LA', '112', '53'),	
 ('435', 'Albion', 'IN', '44', '121'),	
 ('672', 'Lismore', 'MN', '58', '103'),	
 ('572', 'Athens', 'IN', '75', '120'),	
 ('890', 'Eufaula', 'AL', '140', '103'),	
 ('975', 'Panther Burn', 'MS', '116', '164'),	
 ('914', 'Hanscom Afb', 'MA', '129', '136'),	
 ('119', 'Wildie', 'KY', '69', '111'),	
 ('540', 'Mosca', 'CO', '89', '141'),	
 ('678', 'Bennington', 'IN', '35', '26'),	
 ('208', 'Lottie', 'LA', '109', '82'),	
 ('512', 'Garland', 'ME', '108', '134'),	
 ('352', 'Clutier', 'IA', '61', '127'),	
 ('948', 'Lupton', 'MI', '139', '53'),	
 ('503', 'Northfield', 'MN', '61', '37'),	
 ('288', 'Daleville', 'AL', '121', '136'),	
 ('560', 'Osage City', 'KS', '110', '89'),	
 ('479', 'Cuba', 'MO', '63', '87'),	
 ('826', 'Norris', 'MT', '47', '37'),	
 ('651', 'Clopton', 'AL', '40', '84'),	
 ('143', 'Renville', 'MN', '142', '99'),	
 ('240', 'Saint Paul', 'KS', '66', '163'),	
 ('102', 'Kirksville', 'MO', '140', '143'),	
 ('69', 'Kingsland', 'AR', '78', '85'),	
 ('181', 'Fairview', 'KS', '80', '164'),	
 ('175', 'Lydia', 'LA', '41', '39'),	
 ('80', 'Bridgton', 'ME', '93', '140'),	
 ('596', 'Brownstown', 'IL', '48', '63'),	
 ('301', 'Monona', 'IA', '144', '81'),	
 ('987', 'Hartland', 'MI', '136', '107'),	
 ('973', 'Andover', 'CT', '51', '52'),	
 ('981', 'Lakota', 'IA', '56', '92'),	
 ('440', 'Grand Terrace', 'CA', '37', '126'),	
 ('110', 'Mesick', 'MI', '82', '108'),	
 ('396', 'Dryden', 'MI', '69', '47'),	
 ('637', 'Beverly', 'KY', '57', '126'),	
 ('566', 'MarineOnSaintCroix', 'MN', '126', '55'),	
 ('801', 'Pocahontas', 'IL', '109', '83'),	
 ('739', 'Fort Meade', 'FL', '43', '35'),	
 ('130', 'Hayneville', 'AL', '109', '157'),	
 ('345', 'Yoder', 'IN', '83', '143'),	
 ('851', 'Gatewood', 'MO', '76', '145'),	
 ('489', 'Madden', 'MS', '81', '99'),	
 ('223', 'Losantville', 'IN', '112', '106'),	
 ('538', 'Cheswold', 'DE', '31', '59'),	
 ('329', 'Caseville', 'MI', '102', '98'),	
 ('815', 'Pomona', 'MO', '52', '50'),	
 ('789', 'Hopkinsville', 'KY', '27', '47'),	
 ('269', 'Jack', 'AL', '49', '85'),	
 ('969', 'Dixie', 'GA', '27', '36'),	
 ('271', 'Hillside', 'CO', '99', '68'),	
 ('667', 'Hawarden', 'IA', '90', '46'),	
 ('350', 'Cannonsburg', 'MI', '91', '120'),	
 ('49', 'Osborne', 'KS', '70', '139'),	
 ('332', 'Elm Grove', 'LA', '45', '29'),	
 ('172', 'Atlantic Mine', 'MI', '131', '99'),	
 ('699', 'North Branford', 'CT', '37', '95'),	
 ('417', 'New Liberty', 'IA', '139', '94'),	
 ('99', 'Woodstock Valley', 'CT', '117', '162'),	
 ('404', 'Farmington', 'IL', '91', '72'),	
 ('23', 'Honolulu', 'HI', '110', '139'),	
 ('1', 'Pfeifer', 'KS', '37', '65'),	
 ('127', 'Oshtemo', 'MI', '100', '135'),	
 ('657', 'Gridley', 'KS', '118', '55'),	
 ('261', 'Fulton', 'KY', '111', '51'),	
 ('182', 'Winter Park', 'FL', '133', '32'),	
 ('328', 'Monroe', 'LA', '28', '108'),	
 ('779', 'Del Mar', 'CA', '59', '95'),	
 ('646', 'Greens Fork', 'IN', '133', '135'),	
 ('756', 'Garden City', 'AL', '96', '105'),	
 ('157', 'Blue River', 'KY', '116', '161'),	
 ('400', 'New Ross', 'IN', '134', '120'),	
 ('61', 'Brilliant', 'AL', '86', '159'),	
 ('610', 'Archie', 'MO', '40', '28'),	
 ('985', 'Winslow', 'AR', '126', '126'),	
 ('207', 'Olmitz', 'KS', '29', '38'),	
 ('941', 'Allerton', 'IA', '61', '112'),	
 ('70', 'Norphlet', 'AR', '144', '61'),	
 ('343', 'Mechanic Falls', 'ME', '71', '71'),	
 ('531', 'North Middletown', 'KY', '42', '141'),	
 ('996', 'Keyes', 'CA', '76', '85'),	
 ('167', 'Equality', 'AL', '106', '116'),	
 ('750', 'Neon', 'KY', '101', '147'),	
 ('410', 'Calhoun', 'KY', '95', '56'),	
 ('725', 'Alpine', 'AR', '116', '114'),	
 ('988', 'Mullan', '"ID"', '143', '154'),	
 ('55', 'Coalgood', 'KY', '57', '149'),	
 ('640', 'Walnut', 'MS', '40', '76'),	
 ('302', 'Saint Petersburg', 'FL', '51', '119'),	
 ('387', 'Ojai', 'CA', '68', '119'),	
 ('476', 'Julian', 'CA', '130', '101'),	
 ('907', 'Veedersburg', 'IN', '78', '94'),	
 ('294', 'Orange Park', 'FL', '59', '137'),	
 ('661', 'Payson', 'AZ', '126', '154'),	
 ('745', 'Windom', 'KS', '114', '126'),	
 ('631', 'Urbana', 'IA', '142', '29'),	
 ('356', 'Ludlow', 'CA', '110', '87'),	
 ('419', 'Lindsay', 'MT', '143', '67'),	
 ('494', 'Palatka', 'FL', '94', '52'),	
 ('625', 'Bristol', 'ME', '87', '95'),	
 ('459', 'Harmony', 'IN', '135', '70'),	
 ('636', 'Ukiah', 'CA', '86', '89'),	
 ('106', 'Yuma', 'AZ', '111', '153'),	
 ('204', 'Alba', 'MI', '91', '103'),	
 ('344', 'Zachary', 'LA', '60', '152'),	
 ('599', 'Esmond', 'IL', '75', '90'),	
 ('515', 'Waresboro', 'GA', '144', '153'),	
 ('497', 'Hills', 'MN', '137', '134'),	
 ('162', 'Montgomery City', 'MO', '70', '44'),	
 ('499', 'Delavan', 'MN', '32', '64'),	
 ('362', 'Magnolia', 'MS', '112', '31'),	
 ('545', 'Byron', 'CA', '136', '120'),	
 ('712', 'Dundee', 'IA', '61', '105'),	
 ('257', 'Eureka Springs', 'AR', '72', '34'),	
 ('154', 'Baker', 'CA', '31', '148'),	
 ('715', 'Hyde Park', 'MA', '65', '156'),	
 ('493', 'Groveoak', 'AL', '53', '87'),	
 ('836', 'Kenner', 'LA', '91', '126'),	
 ('82', 'Many', 'LA', '36', '94'),	
 ('644', 'Seward', 'AK', '120', '35'),	
 ('391', 'Berryton', 'KS', '60', '139'),	
 ('696', 'Chilhowee', 'MO', '79', '49'),	
 ('905', 'Newark', 'IL', '72', '129'),	
 ('81', 'Cowgill', 'MO', '136', '27'),	
 ('31', 'Novinger', 'MO', '108', '111'),	
 ('299', 'Goodman', 'MS', '101', '117'),	
 ('84', 'Cobalt', 'CT', '87', '26'),	
 ('754', 'South Haven', 'MI', '144', '52'),	
 ('144', 'Eskridge', 'KS', '107', '63'),	
 ('305', 'Bennington', 'KS', '93', '83'),	
 ('226', 'Decatur', 'MS', '71', '117'),	
 ('224', 'West Hyannisport', 'MA', '58', '96'),	
 ('694', 'Ozona', 'FL', '144', '120'),	
 ('623', 'Jackson', 'AL', '111', '67'),	
 ('543', 'Lapeer', 'MI', '128', '114'),	
 ('819', 'Peaks Island', 'ME', '59', '110'),	
 ('243', 'Hazlehurst', 'MS', '49', '108'),	
 ('457', 'Chester', 'CA', '69', '123'),	
 ('871', 'Clarkston', 'MI', '93', '80'),	
 ('470', 'Healdsburg', 'CA', '111', '54'),	
 ('705', 'Hotchkiss', 'CO', '69', '71'),	
 ('690', 'Ravenden Springs', 'AR', '67', '108'),	
 ('62', 'Monroe', 'AR', '131', '150'),	
 ('365', 'Payson', 'IL', '81', '92'),	
 ('922', 'Kell', 'IL', '70', '58'),	
 ('838', 'Strasburg', 'CO', '89', '47'),	
 ('286', 'Five Points', 'AL', '45', '122'),	
 ('968', 'Norris City', 'IL', '53', '76'),	
 ('928', 'Coaling', 'AL', '144', '52'),	
 ('746', 'Orange City', 'IA', '93', '162'),	
 ('892', 'Effingham', 'KS', '132', '97'),	
 ('193', 'Corcoran', 'CA', '81', '139'),	
 ('225', 'Garden City', 'IA', '54', '119'),	
 ('573', 'Alton', 'MO', '79', '112'),	
 ('830', 'Greenway', 'AR', '119', '35'),	
 ('241', 'Woodsboro', 'MD', '76', '141'),	
 ('783', 'Strawn', 'IL', '29', '51'),	
 ('675', 'Dent', 'MN', '70', '136'),	
 ('270', 'Shingletown', 'CA', '61', '102'),	
 ('378', 'Clio', 'IA', '46', '115'),	
 ('104', 'Yalaha', 'FL', '120', '119'),	
 ('460', 'Leakesville', 'MS', '107', '72'),	
 ('804', 'Fort Lupton', 'CO', '38', '93'),	
 ('53', 'Shasta', 'CA', '99', '155'),	
 ('448', 'Canton', 'MN', '123', '151'),	
 ('751', 'Agency', 'MO', '59', '95'),	
 ('29', 'South Carrollton', 'KY', '57', '116'),	
 ('718', 'Taft', 'CA', '107', '146'),	
 ('213', 'Calpine', 'CA', '46', '43'),	
 ('624', 'Knobel', 'AR', '95', '62'),	
 ('908', 'Bullhead City', 'AZ', '94', '30'),	
 ('845', 'Tina', 'MO', '131', '28'),	
 ('685', 'Anthony', 'KS', '45', '161'),	
 ('731', 'Emmett', '"ID"', '57', '31'),	
 ('311', 'South Haven', 'MN', '30', '87'),	
 ('866', 'Haverhill', 'IA', '61', '109'),	
 ('598', 'Middleboro', 'MA', '108', '149'),	
 ('541', 'Siloam', 'GA', '105', '92'),	
 ('889', 'Lena', 'LA', '78', '129'),	
 ('654', 'Lee', 'IL', '27', '51'),	
 ('841', 'Freeport', 'MI', '113', '50'),	
 ('446', 'Mid Florida', 'FL', '110', '50'),	
 ('249', 'Acme', 'LA', '73', '67'),	
 ('376', 'Gorham', 'KS', '111', '64'),	
 ('136', 'Bass Harbor', 'ME', '137', '61'),	
 ('455', 'Granger', 'IA', '33', '102');
 
 select * from station_table;
 
 
 
 
 
 
 # Q7. Query a list of CITY and STATE from the STATION table.
 
 select city,state from station_table;
 
 
 
 
 
 
 
 
 
 # Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
 
 
SELECT DISTINCT city FROM station_table WHERE MOD(ID, 2) = 0;







# 9. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT COUNT(city)-count(distinct city) as  CityCountDifference FROM station_table;







/* Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their
respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
largest city, choose the one that comes first when ordered alphabetically */

SELECT city, LENGTH(city) AS city_length FROM station_table ORDER BY city_length ASC, city
LIMIT 1;

SELECT city, LENGTH(city) AS city_length FROM station_table ORDER BY city_length DESC, city
LIMIT 1;











/* Q. 11 Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result
cannot contain duplicates.*/

SELECT DISTINCT city FROM station_table WHERE city REGEXP '^[aeiouAEIOU]';












#Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT city FROM station_table WHERE city REGEXP '[aeiouAEIOU]$';








#Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city FROM station_table WHERE city NOT REGEXP '^[aeiouAEIOU]';






#Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city FROM station_table WHERE city NOT REGEXP '[aeiouAEIOU]$';






# Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city FROM station_table WHERE city NOT REGEXP '^[aeiouAEIOU]' OR city NOT REGEXP '[aeiouAEIOU]$';








#Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city FROM station_table WHERE city NOT REGEXP '^[aeiouAEIOU]' AND city NOT REGEXP '[aeiouAEIOU]$';








/*Q17 Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is,
between 2019-01-01 and 2019-03-31 inclusive.*/


create Table product (product_id int primary key, product_name varchar(25), unit_price int);
create Table sales(seller_id int,  product_id int, buyer_id int, sale_date date, quantity int, price int, FOREIGN KEY (product_id) REFERENCES product(product_id));
INSERT INTO product (product_id, product_name, unit_price) VALUES (1, 'S8', 1000), (2, 'G4', 800), (3, 'iPhone', 1400);
INSERT INTO sales (seller_id, product_id, buyer_id, sale_date, quantity, price) VALUES (1, 1, 1, '2019-01-21', 2, 2000), 
(1, 2, 2, '2019-02-17', 1, 800), (2, 2, 3, '2019-06-02', 1, 800), (3, 3, 4, '2019-05-13', 2, 2800);
    
SELECT DISTINCT P.product_name FROM Product P WHERE P.product_id NOT IN ( SELECT DISTINCT S.product_id FROM Sales S WHERE S.sale_date < '2019-01-01' OR S.sale_date > '2019-03-31'); 








/* Q.18 Write an SQL query to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.*/

CREATE TABLE Views ( article_id INT,author_id INT,viewer_id INT,view_date DATE);

INSERT INTO Views (article_id, author_id, viewer_id, view_date)
VALUES
    (1, 3, 5, '2019-08-01'),
    (1, 3, 6, '2019-08-02'),
    (2, 7, 7, '2019-08-01'),
    (2, 7, 6, '2019-08-02'),
    (4, 7, 1, '2019-07-22'),
    (3, 4, 4, '2019-07-21'),
    (3, 4, 4, '2019-07-21');
    
    select * from Views;
    
  SELECT DISTINCT author_id FROM Views WHERE author_id = viewer_id ORDER BY author_id ASC;
  
  
  
  
  
  
  
  
  
/*Q.19*Write an SQL query to find the percentage of immediate orders in the table, rounded to 2 decimal
places.*/

CREATE TABLE Delivery (
    delivery_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    customer_pref_delivery_date DATE
);

INSERT INTO Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
VALUES
    (1, 1, '2019-08-01', '2019-08-02'),
    (2, 5, '2019-08-02', '2019-08-02'),
    (3, 1, '2019-08-11', '2019-08-11'),
    (4, 3, '2019-08-24', '2019-08-26'),
    (5, 4, '2019-08-21', '2019-08-22'),
    (6, 2, '2019-08-11', '2019-08-13');
    
    SELECT ROUND((SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*)) * 100,2) AS percentage FROM Delivery;
    
    
    
    
    
    
    #Q.20 Write an SQL query to find the ctr of each Ad. Round ctr to two decimal points.
    CREATE TABLE Ads (
    ad_id INT NOT NULL,
    user_id INT NOT NULL,
    action ENUM('Clicked', 'Viewed', 'Ignored') NOT NULL,
    PRIMARY KEY (ad_id, user_id)
);

    INSERT INTO Ads (ad_id, user_id, action)
VALUES
    (1, 1, 'Clicked'),
    (2, 2, 'Clicked'),
    (3, 3, 'Viewed'),
    (5, 5, 'Ignored'),
    (1, 7, 'Ignored'),
    (2, 7, 'Viewed'),
    (3, 5, 'Clicked'),
    (1, 4, 'Viewed'),
    (2, 11, 'Viewed'),
    (1, 2, 'Clicked');

SELECT
    ad_id,
    CASE
        WHEN (ad_total_clicks + ad_total_views) = 0 THEN 0
        ELSE ROUND((ad_total_clicks / (ad_total_clicks + ad_total_views)) * 100, 2) END AS ctr
FROM (SELECT ad_id, SUM(CASE WHEN action = 'Clicked' THEN 1 ELSE 0 END) AS ad_total_clicks, SUM(CASE WHEN action = 'Viewed' THEN 1 ELSE 0 END) 
AS ad_total_views FROM Ads
    GROUP BY ad_id
) AS subquery
ORDER BY ctr DESC, ad_id ASC;










#Q.21 Write an SQL query to find the team size of each of the employees

CREATE TABLE Employee (
    employee_id INT,
    team_id INT
);

INSERT INTO Employee (employee_id, team_id)
VALUES
    (1, 8),
    (2, 8),
    (3, 8),
    (4, 7),
    (5, 9),
    (6, 9);
    
SELECT e.employee_id, t.team_size FROM Employee e
JOIN (
    SELECT team_id, COUNT(*) AS team_size
    FROM Employee
    GROUP BY team_id
) t ON e.team_id = t.team_id;









#Q.22 Write an SQL query to find the type of weather in each country for November 2019.

CREATE TABLE Countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(255) -- You can adjust the VARCHAR length as needed
);
CREATE TABLE Weather (
    country_id INT,
    weather_state INT,
    day DATE,
    PRIMARY KEY (country_id, day)
);

INSERT INTO Countries (country_id, country_name)
VALUES
(2, 'USA'),
(3, 'Australia'),
(7, 'Peru'),
(5, 'China'),
(8, 'Morocco'),
(9, 'Spain');

INSERT INTO Weather (country_id, weather_state, day)
VALUES
(2, 15, '2019-11-01'),
(2, 12, '2019-10-28'),
(2, 12, '2019-10-27'),
(3, -2, '2019-11-10'),
(3, 0, '2019-11-11'),
(3, 3, '2019-11-12'),
(5, 16, '2019-11-07'),
(5, 18, '2019-11-09'),
(5, 21, '2019-11-23'),
(7, 25, '2019-11-28'),
(7, 22, '2019-12-01'),
(7, 20, '2019-12-02'),
(8, 25, '2019-11-05'),
(8, 27, '2019-11-15'),
(8, 31, '2019-11-25'),
(9, 7, '2019-10-23'),
(9, 3, '2019-12-23');

SELECT
    c.country_name,
    CASE
        WHEN AVG(w.weather_state) <= 15 THEN 'Cold'
        WHEN AVG(w.weather_state) >= 25 THEN 'Hot'
        ELSE 'Warm'
    END AS weather_type
FROM
    Countries c
JOIN
    Weather w ON c.country_id = w.country_id
WHERE
    EXTRACT(MONTH FROM w.day) = 11 AND EXTRACT(YEAR FROM w.day) = 2019
GROUP BY
    c.country_name;
    
    
    
    
    
    
    



#Q23.Write an SQL query to find the average selling price for each product. average_price should be rounded to 2 decimal places.
    
CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    PRIMARY KEY (product_id, start_date, end_date)
);

CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT
);


INSERT INTO Prices (product_id, start_date, end_date, price)
VALUES 
    (1, '2019-02-17', '2019-02-28', 5),
    (1, '2019-03-01', '2019-03-22', 20),
    (2, '2019-02-01', '2019-02-20', 15),
    (2, '2019-02-21', '2019-03-31', 30);
    

INSERT INTO UnitsSold (product_id, purchase_date, units)
VALUES
    (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);
    
SELECT
    u.product_id,
    ROUND(SUM(u.units * p.price) / SUM(u.units), 2) AS average_price
FROM
    UnitsSold u
JOIN
    Prices p
ON
    u.product_id = p.product_id
AND
    u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY
    u.product_id;
    
    
    
    
    
    
    
-- Q.24 Write an SQL query to report the first login date for each player. Return the result table in any order. The query result format is in the following example.
    
    
    CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date)
);


INSERT INTO Activity (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);
    
    
SELECT
    player_id,
    MIN(event_date) AS first_login_date
FROM
    Activity
GROUP BY
    player_id;
    
    



#Q.25 Write an SQL query to report the device that is first logged in for each player.



CREATE TABLE Activity1 (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date)
);


INSERT INTO Activity1 (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);


    WITH RankedLogins AS (
    SELECT
        player_id,
        device_id,
        event_date,
        ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS login_rank
    FROM
        Activity)
SELECT
    player_id,
    device_id AS first_logged_in_device
FROM
    RankedLogins
WHERE
    login_rank = 1;













#Q.26 Write an SQL query to get the names of products that have at least 100 units ordered in February 2020 and their amount.


CREATE TABLE Products1 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(35),
    product_category VARCHAR(25)
);



CREATE TABLE Orders1 (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    order_date DATE,
    unit INT,
    FOREIGN KEY (product_id) REFERENCES Products1(product_id)
);


INSERT INTO Products1 (product_id, product_name, product_category)
VALUES
    (1, 'Leetcode Solutions Book', 'Book'),
    (2, 'Jewels of Stringology Book', 'Book'),
    (3, 'HP Laptop', 'Laptop'),
    (4, 'Lenovo Laptop', 'Laptop'),
    (5, 'Leetcode Kit T-shirt', 'Apparel');
    

INSERT INTO Orders1 (product_id, order_date, unit)
VALUES
    (1, '2020-02-05', 60),
    (1, '2020-02-10', 70),
    (2, '2020-01-18', 30),
    (2, '2020-02-11', 80),
    (3, '2020-02-17', 2),
    (3, '2020-02-24', 3),
    (4, '2020-03-01', 20),
    (4, '2020-03-04', 30),
    (4, '2020-03-04', 60),
    (5, '2020-02-25', 50),
    (5, '2020-02-27', 50),
    (5, '2020-03-01', 50);
    
SELECT
    p.product_name,
    SUM(o.unit) AS total_amount
FROM
    Products1 p
JOIN
    Orders1 o
ON
    p.product_id = o.product_id
WHERE
    o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY
    p.product_name
HAVING
    SUM(o.unit) >= 100;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
#Q27.Write an SQL query to find the users who have valid emails.


    CREATE TABLE users4 (
    user_id INT PRIMARY KEY,
    name VARCHAR(55),
    mail VARCHAR(55)
);


INSERT INTO users4 (user_id, name, mail)
VALUES
    (1, 'Winston', 'winston@leetcode.com'),
    (2, 'Jonathan', 'jonathanisgreat'),
    (3, 'Annabelle', 'bella-@leetcode.com'),
    (4, 'Sally', 'sally.come@leetcode.com'),
    (5, 'Marwan', 'quarz#2020@leetcode.com'),
    (6, 'David', 'david69@gmail.com'),
    (7, 'Shapiro', '.shapo@leetcode.com');
    
    

    

  select user_id, name, mail from users4 
  where mail 
  regexp '^[a-zA-Z]+[a-zA-Z0-9_\.\-]*@leetcode[\.]com' order by user_id;
  
  










#28. Write an SQL query to report the customer_id and customer_name of customers who have spent at least $100 in each month of June and July 2020.

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(255)
);

-- Create Product table
CREATE TABLE Product2 (
    product_id INT PRIMARY KEY,   
    name VARCHAR(255),
    price DECIMAL(10, 2)
);

-- Create Orders table
CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT
);

-- Inserting data into the Customers table
INSERT INTO Customers (customer_id, name, country)
VALUES
    (1, 'Winston', 'USA'),
    (2, 'Jonathan', 'Peru'),
    (3, 'Moustafa', 'Egypt');
    
-- Inserting data into the Product table
INSERT INTO Product2 (product_id, name, price)
VALUES
    (10, 'LC Phone', 300),
    (20, 'LC T-Shirt', 10),
    (30, 'LC Book', 45),
    (40, 'LC Keychain', 2);
    
-- Inserting data into the Orders table
INSERT INTO Orders2 (order_id, customer_id, product_id, order_date, quantity)
VALUES
    (1, 1, 10, '2020-06-10', 1),
    (2, 1, 20, '2020-07-01', 1),
    (3, 1, 30, '2020-07-08', 2),
    (4, 2, 10, '2020-06-15', 2),
    (5, 2, 40, '2020-07-01', 10),
    (6, 3, 20, '2020-06-24', 2),
    (7, 3, 30, '2020-06-25', 2),
    (9, 3, 30, '2020-05-08', 3);
    
    
SELECT c.customer_id, c.name AS customer_name
FROM Customers c
WHERE c.customer_id IN (
    SELECT o.customer_id
    FROM Orders2 o
    JOIN Product2 p ON o.product_id = p.product_id
    WHERE MONTH(o.order_date) = 6 AND YEAR(o.order_date) = 2020
    GROUP BY o.customer_id
    HAVING SUM(p.price * o.quantity) >= 100
) AND c.customer_id IN (
    SELECT o.customer_id
    FROM Orders2 o
    JOIN Product2 p ON o.product_id = p.product_id
    WHERE MONTH(o.order_date) = 7 AND YEAR(o.order_date) = 2020
    GROUP BY o.customer_id
    HAVING SUM(p.price * o.quantity) >= 100
);















#Q.29 Write an SQL query to report the distinct titles of the kid-friendly movies streamed in June 2020.

CREATE TABLE TVProgram (
    program_date DATE,
    content_id INT,
    channel1 VARCHAR(255),
    PRIMARY KEY (program_date, content_id)
);

CREATE TABLE Content (
    content_id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255),
    Kids_content ENUM('Y', 'N'),
    content_type VARCHAR(255)
);

INSERT INTO TVProgram (program_date, content_id, channel1)
VALUES ('2020-06-10', 1, 'LC-Channel'),
       ('2020-05-11', 2, 'LC-Channel'),
       ('2020-05-12', 3, 'LC-Channel'),
       ('2020-05-13', 4, 'Disney Ch'),
       ('2020-06-18', 4, 'Disney Ch'),
       ('2020-07-15', 5, 'Disney Ch');
       
INSERT INTO Content (content_id, title, Kids_content, content_type)
VALUES ('1', 'Leetcode Movie', 'N', 'Movies'),
       ('2', 'Alg. for Kids', 'Y', 'Series'),
       ('3', 'Database Sols', 'N', 'Series'),
       ('4', 'Aladdin', 'Y', 'Movies'),
       ('5', 'Cinderella', 'Y', 'Movies');
       
SELECT DISTINCT c.title
FROM TVProgram p
JOIN Content c ON p.content_id = c.content_id
WHERE p.program_date >= '2020-06-01' 
  AND p.program_date < '2020-07-01'
  AND c.Kids_content = 'Y'
  AND c.content_type = 'Movies';
















# Q.30 & 31. Write an SQL query to find the npv of each query of the Queries table.

CREATE TABLE NPV (
    id INT,
    year INT,
    npv INT,
    PRIMARY KEY (id, year)
);


CREATE TABLE Queries (
    id INT,
    year INT,
    PRIMARY KEY (id, year)
);


-- Insert values into the NPV table
INSERT INTO NPV (id, year, npv) VALUES
    (1, 2018, 100),
    (7, 2020, 30),
    (13, 2019, 40),
    (1, 2019, 113),
    (2, 2008, 121),
    (3, 2009, 12),
    (11, 2020, 99),
    (7, 2019, 0);
    
INSERT INTO Queries (id, year)
VALUES (1, 2019),
       (2, 2008),
       (3, 2009),
       (7, 2018),
       (7, 2019),
       (7, 2020),
       (13, 2019);
       
SELECT q.id, q.year, COALESCE(n.npv, 0) AS npv
FROM Queries q
LEFT JOIN NPV n ON q.id = n.id AND q.year = n.year;















#Q.32 Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just show null.

-- Create the Employees table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the EmployeeUNI table
CREATE TABLE EmployeeUNI (
    id INT,
    unique_id INT,
    UNIQUE (unique_id)
);


-- Insert data into the Employees table
INSERT INTO Employees (id, name)
VALUES
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');

-- Insert data into the EmployeeUNI table
INSERT INTO EmployeeUNI (id, unique_id)
VALUES
    (3, 1),
    (11, 2),
    (90, 3);
    
SELECT EU.unique_id, E.name
FROM Employees E
LEFT JOIN EmployeeUNI EU ON E.id = EU.id;










/*Q.33 Write an SQL query to report the distance travelled by each user.
Return the result table ordered by travelled_distance in descending order, if two or more users
travelled the same distance, order them by their name in ascending order.*/

-- Create the Users table
CREATE TABLE Users1 (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the Rides table
CREATE TABLE Rides (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT
);


-- Insert data into the Users table
INSERT INTO Users1 (id, name)
VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Alex'),
    (4, 'Donald'),
    (7, 'Lee'),
    (13, 'Jonathan'),
    (19, 'Elvis');


-- Insert data into the Rides table
INSERT INTO Rides (id, user_id, distance)
VALUES
    (1, 1, 120),
    (2, 2, 317),
    (3, 3, 222),
    (4, 7, 100),
    (5, 13, 312),
    (6, 19, 50),
    (7, 7, 120),
    (8, 19, 400),
    (9, 7, 230);
    
SELECT
    U.name AS user_name,
    SUM(R.distance) AS travelled_distance
FROM Users1 U
LEFT JOIN Rides R ON U.id = R.user_id
GROUP BY U.name, U.id
ORDER BY travelled_distance DESC, user_name ASC;












#Q.34 Write an SQL query to get the names of products that have at least 100 units ordered in February 2020 and their amount.

select p.product_name, sum(o.unit) as unit from products1 p 
left join orders1 o on p.product_id = o.product_id where month(o.order_date) = 2 and year(o.order_date) = 2020 
group by p.product_id having unit >= 100;








 /*#Q.35 Write an SQL query to:
 
 Find the name of the user who has rated the greatest number of movies. In case of a tie,
return the lexicographically smaller user name.
 Find the movie name with the highest average rating in February 2020. In case of a tie, return
the lexicographically smaller movie name. 
*/




-- Create the Movies table
CREATE TABLE Movies2 (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255)
);

-- Create the Users table
CREATE TABLE Users2 (
    user_id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the MovieRating table
CREATE TABLE MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE,
    PRIMARY KEY (movie_id, user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Insert data into the Movies table
INSERT INTO Movies2 (movie_id, title)
VALUES
    (1, 'Avengers'),
    (2, 'Frozen 2'),
    (3, 'Joker');

-- Insert data into the Users table
INSERT INTO Users2 (user_id, name)
VALUES
    (1, 'Daniel'),
    (2, 'Monica'),
    (3, 'Maria'),
    (4, 'James');


-- Insert data into the MovieRating table
INSERT INTO MovieRating (movie_id, user_id, rating, created_at)
VALUES
    (1, 1, 3, '2020-01-12'),
    (1, 2, 4, '2020-02-11'),
    (1, 3, 2, '2020-02-12'),
    (1, 4, 1, '2020-01-01'),
    (2, 1, 5, '2020-02-17'),
    (2, 2, 2, '2020-02-01'),
    (2, 3, 2, '2020-03-01'),
    (3, 1, 3, '2020-02-22'),
    (3, 2, 4, '2020-02-25');




SELECT user_name
FROM (
    SELECT u.user_id, u.name AS user_name, COUNT(*) AS num_ratings
    FROM Users2 u
    JOIN MovieRating mr ON u.user_id = mr.user_id
    GROUP BY u.user_id, user_name
    ORDER BY num_ratings DESC, user_name ASC
    LIMIT 1
) AS user_with_most_ratings;

SELECT movie_name
FROM (
    SELECT m.title AS movie_name, AVG(rating) AS avg_rating
    FROM Movies2 m
    JOIN MovieRating mr ON m.movie_id = mr.movie_id
    WHERE YEAR(created_at) = 2020 AND MONTH(created_at) = 2
    GROUP BY movie_name
    ORDER BY avg_rating DESC, movie_name ASC
    LIMIT 1
) AS movie_with_highest_avg_rating;













/*Q36.
Write an SQL query to report the distance travelled by each user.
Return the result table ordered by travelled_distance in descending order, if two or more users
travelled the same distance, order them by their name in ascending
*/


-- Create the Users table
CREATE TABLE Users3 (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the Rides table
CREATE TABLE Rides2 (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT,
    FOREIGN KEY (user_id) REFERENCES Users3(id)
);



-- Insert data into Users3 table
INSERT INTO Users3 (id, name)
VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Alex'),
    (4, 'Donald'),
    (7, 'Lee'),
    (13, 'Jonathan'),
    (19, 'Elvis');

-- Insert data into Rides2 table
INSERT INTO Rides2 (id, user_id, distance)
VALUES
    (1, 1, 120),
    (2, 2, 317),
    (3, 3, 222),
    (4, 7, 100),
    (5, 13, 312),
    (6, 19, 50),
    (7, 7, 120),
    (8, 19, 400),
    (9, 7, 230);


SELECT U.name, COALESCE(SUM(R.distance), 0) AS travelled_distance
FROM Users3 U
LEFT JOIN Rides2 R ON U.id = R.user_id
GROUP BY U.name
ORDER BY travelled_distance DESC, U.name ASC;


















/* Q.37 Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just
show null. */

-- Create the Employees table
CREATE TABLE Employees2 (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Insert data into the Employees table
INSERT INTO Employees2 (id, name)
VALUES
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');

-- Create the EmployeeUNI table
CREATE TABLE EmployeeUNI2 (
    id INT PRIMARY KEY,
    unique_id INT,
    CONSTRAINT unique_id_employee_fk FOREIGN KEY (id) REFERENCES Employees(id)
);

-- Insert data into the EmployeeUNI table
INSERT INTO EmployeeUNI2 (id, unique_id)
VALUES
    (3, 1),
    (11, 2),
    (90, 3);
    
    
#Query
SELECT e.id, e.name, eu.unique_id
FROM Employees2 e
LEFT JOIN EmployeeUNI2 eu ON e.id = eu.id;













/* Q.38 Write an SQL query to find the id and the name of all students who are enrolled in departments that no
longer exist.*/

-- Create the Departments table
CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the Students table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments3(id)
);



-- Insert data into the Departments table
INSERT INTO Departments (id, name)
VALUES
    (1, 'Electrical Engineering'),
    (7, 'Computer Engineering'),
    (13, 'Business Administration');

    
-- Insert data into the Students table
INSERT INTO Students (id, name, department_id)
VALUES
    (23, 'Alice', 1),
    (1, 'Bob', 7),
    (5, 'Jennifer', 13),
    (2, 'John', 14),   -- Note: Department ID 14 doesn't exist in the Departments table
    (4, 'Jasmine', 77), -- Note: Department ID 77 doesn't exist in the Departments table
    (3, 'Steve', 74),   -- Note: Department ID 74 doesn't exist in the Departments table
    (6, 'Luis', 1),
    (8, 'Jonathan', 7),
    (7, 'Daiana', 33),  -- Note: Department ID 33 doesn't exist in the Departments table
    (11, 'Madelynn', 1);

SELECT Students.id, Students.name
FROM Students
LEFT JOIN Departments ON Students.department_id = Departments.id
WHERE Departments.id IS NULL;














/*Q.39 Write an SQL query to report the number of calls and the total call duration between each pair of
distinct persons (person1, person2) where person1 < person2.*/


CREATE TABLE Calls (
    from_id INT,
    to_id INT,
    duration INT,
    CHECK (from_id <> to_id)
);


INSERT INTO Calls (from_id, to_id, duration)
VALUES
    (1, 2, 59),
    (2, 1, 11),
    (1, 3, 20),
    (3, 4, 100),
    (3, 4, 200),
    (3, 4, 200),
    (4, 3, 499);

SELECT
    CASE
        WHEN from_id < to_id THEN from_id
        ELSE to_id
    END AS person1,
    CASE
        WHEN from_id < to_id THEN to_id
        ELSE from_id
    END AS person2,
    COUNT(*) AS call_count,
    SUM(duration) AS total_duration
FROM Calls
GROUP BY person1, person2
ORDER BY person1, person2;













/*Q40.Write an SQL query to find the average selling price for each product. average_price should be
rounded to 2 decimal places.*/



-- Create the Prices table
CREATE TABLE Prices2 (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    PRIMARY KEY (product_id, start_date, end_date)
);

-- Create the UnitsSold table
CREATE TABLE UnitsSold2 (
    product_id INT,
    purchase_date DATE,
    units INT
);

-- Insert data into the Prices table
INSERT INTO Prices2 (product_id, start_date, end_date, price)
VALUES
    (1, '2019-02-17', '2019-02-28', 5),
    (1, '2019-03-01', '2019-03-22', 20),
    (2, '2019-02-01', '2019-02-20', 15),
    (2, '2019-02-21', '2019-03-31', 30);  
    

INSERT INTO UnitsSold2 (product_id, purchase_date, units)
VALUES
    (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);
    
SELECT
    u.product_id,
    ROUND(SUM(u.units * p.price) / SUM(u.units), 2) AS average_price
FROM
    UnitsSold2 u
JOIN
    Prices2 p
ON
    u.product_id = p.product_id
AND
    u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY
    u.product_id;
    
    
    
    
    
    
    
    
    
    
    
    
#q.41 Write an SQL query to report the number of cubic feet of volume the inventory occupies in each warehouse.
    
CREATE TABLE Warehouse (
    name VARCHAR(255),
    product_id INT,
    units INT,
    PRIMARY KEY (name, product_id)
);


CREATE TABLE Products2 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    Width INT,
    Length INT,
    Height INT
);

-- Inserting data into the Warehouse table
INSERT INTO Warehouse (name, product_id, units) VALUES
('LCHouse1', 1, 1),
('LCHouse1', 2, 10),
('LCHouse1', 3, 5),
('LCHouse2', 1, 2),
('LCHouse2', 2, 2),
('LCHouse3', 4, 1);

-- Inserting data into the Products table
INSERT INTO Products2 (product_id, product_name, Width, Length, Height) VALUES
(1, 'LC-TV', 5, 50, 40),
(2, 'LC-KeyChain', 5, 5, 5),
(3, 'LC-Phone', 2, 10, 10),
(4, 'LC-T-Shirt', 4, 10, 20);

SELECT
    w.name AS warehouse_name,
    SUM(p.Width * p.Length * p.Height * w.units) AS total_cubic_feet
FROM
    Warehouse w
LEFT JOIN
    Products2 p ON w.product_id = p.product_id
GROUP BY
    w.name;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
#Q.42 Write an SQL query to report the difference between the number of apples and oranges sold each day.Return the result table ordered by sale_date.
CREATE TABLE Sales2 (
    sale_date DATE,
    fruit ENUM('apples', 'oranges'),
    sold_num INT,
    PRIMARY KEY (sale_date, fruit)
);


INSERT INTO Sales2 (sale_date, fruit, sold_num)
VALUES
    ('2020-05-01', 'apples', 10),
    ('2020-05-01', 'oranges', 8),
    ('2020-05-02', 'apples', 15),
    ('2020-05-02', 'oranges', 15),
    ('2020-05-03', 'apples', 20),
    ('2020-05-03', 'oranges', 0),
    ('2020-05-04', 'apples', 15),
    ('2020-05-04', 'oranges', 16);
    
    
    SELECT
    sale_date,
    SUM(CASE WHEN fruit = 'apples' THEN sold_num ELSE 0 END) - SUM(CASE WHEN fruit = 'oranges' THEN sold_num ELSE 0 END) AS diff
FROM Sales2
GROUP BY sale_date
ORDER BY sale_date;














/*Q.43 Write an SQL query to report the fraction of players that logged in again on the day after the day they
first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
that logged in for at least two consecutive days starting from their first login date, then divide that
number by the total number of players.*/


CREATE TABLE activity3 (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date)
);

-- Insert data into the Activity table
INSERT INTO activity3 (player_id, device_id, event_date, games_played)
VALUES (1, 2, '2016-03-01', 5);

INSERT INTO activity3 (player_id, device_id, event_date, games_played)
VALUES (1, 2, '2016-03-02', 6);

INSERT INTO activity3 (player_id, device_id, event_date, games_played)
VALUES (2, 3, '2017-06-25', 1);

INSERT INTO activity3 (player_id, device_id, event_date, games_played)
VALUES (3, 1, '2016-03-02', 0);

INSERT INTO activity3 (player_id, device_id, event_date, games_played)
VALUES (3, 4, '2018-07-03', 5);

select round(t.player_id/(select count(distinct player_id) from activity3),2) 
as fraction 
from 
( select distinct player_id, datediff(event_date, lead(event_date, 1) over(partition by player_id order by event_date)) as diff 
from activity3 ) t 
where diff = -1;





#Q.44 Write an SQL query to report the managers with at least five direct reports. Return the result table in any order.


CREATE TABLE Employee1 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    managerId INT
);

INSERT INTO Employee1 (id, name, department, managerId)
VALUES
    (101, 'John', 'A', NULL),
    (102, 'Dan', 'A', 101),
    (103, 'James', 'A', 101),
    (104, 'Amy', 'A', 101),
    (105, 'Anne', 'A', 101),
    (106, 'Ron', 'B', 101);

select t.name from (select a.id, a.name, count(b.managerID) 
as no_of_direct_reports from employee1 a INNER JOIN employee1 b on a.id = b.managerID group by b.managerID) t 
where no_of_direct_reports >= 5 order by t.name;











/* Q.45 Write an SQL query to report the respective department name and number of students majoring in each department for all departments in the Department table (even ones with no current students). 
Return the result table ordered by student_number in descending order. In case of a tie, order them by dept_name alphabetically.*/



-- Create the Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(255)
);


CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    gender VARCHAR(10),
    dept_id INT  
);

-- Insert data into the Student table
INSERT INTO Student (student_id, student_name, gender, dept_id)
VALUES
    (1, 'Jack', 'M', 1),
    (2, 'Jane', 'F', 1),
    (3, 'Mark', 'M', 2);

-- Insert data into the Department table
INSERT INTO Department (dept_id, dept_name)
VALUES
    (1, 'Engineering'),
    (2, 'Science'),
    (3, 'Law');
    
select d.dept_name, count(s.dept_id) as student_number 
from department d left join student s on s.dept_id = d.dept_id 
group by d.dept_id order by student_number desc, dept_name;















#Q.46 Write an SQL query to report the customer ids from the Customer table that bought all the products in the Product table.


-- Create the Product table
CREATE TABLE Product3 (
    product_key INT PRIMARY KEY
);


CREATE TABLE Customer (
    customer_id INT,
    product_key INT,
    FOREIGN KEY (product_key) REFERENCES Product3(product_key)
);

INSERT INTO Product3 (product_key)
VALUES
    (5),
    (6);
insert INTO Customer (customer_id, product_key)
VALUES
    (1, 5),
    (2, 6),
    (3, 5),
    (3, 6),
    (1, 6);
    
    select customer_id from customer 
    group by customer_id having count(distinct product_key)=(select count(*) 
    from product3);










#Q.47 Write an SQL query that reports the most experienced employees in each project. In case of a tie, report all employees with the maximum number of experience years.

CREATE TABLE Employee2 (
    employee_id INT PRIMARY KEY,
    Name VARCHAR(255),
    experience_years INT
);


CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee2(employee_id)
);

-- Insert data into the Employee table
INSERT INTO Employee2 (employee_id, name, experience_years)
VALUES
    (1, 'Khaled', 3),
    (2, 'Ali', 2),
    (3, 'John', 3),
    (4, 'Doe', 2);

-- Insert data into the Project table
INSERT INTO Project (project_id, employee_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 4);


select t.project_id, t.employee_id from (select p.project_id, e.employee_id, 
dense_rank() over(partition by p.project_id order by e.experience_years desc) 
as r from project p left join employee2 e on p.employee_id = e.employee_id) t where r = 1 order by t.project_id;

















/*Q48 Write an SQL query that reports the books that have sold less than 10 copies in the last year, 
excluding books that have been available for less than one month from today. Assume today is 2019-06-23.Return the result table in any order.*/




-- Create the Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    Name VARCHAR(255),
    available_from DATE
);

-- Create the Orders table with a foreign key constraint
CREATE TABLE Orders3 (
    order_id INT PRIMARY KEY,
    book_id INT,
    quantity INT,
    dispatch_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Insert data into the Books table
INSERT INTO Books (book_id, Name, available_from)
VALUES
    (1, 'Kalila And Demna', '2010-01-01'),
    (2, '28 Letters', '2012-05-12'),
    (3, 'The Hobbit', '2019-06-10'),
    (4, '13 Reasons Why', '2019-06-01'),
    (5, 'The Hunger Games', '2008-09-21');


-- Insert data into the Orders table
INSERT INTO Orders3 (order_id, book_id, quantity, dispatch_date)
VALUES
    (1, 1, 2, '2018-07-26'),
    (2, 1, 1, '2018-11-05'),
    (3, 3, 8, '2019-06-11'),
    (4, 4, 6, '2019-06-05'),
    (5, 4, 5, '2019-06-20'),
    (6, 5, 9, '2009-02-02'),
    (7, 5, 8, '2010-04-13');
    
select t1.book_id, t1.name from ( (select book_id, name from Books where available_from < '2019-05-23') t1 
left join (select book_id, sum(quantity) as quantity from Orders3 where dispatch_date > '2018-06-23' 
and dispatch_date<= '2019-06-23' group by book_id having quantity < 10) t2 on t1.book_id = t2.book_id );












#Q.49 Write a SQL query to find the highest grade with its corresponding course for each student. In case of a tie, you should find the course with the smallest course_id.

CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    Grade INT,
    PRIMARY KEY (student_id, course_id)
);

-- Insert data into the Enrollments table
INSERT INTO Enrollments (student_id, course_id, Grade)
VALUES
    (2, 2, 95),
    (2, 3, 95),
    (1, 1, 90),
    (1, 2, 99),
    (3, 1, 80),
    (3, 2, 75),
    (3, 3, 82);


select t.student_id, t.course_id, t.grade 
from (select student_id, course_id, grade, dense_rank() over(partition by student_id 
order by grade desc, course_id) as r from enrollments) t where r = 1 order by t.student_id;












#Q.50 Write an SQL query to find the winner in each group. Return the result table in any order.


-- Create the Teams table
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    group_id VARCHAR(255)
);

-- Create the Matches table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    first_player INT,
    second_player INT,
    first_score INT,
    second_score INT
);


-- Insert data into the Players table
INSERT INTO Players (player_id, group_id)
VALUES
    (15, 1),
    (25, 1),
    (30, 1),
    (45, 1),
    (10, 2),
    (35, 2),
    (50, 2),
    (20, 3),
    (40, 3);
    
    -- Insert data into the Matches table
INSERT INTO Matches (match_id,first_player ,second_player ,first_score ,second_score )
VALUES
    (1, 15, 45, 3, 0),
    (2, 30, 25, 1, 2),
    (3, 30, 15, 2, 0),
    (4, 40, 20, 5, 2),
    (5, 35, 50, 1, 1);


select t2.group_id, t2.player_id from ( select t1.group_id, t1.player_id, dense_rank() over(partition by group_id order by score desc, player_id) 
as r from ( select p.*, case when p.player_id = m.first_player then m.first_score when p.player_id = m.second_player then m.second_score 
end as score from Players p, Matches m where player_id in (first_player, second_player) ) t1 ) t2 where r = 1;












