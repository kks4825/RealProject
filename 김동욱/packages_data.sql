--------------------------------------------------------
--  ������ ������ - �����-3��-30-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PACKAGES
--------------------------------------------------------

  CREATE TABLE "PACKAGES" 
   (	"PACK_NO" NUMBER, 
	"PACK_TITLE" VARCHAR2(100), 
	"PACK_PRICE_KID" NUMBER, 
	"PACK_PRICE_ADULT" NUMBER, 
	"PACK_DESC" CLOB, 
	"PACK_CITY" VARCHAR2(300), 
	"PACK_DEPART" VARCHAR2(30), 
	"PACK_ARRIV" VARCHAR2(30), 
	"PACK_AIR" VARCHAR2(100), 
	"PACK_DETAIL" CLOB, 
	"TOUR_INFO" CLOB, 
	"TOUR_REF" CLOB, 
	"PURCHASE_CNT" NUMBER DEFAULT 0, 
	"IMAGE1" VARCHAR2(300), 
	"IMAGE2" VARCHAR2(300), 
	"IMAGE3" VARCHAR2(300), 
	"IMAGE4" VARCHAR2(300), 
	"IMAGE5" VARCHAR2(300), 
	"IMAGE6" VARCHAR2(300), 
	"IMAGE7" VARCHAR2(300), 
	"IMAGE8" VARCHAR2(300), 
	"IMAGE9" VARCHAR2(300), 
	"PACK_CATEGORY" VARCHAR2(50)
   )
