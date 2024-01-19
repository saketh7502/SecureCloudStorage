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

insert  into `serverone`(`id`,`Filename`,`File`,`Fileencdata1`,`Fileencdata2`,`Fileencdata3`,`Trapdoor`,`OwnerType`,`Userid`,`status`,`Attack`,`Filerequest`,`Receiver`) values (2,'requirements.txt','absl-py==0.13.0\r\naltair==4.1.0\r\nargon2-cffi==20.1.0\r\nart==5.2\r\nasgiref==3.4.1\r\nastor==0.8.1\r\nastunparse==1.6.3\r\nasync-generator==1.10\r\natomicwrites==1.4.0\r\nattrs==20.3.0\r\nBabel==2.9.1\r\nbackcall==0.2.0\r\nbackports.entry-points-selectable==1.1.0\r\nbackports.zoneinfo==0.2.1\r\nbase58==2.1.0\r\nbleach==3.3.0\r\nblinker==1.4\r\ncached-property==1.5.2\r\ncachetools==4.2.2\r\ncertifi==2021.5.30\r\ncffi==1.14.5\r\ncharset-normalizer==2.0.4\r\nclang==5.0\r\nclick==7.1.2\r\ncolorama==0.4.4\r\ncomtypes==1.1.10\r\ncycler==0.10.0\r\ndataclasses==0.8\r\ndecorator==5.0.7\r\ndefusedxml==0.7.1\r\ndistlib==0.3.2\r\nDjango==3.2.6\r\nentrypoints==0.3\r\net-xmlfile==1.1.0\r\nfacenet-pytorch==2.5.2\r\nfilelock==3.0.12\r\nFlask==1.1.2\r\nFlask-Mail==0.9.1\r\nflatbuffers==1.12\r\ngast==0.4.0\r\ngitdb==4.0.7\r\nGitPython==3.1.18\r\ngoogle-auth==1.35.0\r\ngoogle-auth-oauthlib==0.4.6\r\ngoogle-pasta==0.2.0\r\ngrpcio==1.40.0\r\nh5py==3.1.0\r\nhmmlearn==0.2.6\r\nidna==3.2\r\nimbalanced-learn==0.8.0\r\nimblearn==0.0\r\nimportlib-metadata==4.0.0\r\nimportlib-resources==5.2.2\r\niniconfig==1.1.1\r\nipykernel==5.5.3\r\nipython==7.16.1\r\nipython-genutils==0.2.0\r\nipywidgets==7.6.3\r\nitsdangerous==1.1.0\r\njedi==0.18.0\r\nJinja2==2.11.3\r\njoblib==1.0.1\r\njsonschema==3.2.0\r\njupyter==1.0.0\r\njupyter-client==6.1.12\r\njupyter-console==6.4.0\r\njupyter-core==4.7.1\r\njupyterlab-pygments==0.1.2\r\njupyterlab-widgets==1.0.0\r\nkeras==2.6.0\r\nKeras-Preprocessing==1.1.2\r\nkiwisolver==1.3.1\r\nMarkdown==3.3.4\r\nMarkupSafe==1.1.1\r\nmatplotlib==3.3.4\r\nmistune==0.8.4\r\nmysql-connector==2.2.9\r\nmysqlclient==2.0.3\r\nnbclient==0.5.3\r\nnbconvert==6.0.7\r\nnbformat==5.1.3\r\nnest-asyncio==1.5.1\r\nnotebook==6.3.0\r\nnumpy==1.19.5\r\noauthlib==3.1.1\r\nonetimepad==1.4\r\nopencv-python==4.5.1.48\r\nopenpyxl==3.0.7\r\nopt-einsum==3.3.0\r\npackaging==20.9\r\npandas==1.1.5\r\npandocfilters==1.4.3\r\nparso==0.8.2\r\npickleshare==0.7.5\r\nPillow==8.2.0\r\nplatformdirs==2.2.0\r\nplotly==5.1.0\r\npluggy==0.13.1\r\nprogress==1.6\r\nprometheus-client==0.10.1\r\nprompt-toolkit==3.0.18\r\nprotobuf==3.17.3\r\npy==1.10.0\r\npyarrow==5.0.0\r\npyasn1==0.4.8\r\npyasn1-modules==0.2.8\r\npycparser==2.20\r\npycryptodome==3.11.0\r\npydeck==0.6.2\r\nPyEmotion==1.0.0\r\nPygments==2.8.1\r\nPyMySQL==1.0.2\r\npyparsing==2.4.7\r\npypiwin32==223\r\npyrsistent==0.17.3\r\npytest==6.2.4\r\npython-dateutil==2.8.1\r\npyttsx3==2.90\r\npytz==2021.1\r\npywin32==300\r\npywinpty==0.5.7\r\npyzmq==22.0.3\r\nqrcode==7.3\r\nqtconsole==5.0.3\r\nQtPy==1.9.0\r\nrequests==2.26.0\r\nrequests-oauthlib==1.3.0\r\nrsa==4.7.2\r\nscikit-learn==0.24.1\r\nscipy==1.5.4\r\nseaborn==0.11.1\r\nSend2Trash==1.5.0\r\nsix==1.15.0\r\nsklearn==0.0\r\nsmmap==4.0.0\r\nSpeechRecognition==3.8.1\r\nsqlparse==0.4.1\r\nstreamlit==1.0.0\r\ntenacity==8.0.1\r\ntensorboard==2.6.0\r\ntensorboard-data-server==0.6.1\r\ntensorboard-plugin-wit==1.8.0\r\ntensorflow==2.6.0\r\ntensorflow-estimator==2.6.0\r\ntermcolor==1.1.0\r\nterminado==0.9.4\r\ntestpath==0.4.4\r\nthreadpoolctl==2.1.0\r\ntoml==0.10.2\r\ntoolz==0.11.1\r\ntorch==1.9.0\r\ntorchvision==0.10.0\r\ntornado==6.1\r\ntraitlets==4.3.3\r\ntyping-extensions==3.7.4.3\r\ntzdata==2021.2.post0\r\ntzlocal==3.0\r\nurllib3==1.26.6\r\nvalidators==0.18.2\r\nvirtualenv==20.7.2\r\nwatchdog==2.1.6\r\nwcwidth==0.2.5\r\nwebencodings==0.5.1\r\nWerkzeug==1.0.1\r\nwidgetsnbextension==3.5.1\r\nwrapt==1.12.1\r\nxgboost==1.4.2\r\nxlrd==2.0.1\r\nxlsx2html==0.4.0\r\nzipp==3.4.1\r\n','1:q6Pwj�55�hO�>��lY\r���)J�L�}��AV�5\Z��f�B�z�eK��I5�4t�z��`�]5�^�c� w�i��}���$F��;l�b���G֋��G.�6���K�圴^����L����:B�a=\Z=������\0���P����h�������S��M�A������D�}�7@��b�b�-d�I}&}E����iڥ7*�͞Aʕj=_Dd�fy��Iʊ�{��W�B=�~�I�9��a\n�����$=��#\Zϥ?<�A��-�>�Q�y�ir�Y��t�Am/��ʿ�U���vD��/ҷ7zE�RW&2\Z�A�\"���1��� �#��,��� 2�ޢ���|�x5j=�\\ۭ�������x�l�;����ڧ�������n���;$�EC�@������2C�?2�E��N�a�a�{<�TT�ݰʶ\r�����Z����p�P^q;�s��~ɣ�=�φ&�k�7��ɛ�/\Z�b��;�~����8*I�~!2�Ig?���#Y\r�V~9W����\'qB�YB�sE��90���q7�i���y�$̞��g��O�@��=_��NJF����UD�\Z����=���cd�U�V���7���z,n�9w~�,C4�M�:�o�>���wcp����^{�w��rQ��r=�cLe�79�<Ш6�Q�^��}Ǎ\'����c!��TOc������Z���=�A,�^��5x~�=.V��[h�Y�n�Mf�8��]�ќ�IU���\"��l�ztu �i�M����(a���:��\ZlZY[��8e�ū��sE]~�_}\rɰ�{\r���gԗ^iJ��hm����<���{�[�Ke0^�,�\\2u\r�J�i�b]^�6L:չ5E�}T��z��5��t���A�A���y���S��$�9z�\nSe��\rf�q��ӇJͶ;K6ªVv&\'\"!Z��z�\r۳ߦ����A%��e��R���A���ֺNR�f�x�\\������R�l���tA�^�ːՊ��N��@�*N��xl�]\r���95�LQ���e�KR�5���o3\Z���L����E1��-�vΰ�\0�Nn��KB�`P��oJE�+Z�O��[;$G��H\n�ei�>/�JȔ�B�h����G`���VI4����y�����	���b�&�{��]����d\rYw��Q�]�G�S��O9����\n�,�z/@�rB٤���-D�^te{�&�Lq��ΟA��p1wfF����K��.�[:-n���:2F��a҇�\'ߥPJSJ�ݐ�W�+4JP��pW:���ӗ	�����-Q�,�_��rhО��~�EM��Š5\n^�U6\'3��]3m�����Lwc�O\n������X��^���O4�WA��:���&Ф����\"��Dy�q���E�á�Oc��WqœMUg�9O�ˌ��g��敫��7�W����a5	 �����6�~����T0�r��d-���ћ	�]P�����D�#�Bص�+L-ހN���6B>�\ZZ�2q��d}I���Kõ�]�����a�d_�l�W�\\L�M�(AШV�e�h�l��<�HR�=W玛�:P/�%�)��+��������MC��x0�(zlh��m�$�|J�.p,D\Z��$��\0slllJ�Q����\Z��)���5}�ZK^��+k=�Tf�u�#0���Y������t\Zg����7!��B��j2|0>_����M?N`�L��~PLb������3{�۬�K���Q��>\Z���hF3�1Y�+�7����j����#$�ȃM�W}��}�Vv,:�o�x����M(0\0.��qJ��!q6�PP\\�;��X{�G��痽�mio�*\rx���{\\z%�ll�Pw�w�[��.�&4��\"�V�Õ~{Sv;5�\\��wz�\"�J��P�(�i\\Fo�cx����ў� _^B,��m���aM�I���w��K♎ޯ��3�5j�1J�j���7���CN�>������Q��,˛I����!P�_(�7�ř6�q���\r]��^��m� ]��l��\0�畽�5̠?��\\4���\\%�!v�-��R����d@��D����.O���\"\0_��dXk��C�.���c���OH\'%4-��N#�����gSo�̥���~���\'�y5�A�@�)ʟR_6�v�}li�Ja�j��Y�E=���	�KU���ߦ�=34ٔ�Di�Jކ[q�|����`N��l;H(��l_\'=���c���ϼ���>,�5��&gl6`P�Yx�ةD�B�ܧ����(ډڡ\\:�v�~�uiHS$֗��ɮ���U�K��N�ac�N��	A87�Η\\���!���m�[���Y-nceh�E�U�N����\"�\0�}-\0�-\'JR�7�?v����!,9�f	,��@�\Z�@vON�g0�/zue1�T����G��>U�6f�����`�I��H����O�?8!m���TV`�~�7`�$�0߮�v���$�ܵp�g$��A����\ZDd�Rݩ߷�E�\0�ň����`Ft��������\n��9����j��d�۝�ҪO��=ʤ\n]L\0kߕ�ũI�5l�s�\r�J�5j��S52*�&���M���������I�{	�SS�8�;�y@��HCט�Y�rZK�F��z���eX���Nd��\"?#��J�i�$�5ߪ���M�ԯ\0���?4�M��ckȅ�S\"%o熰��2`g��ÍQh�9!���K0�>]�`%:2�!-O��.Ϗ2E׭d��1�^��[)A��Z�Gm����=I\nf̳̕����ڨ�=�;23��w��<���L�䈬�5k���c34�����&&�R\Z-�W\n32�-��h߼g��z4++������e�����G[6���J��R/`��s��i�<BJo���yt�b���Vʙ��xW��\ra�jU)�F|�\0�+A��M֟:�%�v�i�)�P�4ď�A\Z0���A��T��B&�5]bnȄ|�U�TVWs�9�-P�U\"O�s�zYP�9����E��:=}�m�ը�O�7�|�R�wjVT <h��҆,�o�q&�n*�TĨ','1:q6Pwj�55�hO�>��lY\r���)J�L�}��AV�5\Z��f�B�z�eK��I5�4t�z��`�]5�^�c� w�i��}���$F��;l�b���G֋��G.�6���K�圴^����L����:B�a=\Z=������\0���P����h�������S��M�A������D�}�7@��b�b�-d�I}&}E����iڥ7*�͞Aʕj=_Dd�fy��Iʊ�{��W�B=�~�I�9��a\n�����$=��#\Zϥ?<�A��-�>�Q�y�ir�Y��t�Am/��ʿ�U���vD��/ҷ7zE�RW&2\Z�A�\"���1��� �#��,��� 2�ޢ���|�x5j=�\\ۭ�������x�l�;����ڧ�������n���;$�EC�@������2C�?2�E��N�a�a�{<�TT�ݰʶ\r�����Z����p�P^q;�s��~ɣ�=�φ&�k�7��ɛ�/\Z�b��;�~����8*I�~!2�Ig?���#Y\r�V~9W����\'qB�YB�sE��90���q7�i���y�$̞��g��O�@��=_��NJF����UD�\Z����=���cd�U�V���7���z,n�9w~�,C4�M�:�o�>���wcp����^{�w��rQ��r=�cLe�79�<Ш6�Q�^��}Ǎ\'����c!��TOc������Z���=�A,�^��5x~�=.V��[h�Y�n�Mf�8��]�ќ�IU���\"��l�ztu �i�M����(a���:��\ZlZY[��8e�ū��sE]~�_}\rɰ�{\r���gԗ^iJ��hm����<���{�[�Ke0^�,�\\2u\r�J�i�b]^�6L:չ5E�}T��z��5��t���A�A���y���S��$�9z�\nSe��\rf�q��ӇJͶ;K6ªVv&\'\"!Z��z�\r۳ߦ����A%��e��R���A���ֺNR�f�x�\\������R�l���tA�^�ːՊ��N��@�*N��xl�]\r���95�LQ���e�KR�5���o3\Z���L����E1��-�vΰ�\0�Nn��KB�`P��oJE�+Z�O��[;$G��H\n�ei�>/�JȔ�B�h����G`���VI4����y�����	���b�&�{��]����d\rYw��Q�]�G�S��O9����\n�,�z/@�rB٤���-D�^te{�&�Lq��ΟA��p1wfF����K��.�[:-n���:2F��a҇�\'ߥPJSJ�ݐ�W�+4JP��pW:���ӗ	�����-Q�,�_��rhО��~�EM��Š5\n^�U6\'3��]3m�����Lwc�O\n������X��^���O4�WA��:���&Ф����\"��Dy�q���E�á�Oc��WqœMUg�9O�ˌ��g��敫��7�W����a5	 �����6�~����T0�r��d-���ћ	�]P�����D�#�Bص�+L-ހN���6B>�\ZZ�2q��d}I����9ǖ\"����,�,��','$.���\\���^��<�yƉ��d�<��O���c!��f��T8O�T{5LH�H#�#��y -���ӱ���C��F>�6zA�g	���~�� �Y�U\"��O��#�������Z]�eW�>r�/��0���Ȣ�W�=��{uMq]�V1\Ziru���k�������\n�$���K�����Ű�\0��W>���r���B�Bf:���\\����&�j�ȝe�k|I���#��a��m[Hp���� �_T������\Z�J�I�����j\Z�JV��c�����B��ڼ�3قۤ\ZM��v)Q�!��ge����e�o�XK�3���^�^(�\0� |��A�c�S.|��	*t647oY�)X�4pȝI����tD��w\"⡉x�S���P.\\��3>����7��W���\n�D������D#Щ٢��\\Dp��z��x�2`Ǻ&*�����\\3u�\0ٓc1:xd�\rB5-fyt�Z	�q��܉v�X�>���O�M��N ���\n�YD\n{lB��}��%}�+�v�@�4w#���(��|c�\r���Q�z���̑K�6�E�\n����0$L��wu�z=ځ�c�د�׵�m�\r��Y�n���-9n�m��������y����CCר�ջT�<�+����ˬ\ZQ^r)6��_J����k8���4���+0��\n#��-e[�P&*j��Ժ<�T��&j}�<�ΔHY�[�\0��2����������n	��,zF���B%d�$�?���X���H�	�Q#���tt)��6f�+�\0���A�&��B%Y�z�dA���[I���S럝g�\Ze�n���%�`��q�@_f�T��H,�����.^ �N)ؖ�/6o�B_o��[D�!��TF���Ʋ	s�-��Fb�����	7�bg�Nb��\Zl�H�S��̞�|�5�=�$Z����#��l	�&.l\r���Wؗ&J����,�a�	��cO��N�b�� ��JSz�[�Au�2�gSE�;T\nA���j)��]^Ĺ��*<=ʡ�k�RZ�4-Mĉ��J�ǇY��V`��w3��-��^ۛ�7��N��e�9�M�����R�^���p�۲���y�s�L�o��Z<�ψ-�͂��Y�yQ����7�ȩ�K�0��6>��46�d8��&0�J@,x���$iwz�Hko�;�E��QE��5�I�Y1��@	�cC���*:F�Q�ψ��X�����*9�4I�6.HJ�/tY�� M���Y�?���vQ���J���r��<��4\n�Y�؎�_͔�z��` �pBA1K���hc�L�xME(��	�>x�m{\0*�]|	X%��<�[e�/���_&_�ت�\r��݆{��}q�(��9�)�榽�������{����<$W0Y,o�T�Jrt�Iդ+t�)�_�gH��.����.���֊�)��E\r��p��!:�Z���㡔ި�.�\0���>o/\0~�����p�z�އ}t���q�t�o}6i�s�v��-?m��*�@g[�Y�0/����çDw�.���]�~Ƣ�za�%�X[��2z�e�&�O��\"hhDk�p;n','a24325b6e1c427f6a439532f1c4cbc5bcbee5560','Sender','1','accepted','perform','accept','nakku@gmail.com');

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

