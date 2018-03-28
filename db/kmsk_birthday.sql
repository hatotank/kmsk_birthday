PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE eg_char
(
  char_no    integer,
  char_kanji text,
  char_kana  text,
  birthday   text,
  icon_file  text,
  primary key(char_no)
);
INSERT INTO "eg_char" VALUES(1,'三波なつみ','みなみなつみ','0820','024');
INSERT INTO "eg_char" VALUES(2,'堀田さあや','ほったさあや','1009','029');
INSERT INTO "eg_char" VALUES(3,'春風なな','はるかぜなな','0303','028');
INSERT INTO "eg_char" VALUES(4,'鶴海ひまり','つるみひまり','0124','055');
INSERT INTO "eg_char" VALUES(5,'四方みつる','よもみつる','1201','047');
INSERT INTO "eg_char" VALUES(6,'悠木ともこ','ゆうきともこ','0207','039');
INSERT INTO "eg_char" VALUES(7,'神樹いちか','こだまいちか','1231','013');
INSERT INTO "eg_char" VALUES(8,'神樹はじめ','こだまはじめ','0101','070');
INSERT INTO "eg_char" VALUES(9,'久坂あやめ','くさかあやめ','0508','056');
INSERT INTO "eg_char" VALUES(10,'黒森すず','くろもりすず','1122','059');
INSERT INTO "eg_char" VALUES(11,'瀬川かえで','せがわかえで','1122','058');
INSERT INTO "eg_char" VALUES(12,'伊藤さくら','いとうさくら','0115','057');
INSERT INTO "eg_char" VALUES(13,'円城寺れいか','えんじょうじれいか','0427','046');
INSERT INTO "eg_char" VALUES(14,'双葉みづき','ふたばみづき','0601','049');
INSERT INTO "eg_char" VALUES(15,'双葉みなづき','ふたばみなづき','0601','048');
INSERT INTO "eg_char" VALUES(16,'八朔つゆり','はっさくつゆり','0801','027');
INSERT INTO "eg_char" VALUES(17,'小鳩あずさ','こばとあずさ','0128','017');
INSERT INTO "eg_char" VALUES(18,'夢路まりあ','ゆめじまりあ','1225','033');
INSERT INTO "eg_char" VALUES(19,'氷野くるみ','ひのくるみ','0214','012');
INSERT INTO "eg_char" VALUES(20,'梅園かな','うめぞのかな','0303','035');
INSERT INTO "eg_char" VALUES(21,'猫塚みけ','ねこづかみけ','0222','016');
INSERT INTO "eg_char" VALUES(22,'雉子すみれ','きじしすみれ','0630','021');
INSERT INTO "eg_char" VALUES(23,'冴木もも','さえきもも','0919','044');
INSERT INTO "eg_char" VALUES(24,'日滝ましろ','ひたきましろ','0505','069');
INSERT INTO "eg_char" VALUES(25,'深鳥ふみ','みどりふみ','1216','068');
INSERT INTO "eg_char" VALUES(26,'笹芽ひよの','ささめひよの','0510','041');
INSERT INTO "eg_char" VALUES(27,'八壁ひかる','やかべひかる','0221','054');
INSERT INTO "eg_char" VALUES(28,'月永るか','つきながるか','1130','011');
INSERT INTO "eg_char" VALUES(29,'藤猪しずく','ふじいしずく','0528','022');
INSERT INTO "eg_char" VALUES(30,'長町やえ','ながまちやえ','1223','008');
INSERT INTO "eg_char" VALUES(31,'時国そら','ときくにそら','1231','064');
INSERT INTO "eg_char" VALUES(32,'早川きこ','はやかわきこ','0807','005');
INSERT INTO "eg_char" VALUES(33,'高原ちあき','たかはらちあき','0717','001');
INSERT INTO "eg_char" VALUES(34,'小野ちよ','おのちよ','0330','002');
INSERT INTO "eg_char" VALUES(35,'藍乃あいか','あいのあいか','0530','003');
INSERT INTO "eg_char" VALUES(36,'桃智あすか','ももちあすか','0517','004');
INSERT INTO "eg_char" VALUES(37,'三善かなえ','みよしかなえ','0307','006');
INSERT INTO "eg_char" VALUES(38,'北川ゆき','きたがわゆき','1007','007');
INSERT INTO "eg_char" VALUES(39,'木之下ゆゆ','きのしたゆゆ','0403','009');
INSERT INTO "eg_char" VALUES(40,'丸子みさき','まるこみさき','0703','010');
INSERT INTO "eg_char" VALUES(41,'大虎いさみ','たいがいさみ','1103','018');
INSERT INTO "eg_char" VALUES(42,'鯱いかり','しゃちいかり','0205','019');
INSERT INTO "eg_char" VALUES(43,'熊沢ひめの','くまさわひめの','0604','020');
INSERT INTO "eg_char" VALUES(44,'長居ゆう','ながいゆう','0408','025');
INSERT INTO "eg_char" VALUES(45,'星海こよい','ほしうみこよい','0707','026');
INSERT INTO "eg_char" VALUES(46,'夏野ゆり','なつのゆり','0819','030');
INSERT INTO "eg_char" VALUES(47,'安条まい','あんじょうまい','0817','031');
INSERT INTO "eg_char" VALUES(48,'龍泉寺レンレン','りゅうせんじれんれん','0607','032');
INSERT INTO "eg_char" VALUES(49,'遠見ちか','とおみちか','0414','034');
INSERT INTO "eg_char" VALUES(50,'桐島かいり','きりしまかいり','0324','037');
INSERT INTO "eg_char" VALUES(51,'柊るな','ひいらぎるな','1005','036');
INSERT INTO "eg_char" VALUES(52,'砂賀みどり','すながみどり','0304','038');
INSERT INTO "eg_char" VALUES(53,'夜霧はやて','よぎりはやて','0903','040');
INSERT INTO "eg_char" VALUES(54,'クー・カロア','くーかろあ','0302','042');
INSERT INTO "eg_char" VALUES(55,'花丘まり','はなおかまり','0909','045');
INSERT INTO "eg_char" VALUES(56,'小松ぼたん','こまつぼたん','0104','050');
INSERT INTO "eg_char" VALUES(57,'棗ひびき','なつめひびき','0721','063');
INSERT INTO "eg_char" VALUES(58,'峰山しおん','みねやましおん','0615','065');
INSERT INTO "eg_char" VALUES(59,'神無月ほとり','かんなづきほとり','1117','066');
INSERT INTO "eg_char" VALUES(60,'八雲ちづる','やくもちづる','0421','067');
INSERT INTO "eg_char" VALUES(61,'山條ぎん','さんじょうぎん','1104','051');
INSERT INTO "eg_char" VALUES(62,'湖南やこ','こなんやこ','0124','052');
INSERT INTO "eg_char" VALUES(63,'水嶌うしお','みずしまうしお','0828','060');
INSERT INTO "eg_char" VALUES(64,'花音ことり','かのんことり','1023','014');
INSERT INTO "eg_char" VALUES(65,'羽森つばさ','はもりつばさ','0906','015');
INSERT INTO "eg_char" VALUES(66,'曽根セイラ','そねせいら','0623','071');
INSERT INTO "eg_char" VALUES(67,'天宮るり','あまみやるり','0729','061');
INSERT INTO "eg_char" VALUES(68,'榊むつみ','さかきむつみ','1013','043');
INSERT INTO "eg_char" VALUES(69,'岩戸サン','いわとさん','0103','062');
INSERT INTO "eg_char" VALUES(70,'鶯木こはる','おうぎこはる','0930','023');
INSERT INTO "eg_char" VALUES(71,'御影かすみ','みかげかすみ','0218','053');
COMMIT;