REM INSERTING into PACKAGES
SET DEFINE OFF;
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (11,'[�������� �߸� 3�� 5��]',854820,949000,'�߸�','2017-4-15','2017-4-19','�����װ�',0,'�߸�.jpg','�߸�2.jpg','G.W.K ���絵 ����.jpg','��ư���.jpg','����ξ� ���ͺ�ο�.jpg','����ũ����.jpg','��� ����.jpg','���Ͷ� ���.jpg','���ͺ� ��ũ.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (12,'[��Ʈ�� Ư�� �ϳ���+�Ϸպ���+���� 3�� 5��]',553100,613000,'�ϳ���, �Ϸպ���','2017-4-18','2017-4-22','��Ʈ�� �װ�',0,'��������ڹ���.jpg','�ٵ���.jpg','����������.jpg','����.jpg','Ƽ�鼶.jpg','�Ϸպ��� ����.jpg','�Ϸպ���2.jpg','�Ϸպ���3.jpg','�Ϸպ���4.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (7,'[��Ű �����̾� ����Ʈ ���� 9��] (7�� 9��)',991800,999000,'�̽�ź��, ��Ű, ��ī��, ī�ĵ�Ű��, ��Ż��, �Ĺ�Į��, �����, ���̹߸�','2017-4-12','2017-4-20','�����װ�',0,'�׷�����ڸ�.jpg','��ȭ�� ��.jpg','������ ������.jpg','������.jpg','��������ũ.jpg','��ġ���縣.jpg','��������.jpg','�̺��̳���.jpg','Ʈ����.jpg','eu');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (6,'[���¸�/������ 2�� 8�� �������+�����ϱ�ȣ��] (6��8��)',2442440,2690000,'���Ͻ�, �븮��, ���Ͷ���, �������, �ж��, �Ƿ�ü, �θ�, �ǻ�, ����','2017-4-05','2017-4-12','�����װ�',2,'Vatican museums.jpg','Bridge of Sighs.jpg','Colosseum.jpg','Doge''s Palace.jpg','La Scala Theatre.jpg','Michelangelo hill.jpg','Piazza della Signoria.jpg','Pisa''s Duomo.jpg','San_Marco Church.jpg','eu');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (9,'[������ �������� 7��] (5��7��)',1690000,1690000,'�ٸ����γ�, ����, ��Ű, �׶󳪴�, �����, ��������, ���帮��, �緹��, �����','2017-4-17','2017-4-23','īŸ���װ�',0,'������ �ٸ�.jpg','�󸮿��Ÿ�.jpg','�д� ������.jpg','���󰡴뼺��.jpg','����߼���.jpg','�˹��̽�.jpg','���Ժ�����.jpg','����������.jpg','Ȳ���� ž.jpg','eu');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (10,'[����ũ/�븣����/������/�ɶ��� ������ 4�� 9��] (7�� 9��)',2728500,2990000,'�����ϰ�, ������, ������, ������, ����׽�, ���﷯, �Ǿ����, �÷�, �۳��ǿ����, ������, ���Ϸ�, Į��Ÿ��, ����Ȧ��, ����ũ, ���Ű','2017-4-14','2017-4-22','�ɶ��� �װ�, ���þ��װ�',0,'���� �Ÿ�.bmp','����ŷ �ڹ���.bmp','���̾� ���� �� ���� �ڹ���.bmp','��ֶ� ��������.bmp','�۳��ǿ丣��.bmp','�Ƹ��������ױ���.bmp','�����.bmp','ī�����ѽ� �Ÿ�.bmp','�������������� ��.bmp','eu');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (13,'[�̰����� 3�� 5�� ���ϰ���+����߰�]',1008350,1060800,'�̰�����','2017-4-15','2017-4-19','�̰��� �װ�, �����װ�, �ƽþƳ� �װ�',0,'�ַջ�����.jpg','���罺���̴�����.jpg','�Ӷ��̾� ����.jpg','��Ÿ�а���.jpg','����� �Ӷ��̾� Ÿ��.jpg','��Ƽ������.jpg','�ƽþ� ���� �ڹ���.jpg',null,null,'ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (14,'[Ư�� Ǫ�� 5�� ���̸ռ�+���ĸ�����] (3�� 5��)',720160,899000,'�±�(Ǫ��)','2017-4-17','2017-4-21','�ƽþƳ� �װ�, �����װ�',0,'Ǫ��2.jpg','Ǫ��1.jpg','�ξƸ�.jpg','���� ����Ʈ ����.jpg','������ ���.jpg','���ĸ� ����.jpg','���̸ռ�.jpg',null,null,'ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (26,'[�Ͽ��� Ư�� ����+�޾� 7��] (5�� 7��)',1948300,2290000,'[������] ȣ����','2017-4-20','2017-4-26','�ƽþƳ� �װ� ',0,'���̾Ƹ�� ��� ��ȭ��.jpg','���ɽ���Ŭ ���ϸ�.jpg','���ũ����.jpg','���º�ġ.jpg','��īī ����.jpg','������û��.jpg','�����׽þ� �μ���.jpg','�ȸ�������.jpg','ȭ�� ��������.jpg','am');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (27,'[ĳ���� ��Ű/���ν��� 9��(�Ϲ� 5�� ��������)] (7�� 9��)',2702000,2802000,'�þ�Ʋ, Ķ�Ÿ�, ī������Ű��, ����, ��� , ����ũ ���̽�, �罺�� , ��ư, ��Ʈ����ũ ��Ƽ , ���ν��汹������ , ��Ʈ Ȧ','2017-6-27','2017-7-05','��Ÿ �װ�',0,'�罺�� ��������.jpg','��� �� ��������.jpg','�Ÿӵ� ��õ.jpg','������.jpg','������������.JPG','�ƻ�ٽ�ī ����.jpg','���ν���ȣ��.jpg','��ȣ ��������.jpg','Ÿ����.JPG','am');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (20,'[�����/�Ƹ���Ƽ��/��� ���� �ٽ�3���� 11��] (7�� 11��)',5990000,5990000,'����-���Ŀ��-����(1)-�̰���(2)-�ο��뽺���̷���(1)-����(1)-����-�����(1)-��������-�����(1)-����-����-�̱�','2017-4-24','2017-5-04','�ƽþƳ��װ�,TAM�޸������װ�,�� ĥ���װ�',0,'�Ŵ뿹����.jpg','������.jpg','��������.jpg','�̶����η���.JPG','����̿͸�.jpg','�츮�׶�.jpg','�� ���׳׿� ����.jpg','�̰��� ����.jpg','����ī�ٳ� �ؾ�.jpg','am');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (21,'[į����� ���ڸ��� 3��5�� Ư�� 7��������]',516900,573800,'������','2017-4-10','2017-4-14','�����',0,'Ŭ����ȣ��.jpg','���̿� ���.jpg','���и��� ���.jpg','���丮�� ��ũ.jpg','���ڸ���.jpg','���ڸ���������.jpg','��Ʈ���� ���.jpg','����Ʈ�ٷ���.jpg','�ڳ����׶�.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (22,'[�����̽þ� ���������� �䳶 ���׸��������(Ư��) 5��](3��5��)',827200,1021000,'�䳶, ��˶��Ǫ��','2017-4-17','2017-4-21','�����̽þ��װ�',0,'�ض���.jpg','�����̽þ� �ձ�.JPG','��������.jpg','����.jpg','����Ÿ��.jpg','�䳶 ��.jpg','�䳶�뱳.jpg','��Ʈ�γ��� Ʈ��Ÿ��.jpg','ǪƮ���ھ�.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (19,'[�̱� �ܵ� �̼��� ���� 9��(3�� ĳ��+�󽺺��̰Ž�)] (7�� 9��)',1966500,2310000,'�������ý���, �似��Ƽ �������� , ����Ŀ���ʵ�, �󽺺��̰Ž�, �ٽ����, ����̽� ĳ�� , ���̾� ĳ�� , �׷���ĳ��, ���ø� , �ν��������� , �ֳ�����, ��Ʈ���� , �ֹ�, ����Ư��, ��ȣ�� ','2017-4-25','2017-5-03','�����װ� ',0,'17���� ����̺� �ڽ�.jpg','�׷��� ĳ��.jpg','��ĳ��ź.JPG','�似��Ƽ����.jpg','���̾�ĳ�� ��������.jpg','Ķ���� ������.jpg','����ġ ������.jpg','�ǼŸǽ�����.jpg','�渮���.JPG','am');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (24,'[�̾Ḷ ���/�ٰ�/��ȣ 5](3�� 5��)',1533900,1703800,'���, �ٰ�, ��ȣ','2017-4-16','2017-4-20','�����װ� ',0,'������ ���.jpg','���ٰ� �İ��.jpg','�������İ��.jpg','�Ƴ��� ���.jpg','�ƿ��� ��������.JPG','�η�ȣ��.JPG','ĭ���� ȣ��.jpg','ƿ�ιη� ���.jpg',null,'ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (25,'[����� �������� 6�� ��Ƽ��/���/���Ǫ���] (4��6��)',1048850,1103800,'��Ƽ��, ��������, ���','2017-4-21','2017-4-26','������',0,'��������.jpg','�����߽���.jpg','���.jpg','�һ����.jpg','�� ������.jpg','Ź�����.jpg','Ž������.jpg','Ž�ֵ���.jpg','ſ��ӻ��.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (23,'[�븸 �������� Ÿ������ ������ 3��4��]',507800,507800,'Ÿ������','2017-4-03','2017-4-06','�����װ�',0,'���� ��� �ڹ���.jpg','�����߽���.jpg','����.jpg','�߷� �ؾ����.jpg','��Ĳ��.jpg','������.jpg','Ÿ������ 101 ����.jpg',null,null,'ea');
--------------------------------------------------------
--  DDL for Index PACK_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PACK_NO_PK" ON "PACKAGES" ("PACK_NO")
--------------------------------------------------------
--  Constraints for Table PACKAGES
--------------------------------------------------------

  ALTER TABLE "PACKAGES" ADD CONSTRAINT "PACK_NO_PK" PRIMARY KEY ("PACK_NO") ENABLE