insert  into `serverthree`(`id`,`Filename`,`File`,`Fileencdata1`,`Fileencdata2`,`Fileencdata3`,`Trapdoor`,`OwnerType`,`Userid`,`status`,`Attack`,`Filerequest`,`Receiver`) values (1,'file.txt','file is the worlds largest videosharing platform with millions of videos uploaded every day However not all users are able to fully understand the spoken content of these videos especially those with hearing impairments or language barriers Thats where a YouTube transcript generator web application comes in hand','������a:z:v��\no����Y�.Le�ېҘ��le�>4zk �L�\"K�����YM_\")�.����0{�V���R���?Z�>�����Hqr�n8rcs���L/�-�г���}�_�͵��͒>��rΓ[4���W��J����O�?�g���$\0������U�wx��ɟ���BL�j9�#������ؑ���\n�wP�A3�A�\0�\"$%����`j;�wu.}�)dW�|��`P7�FC��QI���\0��/��ǝ�|����l�V\0�d\\2��Gx*M��e\"�3�7G���٧��I�','������a:z:v��\no����Y�.Le�ېҘ��le�>4zk �L�\"K�����YM_\")�.����0{�V���R���?Z�>�����Hqr�n8rcs���L/�-�г���}�_�͵��͒>��rΓ[4���W��J�\'�e�p�l���;��','1�\ZAh���8�&�h¡샭6�}���#A֪��n�&g���!\Z��ϫH[��D�F?�A�ǽ�y��.Wy�L��ԉ�IW�PC�L���|Q����k\">���Z��\"���!?h�^~MA|�`�,q��(\"+�)g�Sz�ڏ���M�kx;d�','eb16b40bf00d4167b438ae772ae2c63c027b7a76','sender','1','pending','perform','accept','nakku@gmail.com');

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

