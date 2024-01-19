/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 11.2.0-MariaDB : Database - cloudsecurestoragemechanism
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloudsecurestoragemechanism` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `cloudsecurestoragemechanism`;

/*Table structure for table `serverone` */

DROP TABLE IF EXISTS `serverone`;

CREATE TABLE `serverone` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `Filename` varchar(200) DEFAULT NULL,
  `File` text DEFAULT NULL,
  `Fileencdata1` longblob DEFAULT NULL,
  `Fileencdata2` longblob DEFAULT NULL,
  `Fileencdata3` longblob DEFAULT NULL,
  `Trapdoor` varchar(200) DEFAULT NULL,
  `OwnerType` varchar(200) DEFAULT 'Sender',
  `Userid` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `Attack` varchar(100) DEFAULT 'perform',
  `Filerequest` varchar(100) DEFAULT 'pending',
  `Receiver` varchar(100) DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `serverone` */

insert  into `serverone`(`id`,`Filename`,`File`,`Fileencdata1`,`Fileencdata2`,`Fileencdata3`,`Trapdoor`,`OwnerType`,`Userid`,`status`,`Attack`,`Filerequest`,`Receiver`) values (2,'requirements.txt','absl-py==0.13.0\r\naltair==4.1.0\r\nargon2-cffi==20.1.0\r\nart==5.2\r\nasgiref==3.4.1\r\nastor==0.8.1\r\nastunparse==1.6.3\r\nasync-generator==1.10\r\natomicwrites==1.4.0\r\nattrs==20.3.0\r\nBabel==2.9.1\r\nbackcall==0.2.0\r\nbackports.entry-points-selectable==1.1.0\r\nbackports.zoneinfo==0.2.1\r\nbase58==2.1.0\r\nbleach==3.3.0\r\nblinker==1.4\r\ncached-property==1.5.2\r\ncachetools==4.2.2\r\ncertifi==2021.5.30\r\ncffi==1.14.5\r\ncharset-normalizer==2.0.4\r\nclang==5.0\r\nclick==7.1.2\r\ncolorama==0.4.4\r\ncomtypes==1.1.10\r\ncycler==0.10.0\r\ndataclasses==0.8\r\ndecorator==5.0.7\r\ndefusedxml==0.7.1\r\ndistlib==0.3.2\r\nDjango==3.2.6\r\nentrypoints==0.3\r\net-xmlfile==1.1.0\r\nfacenet-pytorch==2.5.2\r\nfilelock==3.0.12\r\nFlask==1.1.2\r\nFlask-Mail==0.9.1\r\nflatbuffers==1.12\r\ngast==0.4.0\r\ngitdb==4.0.7\r\nGitPython==3.1.18\r\ngoogle-auth==1.35.0\r\ngoogle-auth-oauthlib==0.4.6\r\ngoogle-pasta==0.2.0\r\ngrpcio==1.40.0\r\nh5py==3.1.0\r\nhmmlearn==0.2.6\r\nidna==3.2\r\nimbalanced-learn==0.8.0\r\nimblearn==0.0\r\nimportlib-metadata==4.0.0\r\nimportlib-resources==5.2.2\r\niniconfig==1.1.1\r\nipykernel==5.5.3\r\nipython==7.16.1\r\nipython-genutils==0.2.0\r\nipywidgets==7.6.3\r\nitsdangerous==1.1.0\r\njedi==0.18.0\r\nJinja2==2.11.3\r\njoblib==1.0.1\r\njsonschema==3.2.0\r\njupyter==1.0.0\r\njupyter-client==6.1.12\r\njupyter-console==6.4.0\r\njupyter-core==4.7.1\r\njupyterlab-pygments==0.1.2\r\njupyterlab-widgets==1.0.0\r\nkeras==2.6.0\r\nKeras-Preprocessing==1.1.2\r\nkiwisolver==1.3.1\r\nMarkdown==3.3.4\r\nMarkupSafe==1.1.1\r\nmatplotlib==3.3.4\r\nmistune==0.8.4\r\nmysql-connector==2.2.9\r\nmysqlclient==2.0.3\r\nnbclient==0.5.3\r\nnbconvert==6.0.7\r\nnbformat==5.1.3\r\nnest-asyncio==1.5.1\r\nnotebook==6.3.0\r\nnumpy==1.19.5\r\noauthlib==3.1.1\r\nonetimepad==1.4\r\nopencv-python==4.5.1.48\r\nopenpyxl==3.0.7\r\nopt-einsum==3.3.0\r\npackaging==20.9\r\npandas==1.1.5\r\npandocfilters==1.4.3\r\nparso==0.8.2\r\npickleshare==0.7.5\r\nPillow==8.2.0\r\nplatformdirs==2.2.0\r\nplotly==5.1.0\r\npluggy==0.13.1\r\nprogress==1.6\r\nprometheus-client==0.10.1\r\nprompt-toolkit==3.0.18\r\nprotobuf==3.17.3\r\npy==1.10.0\r\npyarrow==5.0.0\r\npyasn1==0.4.8\r\npyasn1-modules==0.2.8\r\npycparser==2.20\r\npycryptodome==3.11.0\r\npydeck==0.6.2\r\nPyEmotion==1.0.0\r\nPygments==2.8.1\r\nPyMySQL==1.0.2\r\npyparsing==2.4.7\r\npypiwin32==223\r\npyrsistent==0.17.3\r\npytest==6.2.4\r\npython-dateutil==2.8.1\r\npyttsx3==2.90\r\npytz==2021.1\r\npywin32==300\r\npywinpty==0.5.7\r\npyzmq==22.0.3\r\nqrcode==7.3\r\nqtconsole==5.0.3\r\nQtPy==1.9.0\r\nrequests==2.26.0\r\nrequests-oauthlib==1.3.0\r\nrsa==4.7.2\r\nscikit-learn==0.24.1\r\nscipy==1.5.4\r\nseaborn==0.11.1\r\nSend2Trash==1.5.0\r\nsix==1.15.0\r\nsklearn==0.0\r\nsmmap==4.0.0\r\nSpeechRecognition==3.8.1\r\nsqlparse==0.4.1\r\nstreamlit==1.0.0\r\ntenacity==8.0.1\r\ntensorboard==2.6.0\r\ntensorboard-data-server==0.6.1\r\ntensorboard-plugin-wit==1.8.0\r\ntensorflow==2.6.0\r\ntensorflow-estimator==2.6.0\r\ntermcolor==1.1.0\r\nterminado==0.9.4\r\ntestpath==0.4.4\r\nthreadpoolctl==2.1.0\r\ntoml==0.10.2\r\ntoolz==0.11.1\r\ntorch==1.9.0\r\ntorchvision==0.10.0\r\ntornado==6.1\r\ntraitlets==4.3.3\r\ntyping-extensions==3.7.4.3\r\ntzdata==2021.2.post0\r\ntzlocal==3.0\r\nurllib3==1.26.6\r\nvalidators==0.18.2\r\nvirtualenv==20.7.2\r\nwatchdog==2.1.6\r\nwcwidth==0.2.5\r\nwebencodings==0.5.1\r\nWerkzeug==1.0.1\r\nwidgetsnbextension==3.5.1\r\nwrapt==1.12.1\r\nxgboost==1.4.2\r\nxlrd==2.0.1\r\nxlsx2html==0.4.0\r\nzipp==3.4.1\r\n','1:q6Pwjğ55ÉhO—>šëlY\r•Á)JÿLå}›‡AV‹5\Z— f•B€z¥eKøI5ïœ4tÈzíî`“]5£^ùcÎ wßi‡˜}¢¬$F—;lÙbØìšÊGÖ‹“äG.æ6¢îåK³åœ´^¾ÿõ€Lƒˆ¿:Bèa=\Z=¤¯¢¼¥ü\0Öÿ´P¿¹…ıhóËê¢ãû˜ôSß÷M¡A•¬ñÍÔÁDï}“7@“Šb±bŒ-dğ›¹I}&}E¶¸ñiÚ¥7*¿ÍAÊ•j=_Ddôfy†òIÊŠœ{£ÛWèB=ø~‘I¤9°ë¥a\nûÂåŠû»$=è®#\ZÏ¥?<¤A¼ˆ-ÿ>œQªy¦irŠY¾ût‰Am/ï¾íÊ¿½UüÏÅvD©´/Ò·7zEøRW&2\ZÊA½\"¯£œ1›ö‚ Œ#Š¨,ÿô 2ÜŞ¢ì×É|ùx5j=Í\\Û­Úú·ßÜíÄx»l–;Š²öÍÚ§µøÏùšn¨©Ã;$…ECº@ƒÛğÓÈ2Cè?2ìE‡­N‹aa·{<­TTûİ°Ê¶\r‚ª¾ÿ·Z£°ÂópÈP^q;’sÓ~É£Ù=‰Ï†&Êk¤7ÊÉ›”/\ZõbÇóª;ã~Îö…û8*Iô~!2ÍIg?­Ï#Y\rV~9W©×¬\'qB­YB”sE˜ğ 90‡½şq7ÑiúÓ´yóŠ$Ì‚¯g‰ÉOâ@…=_‹ËNJFÙğÃÿUD\Zş—ü=Á³Øcd¥UğVùşš7åéíz,nê9w~İ,C4¾M¶:©o£>Üàèwcp¹·¤…^{ôˆwæårQ–Ër=çcLe´79š<Ğ¨6ÕQñ^ÜÎ}Ç\'–•·ğc!™ÿTOcÜø¬á¶´ÕZ¹¡Û=ŠA,­^¹²5x~ë=.VûÙ[h“YİnªMf¯8Æõ]—ÑœøIUíşŞ\"¸ßlÌztu ãi”M™·ãÖ(a¼À:äß\ZlZY[¸è8eªÅ«° sE]~ó_}\rÉ° {\r«ÒÏgÔ—^iJ¢ßhm¤ååä<°½Û{‘[ÈKe0^›,…\\2u\r²JÆiñb]^§6L:Õ¹5EÁ}T’àzûµ5Àït“ÕÏAƒAéı‘yıñÜS”Ó$³9zÍ\nSeåì\rfä¹q£¾Ó‡JÍ¶;K6ÂªVv&\'\"!Z¼z–\rÛ³ß¦®†§ôA%¦ï‹e…ÊRâËÜAöµ§ÖºNRfÎxñ£¶\\£å‘°ú‚RÃl¹Ã¤tAï ^ÓËÕŠºäNíÏ@Î*N¥ğxlÃ]\r·ì†ò95ÅLQÚÄeÊKR›5½ÙÆo3\Z¾¯„L¡éôúE1—Õ-îvÎ°í«\0œNnÙKBÎ`PÀºoJEŠ+ZãOŸ[;$Gñ‚óH\nò»eiĞ>/³JÈ”ÊBÅh©ÁºµG`š’¢VI4’…àÆyùñ‘©¥	©ÃübŒ&¾{áü]ıƒåëd\rYw¼éQ«]øG¿SàìO9Ãö²\nÇ,Ğz/@‰rBÙ¤ƒªœ-D»^te{©&ÈLqıÎŸA’´p1wfFâº·ŒK–.ê[:-n¢ïö:2Fîœ±aÒ‡ô\'ß¥PJSJ˜İ©WÂ+4JP°«pW:™ŒİÓ—	µ½¼¸Ş-Qæ,Ô_¬rhĞÀ¬~¥EMóÔÅ 5\n^ğU6\'3™½]3m®ãşŸ•LwcÛO\n¢‡»¶ÉXæø^¯ïé¬O4ıWAıß:°Îî§&Ğ¤ã\"ƒøDyÔq‹şæE®Ã¡ÏOc·°WqÅ“MUgÕ9O‹ËŒõ’gú¯æ•«‹Ö7ˆW˜ŠÁa5	 †Âƒ°Í¾6„~¼üäùT0ˆrĞd-Ÿ‹ùÑ›	˜]P‘©³š°DÔ#ëBØµé+L-Ş€N’æ¸6B>³\ZZï2q©±d}IóİöKÃµá]ûßöÇÛa„d_ÈlÅWà\\L€M­(AĞ¨V‚e“hÔl–<îHRí=Wç›ˆ:P/–%È)“ó+—åëÓÌãíôMC£´x0ı(zlhËşmê¡$|J».p,D\ZÍå$ßÆ\0slllJQ¬«›â\Z‹¦)ÔÂê5}ªZK^ÇÃ+k=TfçuŒ#0›çøYÎ¦”Ò…Åt\ZgÅÀÑÉ7!ÿ¡Bàj2|0>_™œˆM?N`ÅLá¾Ø~PLb‘À÷ûôß3{îÛ¬ŞK¶›™QÈè>\ZÈõàhF3Ì1Y÷+Ğ7£‘ƒîjæØ»ì#$ºÈƒM¯W}“ü}ÈVv,:‚oêxŒ±îM(0\0.¤î“ŒİqJ×Ï!q6äPP\\ñ;§ÌX{ã¬G¾°ç—½Ëmio *\rx“Ò{\\z%àllÃPwıwß[·õ.ï&4À£\"‘Vë¤Ã•~{Sv;5€\\ùšwzˆ\"åJ‰‘P¡(ši\\Fo¯cxòÎäéÑİ _^B,×ÔmÀŸaMĞIöÕwüªKâ™Ş¯Ã3®5jÉ1Jñj‚œÁ7™Ä÷CN€>ñ±ÇÜç×QÎï,Ë›Iæ·êæ!Pâ_(¥7£Å™6®q£Á…\r]šé¼^²àm ]¢âläÈ\0ç•½5Ì ?¯ê\\4“‘ì\\%ü!vä-¬ÙR©·¥åd@¹›D¶ıŒù.OŠ©«\"\0_ÒÜdXk¤ÊCô.ĞÁïc¢²ŸOH\'%4-úìN#º’ƒŸ™gSoÀÌ¥øÓØ~ãíÛ\'—y5ÆA¹@°)ÊŸR_6¬v }li–Ja³j‚ÜYÒE=Öâƒö	·KU•ö†ß¦³=34Ù”èDiJŞ†[qå°|¨ªµ¸`NÌòl;H(íl_\'=ƒíšcÙãÏ¼ÒûÉ>,±5§ø&gl6`PäYxâØ©DÛBºÜ§¢ÅõÔ(Ú‰Ú¡\\:£v®~ıuiHS$Ö—–¶É®¦½ÅU§K‚ÙN¸acøN½	A87°Î—\\ã‚Ùå£!™Šm†[ĞúüY-ncehóEÛUŞNéñõ¢\"ó\0õ}-\0Á-\'JRË7Â?v‘áÌ!,9ğf	,ˆ®@“\ZŒ@vONÛg0®/zue1ƒTÊØÆûGåö>Uó6f…£÷—Á`‰I®–H•Ê­ì¢O“?8!mùáŸTV`©~É7`›$ß0ß®¹v«İô$¾ÜµpËg$¤ŠA¶Áâù\ZDdRİ©ß·áEÌ\0ôÅˆû’‘ÿ`Ft‹—ï…Õâõğì\n›ı9³ø‡ËjÀÛd´Û—ÒªOášã=Ê¤\n]L\0kß•øÅ©IÛ5lås¶\r¥JÙ5j–•S52*•&¸´ƒMÚèãàØòÀõÆIù{	üSSÅ8–;êy@³ŠHC×˜âYÌrZKçFÑòz„­®eXöœ™Ndõà\"?#ÿöJ±i‘$5ßª¤ÌİM¹Ô¯\0û‰?4·MŠÖckÈ…S\"%oç†°¤½2`g±äÃQhÍ9!™ãÓK0ß>]`%:2ş!-Oÿ¸.Ï2E×­dê”1Š^Á[)AèªZÿGmó…ëë=I\nfÌ³Ì•¯û…àµÚ¨õ=ğ‘†;23ÇÍw‰½<—ÕL¡äˆ¬•5kÉÏc34ñ³øŒÑæ–&&ÙR\Z-ŸW\n32ø-÷Ëhß¼gôz4++ú·ÿÅÑÄe°ŸòG[6ı°ùJ†ñR/`‡æs““iğ<BJo²šòyt¿bß…é±VÊ™è—xWŠ‡\raùjU)çF|ó\0Â+A‰«MÖŸ:Ç%ùv•iç€)PÂ4ÄèA\Z0ñ…şÁA±ÈTüïB&¹5]bnÈ„|ïU¥TVWså9á’-PşU\"Oõs¬zYP¥9ûÓôÚÂ’Eá”:=}ömÑÕ¨°Oõ7é|¶RÔwjVT <hûÒ†,”o‘q&ºn*–TÄ¨','1:q6Pwjğ55ÉhO—>šëlY\r•Á)JÿLå}›‡AV‹5\Z— f•B€z¥eKøI5ïœ4tÈzíî`“]5£^ùcÎ wßi‡˜}¢¬$F—;lÙbØìšÊGÖ‹“äG.æ6¢îåK³åœ´^¾ÿõ€Lƒˆ¿:Bèa=\Z=¤¯¢¼¥ü\0Öÿ´P¿¹…ıhóËê¢ãû˜ôSß÷M¡A•¬ñÍÔÁDï}“7@“Šb±bŒ-dğ›¹I}&}E¶¸ñiÚ¥7*¿ÍAÊ•j=_Ddôfy†òIÊŠœ{£ÛWèB=ø~‘I¤9°ë¥a\nûÂåŠû»$=è®#\ZÏ¥?<¤A¼ˆ-ÿ>œQªy¦irŠY¾ût‰Am/ï¾íÊ¿½UüÏÅvD©´/Ò·7zEøRW&2\ZÊA½\"¯£œ1›ö‚ Œ#Š¨,ÿô 2ÜŞ¢ì×É|ùx5j=Í\\Û­Úú·ßÜíÄx»l–;Š²öÍÚ§µøÏùšn¨©Ã;$…ECº@ƒÛğÓÈ2Cè?2ìE‡­N‹aa·{<­TTûİ°Ê¶\r‚ª¾ÿ·Z£°ÂópÈP^q;’sÓ~É£Ù=‰Ï†&Êk¤7ÊÉ›”/\ZõbÇóª;ã~Îö…û8*Iô~!2ÍIg?­Ï#Y\rV~9W©×¬\'qB­YB”sE˜ğ 90‡½şq7ÑiúÓ´yóŠ$Ì‚¯g‰ÉOâ@…=_‹ËNJFÙğÃÿUD\Zş—ü=Á³Øcd¥UğVùşš7åéíz,nê9w~İ,C4¾M¶:©o£>Üàèwcp¹·¤…^{ôˆwæårQ–Ër=çcLe´79š<Ğ¨6ÕQñ^ÜÎ}Ç\'–•·ğc!™ÿTOcÜø¬á¶´ÕZ¹¡Û=ŠA,­^¹²5x~ë=.VûÙ[h“YİnªMf¯8Æõ]—ÑœøIUíşŞ\"¸ßlÌztu ãi”M™·ãÖ(a¼À:äß\ZlZY[¸è8eªÅ«° sE]~ó_}\rÉ° {\r«ÒÏgÔ—^iJ¢ßhm¤ååä<°½Û{‘[ÈKe0^›,…\\2u\r²JÆiñb]^§6L:Õ¹5EÁ}T’àzûµ5Àït“ÕÏAƒAéı‘yıñÜS”Ó$³9zÍ\nSeåì\rfä¹q£¾Ó‡JÍ¶;K6ÂªVv&\'\"!Z¼z–\rÛ³ß¦®†§ôA%¦ï‹e…ÊRâËÜAöµ§ÖºNRfÎxñ£¶\\£å‘°ú‚RÃl¹Ã¤tAï ^ÓËÕŠºäNíÏ@Î*N¥ğxlÃ]\r·ì†ò95ÅLQÚÄeÊKR›5½ÙÆo3\Z¾¯„L¡éôúE1—Õ-îvÎ°í«\0œNnÙKBÎ`PÀºoJEŠ+ZãOŸ[;$Gñ‚óH\nò»eiĞ>/³JÈ”ÊBÅh©ÁºµG`š’¢VI4’…àÆyùñ‘©¥	©ÃübŒ&¾{áü]ıƒåëd\rYw¼éQ«]øG¿SàìO9Ãö²\nÇ,Ğz/@‰rBÙ¤ƒªœ-D»^te{©&ÈLqıÎŸA’´p1wfFâº·ŒK–.ê[:-n¢ïö:2Fîœ±aÒ‡ô\'ß¥PJSJ˜İ©WÂ+4JP°«pW:™ŒİÓ—	µ½¼¸Ş-Qæ,Ô_¬rhĞÀ¬~¥EMóÔÅ 5\n^ğU6\'3™½]3m®ãşŸ•LwcÛO\n¢‡»¶ÉXæø^¯ïé¬O4ıWAıß:°Îî§&Ğ¤ã\"ƒøDyÔq‹şæE®Ã¡ÏOc·°WqÅ“MUgÕ9O‹ËŒõ’gú¯æ•«‹Ö7ˆW˜ŠÁa5	 †Âƒ°Í¾6„~¼üäùT0ˆrĞd-Ÿ‹ùÑ›	˜]P‘©³š°DÔ#ëBØµé+L-Ş€N’æ¸6B>³\ZZï2q©±d}Ióİö™9Ç–\"»—”Å,©,‰‰','$.­ˆ«\\¼Œî^ÊÂ<»yÆ‰µ„dä<±OÁÎÂc!¡ùf‰õT8OãT{5LH¼H#Õ#—ÿy -“‚òÓ±õ‰÷CÊóF>‡6zA§g	‡™ğ~˜£ ¹YüU\"”ñO€ç#–œ¹¤Ÿ°îZ]åeWÚ>rØ/¬å0‘ÕşÈ¢şWï=ş¯{uMq]‚V1\Ziru¯ÂÜk„¾£¶©Ûè\nÙ$„™«K”èÆÃúÅ°ğ\0ÖW>ê¥ö‡rª‰šBŞBf:½Ôî\\äõ±°&újƒÈe­k|I†¹ç#ğ½aŒÙm[HpÙâà… ”_T¿»¿ëüé\ZóƒJÖIşšª´¡j\ZŸJVû£c»³çñòBàáÚ¼ 3Ù‚Û¤\ZMçÚv)QÑ!ŒÒge÷’ğ³e²oXKı3‡‡ü^Î^(ï©\0ô |ëÜAâœcùS.|„­	*t647oY‹)XŒ4pÈI¸òÉĞtDÛÄw\"â¡‰xšS„³…P.\\¨¸3>ıÍ¨¶7ôıWŒ‡õ\n¹DÏş‚ ŒÀD#Ğ©Ù¢îÁ\\DpÎíµ°zñ¡ÇxÇ2`Çº&*âï¡İé¾Ò\\3u\0Ù“c1:xd•\rB5-fyt¢Z	ˆq¬¦Ü‰vÛXÄ>’O´Mğ×N …¨ø\nÛYD\n{lB«}±©%}+±vØ@Ğ4w#é”İù(ÓÊ|c­\rÙâşQ‹z¢ôšÌ‘K¤6îEÏ\nœÁïò0$Lõ¬wu§z=ÚÒcúØ¯ö×µÑmæ\r“„YĞn¬©-9nñm¦ ş£¨úèy†¯‹ŸCC×¨ŠÕ»Tè<©+±‹äàË¬\ZQ^r)6·ì_J£·‰£k8Åµ˜4à‘Ó+0§¤\n#“™-e[¡P&*jµ¥Ôº<ÌTˆ&j}Ö<êÎ”HY[ñ™\0Òà2ÜÉÿõ¡‚ªn	ò®ë,zFÕ£ÎB%dş$Ä?Ô™­X¬ÉıHÛ	æQ#ù¢¸tt)²6fÆ+å\0£óÔAã&œ“B%Y…z’dA÷©Š[I«¢ÂSëŸg\Zeˆnşôí%È`ü«qÎ@_fçT®öH,£–Ô¡º.^ ğN)Ø–¯/6oÖB_oš°[Dú!èùTF¥§á½Æ²	s¢-ÎùFb·ğô¨«	7ÅbgŠNbÎÕ\Zl•HçSª•Ìğ–|à5¼=¬$Z¤´çæ#¶Îl	Ã&.l\rÚãüWØ—&J§å©Öë,¾aÅ	½¬cO‰äNöbÕó ĞËJSz¾[äAuÚ2·gSEÌ;T\nAôÃj)•¤]^Ä¹Úÿ*<=Ê¡ók‘RZğ4-MÄ‰³ÚJÇ‡YÃóV`˜…w3Œ±-«^Û›í7³ÄNÔÈeä²9Mö¬¨ÌóRÒ^¸õÙp¦Û²ÙÿÛyÙs½LåoÁ³Z<ìÏˆ- Í‚òëŒY¸yQı®¢‡7çÈ©®K´0“é’6>úš46Öd8ÏÒ&0îJ@,xı®—$iwzéHko·;ŸEàÌQEä§5ÏIÖY1úÿ@	ácC¹”*:FîQÒÏˆ¦ûXÔô¤æÏ*9å½4Iô6.HJú/tYŒÒ Mü…¢Yë?¦åòvQÁá¨J¤ÿûr¿Ô<ø4\nYÇØ€_Í”•zØ` µpBA1Kÿ¼Šhc„LæxME(ùï	à>x¤m{\0*ö]|	X%ï…Ê<Ú[e¾/“ıî_&_™Øªá\rÇßİ†{ÉÏ}qĞ(„ö9•)ßæ¦½å³ÊşÀÌù¯{‰„´Ç<$W0Y,oŠTûJrtïIÕ¤+tè)·_ÉgHÆè.ı•¸Â.¨±ñÖŠú)Íñ»E\r„»páÉ!:’Z¹şòã¡”Ş¨’.¢\0ƒİŠ>o/\0~ŠÜ±ëôpÅz¿Ş‡}t´ö©q”t„o}6iÎs¸v·ã-?mãï*Û@g[ÕYÉ0/€ìû©Ã§Dw³.Ëú¤]Á~Æ¢³zañ%¬X[ùÏ2zeø&ĞOíØ\"hhDkñ¯°p;n','a24325b6e1c427f6a439532f1c4cbc5bcbee5560','Sender','1','accepted','perform','accept','nakku@gmail.com');

/*Table structure for table `serverthree` */

DROP TABLE IF EXISTS `serverthree`;

CREATE TABLE `serverthree` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `Filename` varchar(200) DEFAULT NULL,
  `File` text DEFAULT NULL,
  `Fileencdata1` longblob DEFAULT NULL,
  `Fileencdata2` longblob DEFAULT NULL,
  `Fileencdata3` longblob DEFAULT NULL,
  `Trapdoor` varchar(200) DEFAULT NULL,
  `OwnerType` varchar(100) DEFAULT 'sender',
  `Userid` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `Attack` varchar(100) DEFAULT 'perform',
  `Filerequest` varchar(100) DEFAULT 'pending',
  `Receiver` varchar(100) DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `serverthree` */

insert  into `serverthree`(`id`,`Filename`,`File`,`Fileencdata1`,`Fileencdata2`,`Fileencdata3`,`Trapdoor`,`OwnerType`,`Userid`,`status`,`Attack`,`Filerequest`,`Receiver`) values (1,'file.txt','file is the worlds largest videosharing platform with millions of videos uploaded every day However not all users are able to fully understand the spoken content of these videos especially those with hearing impairments or language barriers Thats where a YouTube transcript generator web application comes in hand','—‰áºõ‹a:z:vñí\no„ËéÄYç.Le‘ÛÒ˜×ëleç>4zk ôLá\"K ©µİãYM_\")–.ğŠâİ0{ÅV÷™¾R«î¥¥Üú?Z±>‡Äñà‰HqrŒn8rcs¢²³L/à-êĞ³ğî}Ë_ŠÍµ¢§Í’>órÎ“[4ÏúñW³ØJ¯¥ÇĞOÛ?Õg—Êõ$\0Â«¬šÜÕUşwx§õÉŸ””ÎBL“j9’#¥‡°¸çìØ‘á®á«\nıwP‡A3ªA\0ª\"$%’¢Åí•`j;·wu.})dW°|Ÿò`P7ºFC“èQI ÑÉ\0Éë/‚şÇÈ|œÛÊèlõV\0êd\\2ìÖGx*M‰´e\"è3š7G¯ Ù§ÉëIµ','—‰áºõ‹a:z:vñí\no„ËéÄYç.Le‘ÛÒ˜×ëleç>4zk ôLá\"K ©µİãYM_\")–.ğŠâİ0{ÅV÷™¾R«î¥¥Üú?Z±>‡Äñà‰HqrŒn8rcs¢²³L/à-êĞ³ğî}Ë_ŠÍµ¢§Í’>órÎ“[4ÏúñW³ØJ¯\'Êeõp×l‰ˆŠ;Šì','1‰\ZAh¬Ş8ê&àhÂ¡ìƒ­6é}ŞÚñ#AÖª Œn«&gª’ğ!\ZøÎÏ«H[öÂDüF?ÃAĞÇ½yı¿.WyšL‹¶Ô‰çIWÕPC˜L€™Ş|Qé‡Ø¢Ïk\">¡çàZ©ı\"„î­ã!?h÷^~MA|Ë`ü,q«º(\"+)gÔSzêÚÓö»MÒkÂ™x;dü','eb16b40bf00d4167b438ae772ae2c63c027b7a76','sender','1','pending','perform','accept','nakku@gmail.com');

/*Table structure for table `servertwo` */

DROP TABLE IF EXISTS `servertwo`;

CREATE TABLE `servertwo` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `Filename` varchar(200) DEFAULT NULL,
  `File` text DEFAULT NULL,
  `Fileencdata1` longblob DEFAULT NULL,
  `Fileencdata2` longblob DEFAULT NULL,
  `Fileencdata3` longblob DEFAULT NULL,
  `Trapdoor` varchar(200) DEFAULT NULL,
  `OwnerType` varchar(200) DEFAULT 'sender',
  `userid` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `Attack` varchar(100) DEFAULT 'perform',
  `Filerequest` varchar(100) DEFAULT 'pending',
  `Receiver` varchar(100) DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `servertwo` */

insert  into `servertwo`(`id`,`Filename`,`File`,`Fileencdata1`,`Fileencdata2`,`Fileencdata3`,`Trapdoor`,`OwnerType`,`userid`,`status`,`Attack`,`Filerequest`,`Receiver`) values (1,'data.txt','file is the worlds largest videosharing platform with millions of videos uploaded every day However not all users are able to fully understand the spoken content of these videos especially those with hearing impairments or language barriers Thats where a YouTube transcript generator web application comes in hand','—‰áºõ‹a:z:vñí\no„ËéÄYç.Le‘ÛÒ˜×ëleç>4zk ôLá\"K ©µİãYM_\")–.ğŠâİ0{ÅV÷™¾R«î¥¥Üú?Z±>‡Äñà‰HqrŒn8rcs¢²³L/à-êĞ³ğî}Ë_ŠÍµ¢§Í’>órÎ“[4ÏúñW³ØJ¯¥ÇĞOÛ?Õg—Êõ$\0Â«¬šÜÕUşwx§õÉŸ””ÎBL“j9’#¥‡°¸çìØ‘á®á«\nıwP‡A3ªA\0ª\"$%’¢Åí•`j;·wu.})dW°|Ÿò`P7ºFC“èQI ÑÉ\0Éë/‚şÇÈ|œÛÊèlõV\0êd\\2ìÖGx*M‰´e\"è3š7G¯ Ù§ÉëIµ','—‰áºõ‹a:z:vñí\no„ËéÄYç.Le‘ÛÒ˜×ëleç>4zk ôLá\"K ©µİãYM_\")–.ğŠâİ0{ÅV÷™¾R«î¥¥Üú?Z±>‡Äñà‰HqrŒn8rcs¢²³L/à-êĞ³ğî}Ë_ŠÍµ¢§Í’>órÎ“[4ÏúñW³ØJ¯\'Êeõp×l‰ˆŠ;Šì','1‰\ZAh¬Ş8ê&àhÂ¡ìƒ­6é}ŞÚñ#AÖª Œn«&gª’ğ!\ZøÎÏ«H[öÂDüF?ÃAĞÇ½yı¿.WyšL‹¶Ô‰çIWÕPC˜L€™Ş|Qé‡Ø¢Ïk\">¡çàZ©ı\"„î­ã!?h÷^~MA|Ë`ü,q«º(\"+)gÔSzêÚÓö»MÒkÂ™x;dü','eb16b40bf00d4167b438ae772ae2c63c027b7a76','sender','1','pending','perform','accept','nakku@gmail.com');

/*Table structure for table `userregistration` */

DROP TABLE IF EXISTS `userregistration`;

CREATE TABLE `userregistration` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `passcode` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pincode` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `userregistration` */

insert  into `userregistration`(`id`,`usertype`,`name`,`passcode`,`dob`,`gender`,`contact`,`email`,`address`,`pincode`) values (1,'sender','preeti','1234','06-09-1998','female','9685745896','preeti@gmail.com','bangalore','585306'),(2,'receiver','nakku','1234','07-02-2019','female','9876545678','nakku@gmail.com','bangalore','560060');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
