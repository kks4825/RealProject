--------------------------------------------------------
--  파일이 생성됨 - 목요일-3월-30-2017   
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
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (11,'[자유일정 발리 3박 5일]',854820,949000,'발리','2017-4-15','2017-4-19','대한항공',0,'발리.jpg','발리2.jpg','G.W.K 가루도 공원.jpg','고아가자.jpg','누사두아 워터블로우.jpg','데이크루즈.jpg','우붓 마을.jpg','울루와뚜 사원.jpg','워터붐 파크.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (12,'[베트남 특가 하노이+하롱베이+옌뜨 3박 5일]',553100,613000,'하노이, 하롱베이','2017-4-18','2017-4-22','베트남 항공',0,'국립역사박물관.jpg','바딘광장.jpg','수상인형극.jpg','옌뜨.jpg','티톱섬.jpg','하롱베이 선상.jpg','하롱베이2.jpg','하롱베이3.jpg','하롱베이4.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (7,'[터키 프리미어 퍼펙트 일주 9일] (7박 9일)',991800,999000,'이스탄불, 터키, 앙카라, 카파도키아, 안탈랴, 파묵칼레, 에페소, 아이발릭','2017-4-12','2017-4-20','대한항공',0,'그랜드바자르.jpg','목화의 성.jpg','셀수스 도서관.jpg','쉬린제.jpg','오벨리스크.jpg','우치히사르.jpg','원형극장.jpg','이블레미나레.jpg','트로이.jpg','eu');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (6,'[이태리/스위스 2국 8일 융프라우+정규일급호텔] (6박8일)',2442440,2690000,'베니스, 취리히, 인터라켄, 융프라우, 밀라노, 피렌체, 로마, 피사, 꼬모','2017-4-05','2017-4-12','대한항공',2,'Vatican museums.jpg','Bridge of Sighs.jpg','Colosseum.jpg','Doge''s Palace.jpg','La Scala Theatre.jpg','Michelangelo hill.jpg','Piazza della Signoria.jpg','Pisa''s Duomo.jpg','San_Marco Church.jpg','eu');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (9,'[스페인 완전일주 7일] (5박7일)',1690000,1690000,'바르셀로나, 말라가, 터키, 그라나다, 세비야, 꼬르도바, 마드리드, 톨레도, 사라고사','2017-4-17','2017-4-23','카타르항공',0,'누에보 다리.jpg','라리오거리.jpg','론다 투우장.jpg','말라가대성당.jpg','세비야성당.jpg','알바이신.jpg','알함브라궁전.jpg','유대인지구.jpg','황금의 탑.jpg','eu');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (10,'[덴마크/노르웨이/스웨덴/핀란드 북유럽 4국 9일] (7박 9일)',2728500,2990000,'코펜하겐, 오슬로, 구드방겐, 레르달, 포드네스, 만헬러, 피얼란드, 플롬, 송노피오라네, 베르겐, 게일로, 칼스타드, 스톡홀름, 투르크, 헬싱키','2017-4-14','2017-4-22','핀란드 항공, 러시아항공',0,'브뤼겐 거리.bmp','바이킹 박물관.bmp','뵈이야 빙하 및 빙하 박물관.bmp','비겔란 조각공원.bmp','송네피요르드.bmp','아말리엔보그궁전.bmp','어시장.bmp','카를요한스 거리.bmp','프레데릭스보르 성.bmp','eu');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (13,'[싱가포르 3박 5일 전일관광+가든야경]',1008350,1060800,'싱가포르','2017-4-15','2017-4-19','싱가폴 항공, 대한항공, 아시아나 항공',0,'주롱새공원.jpg','가든스바이더베이.jpg','머라이언 공원.jpg','보타닉가든.jpg','센토사 머라이언 타워.jpg','시티갤러리.jpg','아시아 문명 박물관.jpg',null,null,'ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (14,'[특가 푸켓 5일 사이먼쇼+사파리투어] (3박 5일)',720160,899000,'태국(푸켓)','2017-4-17','2017-4-21','아시아나 항공, 대한항공',0,'푸켓2.jpg','푸켓1.jpg','팡아만.jpg','파통 나이트 투어.jpg','왓찰롱 사원.jpg','사파리 투어.jpg','사이먼쇼.jpg',null,null,'ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (26,'[하와이 특가 관광+휴양 7일] (5박 7일)',1948300,2290000,'[오아후] 호놀룰루','2017-4-20','2017-4-26','아시아나 항공 ',0,'다이아몬드 헤드 분화구.jpg','돌핀스노클 세일링.jpg','디너크루즈.jpg','선셋비치.jpg','아카카 폭포.jpg','주정부청사.jpg','폴리네시안 민속촌.jpg','팔리전망대.jpg','화산 국립공원.jpg','am');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (27,'[캐나다 로키/옐로스톤 9일(북미 5대 국립공원)] (7박 9일)',2702000,2802000,'시애틀, 캘거리, 카나나스키스, 밴프, 골든 , 레이크 루이스, 재스퍼 , 힌튼, 솔트레이크 시티 , 옐로스톤국립공원 , 포트 홀','2017-6-27','2017-7-05','델타 항공',0,'재스퍼 국립공원.jpg','라바 핫 스프링스.jpg','매머드 온천.jpg','몰몬성전.jpg','밴프국립공원.JPG','아사바스카 폭포.jpg','옐로스톤호수.jpg','요호 국립공원.jpg','타워폴.JPG','am');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (20,'[브라질/아르헨티나/페루 남미 핵심3개국 11일] (7박 11일)',5990000,5990000,'유럽-상파울로-리오(1)-이과수(2)-부에노스아이레스(1)-리마(1)-쿠스코-우루밤바(1)-마추피추-우루밤바(1)-쿠스코-리마-미국','2017-4-24','2017-5-04','아시아나항공,TAM메리디어널항공,란 칠레항공',0,'거대예수상.jpg','리오항.jpg','마추픽추.jpg','미라폴로레스.JPG','삭사이와만.jpg','살리네라스.jpg','엘 아테네오 서점.jpg','이과수 폭포.jpg','코파카바나 해안.jpg','am');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (21,'[캄보디아 앙코르왓 3박5일 특급 7가지혜택]',516900,573800,'씨엠립','2017-4-10','2017-4-14','에어서울',0,'클레앙호수.jpg','바이욘 사원.jpg','벵밀리아 사원.jpg','빅토리아 파크.jpg','앙코르왓.jpg','앙코르톰유적군.jpg','왓트마이 사원.jpg','웨스트바레이.jpg','코끼리테라스.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (22,'[말레이시아 동양의진주 페낭 샹그릴라골든샌즈(특급) 5일](3박5일)',827200,1021000,'페낭, 쿠알라룸푸르','2017-4-17','2017-4-21','말레이시아항공',0,'극락사.jpg','말레이시아 왕궁.JPG','바투동굴.jpg','뱀사원.jpg','죠지타운.jpg','페낭 힐.jpg','페낭대교.jpg','페트로나스 트윈타워.jpg','푸트라자야.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (19,'[미국 단독 미서부 일주 9일(3대 캐년+라스베이거스)] (7박 9일)',1966500,2310000,'샌프란시스코, 요세미티 국립공원 , 베이커스필드, 라스베이거스, 바스토우, 브라이스 캐년 , 자이언 캐년 , 그랜드캐년, 라플린 , 로스앤젤레스 , 애너하임, 몬트레이 , 솔뱅, 미주특식, 산호세 ','2017-4-25','2017-5-03','대한항공 ',0,'17마일 드라이브 코스.jpg','그랜드 캐년.jpg','엘캐피탄.JPG','요세미티폭포.jpg','자이언캐년 국립공원.jpg','캘리코 은광촌.jpg','페블비치 골프장.jpg','피셔맨스워프.jpg','헐리우드.JPG','am');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (24,'[미얀마 양곤/바간/헤호 5](3박 5일)',1533900,1703800,'양곤, 바간, 헤호','2017-4-16','2017-4-20','대한항공 ',0,'마누하 사원.jpg','쉐다곤 파고다.jpg','쉐지곤파고다.jpg','아난다 사원.jpg','아웅산 국립묘지.JPG','인레호수.JPG','칸도지 호수.jpg','틸로민로 사원.jpg',null,'ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (25,'[라오스 완전일주 6일 비엔티엔/방비엥/루앙푸라방] (4박6일)',1048850,1103800,'비엔티엔, 루앙프라방, 방비엥','2017-4-21','2017-4-26','진에어',0,'루앙프라방.jpg','몽족야시장.jpg','방비엥.jpg','불상공원.jpg','왓 씨엥통.jpg','탁발행렬.jpg','탐남동굴.jpg','탐쌍동굴.jpg','탓루앙사원.jpg','ea');
Insert into PACKAGES (PACK_NO,PACK_TITLE,PACK_PRICE_KID,PACK_PRICE_ADULT,PACK_CITY,PACK_DEPART,PACK_ARRIV,PACK_AIR,PURCHASE_CNT,IMAGE1,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,IMAGE7,IMAGE8,IMAGE9,PACK_CATEGORY) values (23,'[대만 꽉찬일정 타이페이 에어텔 3박4일]',507800,507800,'타이페이','2017-4-03','2017-4-06','에바항공',0,'국립 고궁 박물관.jpg','스린야시장.jpg','스펀.jpg','야류 해양공원.jpg','융캉제.jpg','지우펀.jpg','타이페이 101 빌딩.jpg',null,null,'ea');
--------------------------------------------------------
--  DDL for Index PACK_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PACK_NO_PK" ON "PACKAGES" ("PACK_NO")
--------------------------------------------------------
--  Constraints for Table PACKAGES
--------------------------------------------------------

  ALTER TABLE "PACKAGES" ADD CONSTRAINT "PACK_NO_PK" PRIMARY KEY ("PACK_NO") ENABLE