insert  into `servertwo`(`id`,`Filename`,`File`,`Fileencdata1`,`Fileencdata2`,`Fileencdata3`,`Trapdoor`,`OwnerType`,`userid`,`status`,`Attack`,`Filerequest`,`Receiver`) values (1,'data.txt','file is the worlds largest videosharing platform with millions of videos uploaded every day However not all users are able to fully understand the spoken content of these videos especially those with hearing impairments or language barriers Thats where a YouTube transcript generator web application comes in hand','������a:z:v��\no����Y�.Le�ېҘ��le�>4zk �L�\"K�����YM_\")�.����0{�V���R���?Z�>�����Hqr�n8rcs���L/�-�г���}�_�͵��͒>��rΓ[4���W��J����O�?�g���$\0������U�wx��ɟ���BL�j9�#������ؑ���\n�wP�A3�A�\0�\"$%����`j;�wu.}�)dW�|��`P7�FC��QI���\0��/��ǝ�|����l�V\0�d\\2��Gx*M��e\"�3�7G���٧��I�','������a:z:v��\no����Y�.Le�ېҘ��le�>4zk �L�\"K�����YM_\")�.����0{�V���R���?Z�>�����Hqr�n8rcs���L/�-�г���}�_�͵��͒>��rΓ[4���W��J�\'�e�p�l���;��','1�\ZAh���8�&�h¡샭6�}���#A֪��n�&g���!\Z��ϫH[��D�F?�A�ǽ�y��.Wy�L��ԉ�IW�PC�L���|Q����k\">���Z��\"���!?h�^~MA|�`�,q��(\"+�)g�Sz�ڏ���M�kx;d�','eb16b40bf00d4167b438ae772ae2c63c027b7a76','sender','1','pending','perform','accept','nakku@gmail.com');

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
