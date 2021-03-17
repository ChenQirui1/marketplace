BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "admin" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(200),
	"pword"	VARCHAR(200),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "tr_acc" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(200),
	"pword"	VARCHAR(200),
	"passcode"	VARCHAR(6),
	"promo_state"	INTEGER,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "record_of_items" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(200),
	"info"	VARCHAR(200),
	"price"	INTEGER,
	"cat"	VARCHAR(200),
	"image"	VARCHAR(200),
	"quantifier"	VARCHAR(200),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "submitted__cart" (
	"id"	INTEGER NOT NULL,
	"acc"	VARCHAR(200),
	"name"	VARCHAR(200),
	"info"	VARCHAR(200),
	"price"	INTEGER,
	"quantity"	INTEGER,
	"cat"	VARCHAR(200),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "generated__codes" (
	"id"	INTEGER NOT NULL,
	"code"	VARCHAR(100),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "std_acc" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(200),
	"pword"	VARCHAR(200),
	"assigned_teacher_id"	INTEGER,
	"totalamount"	INTEGER,
	FOREIGN KEY("assigned_teacher_id") REFERENCES "tr_acc"("id"),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "promo_items" (
	"id"	INTEGER NOT NULL,
	"itemID"	INTEGER,
	"promo_no"	INTEGER,
	"promo_price"	INTEGER,
	PRIMARY KEY("id"),
	FOREIGN KEY("itemID") REFERENCES "record_of_items"("id")
);
CREATE TABLE IF NOT EXISTS "cart_items" (
	"id"	INTEGER NOT NULL,
	"acc_id"	INTEGER,
	"itemID"	INTEGER,
	"quantity"	INTEGER,
	FOREIGN KEY("acc_id") REFERENCES "std_acc"("id"),
	PRIMARY KEY("id"),
	FOREIGN KEY("itemID") REFERENCES "record_of_items"("id")
);
INSERT INTO "admin" VALUES (1,'starhorizon','577177');
INSERT INTO "tr_acc" VALUES (1,'Jesus','123','',1);
INSERT INTO "tr_acc" VALUES (2,'David','123','123456',NULL);
INSERT INTO "tr_acc" VALUES (3,'Fern','123',NULL,NULL);
INSERT INTO "tr_acc" VALUES (4,'Fri','123',NULL,NULL);
INSERT INTO "tr_acc" VALUES (5,'Lolr','123','',NULL);
INSERT INTO "tr_acc" VALUES (6,'Chen Shuo','123','',NULL);
INSERT INTO "record_of_items" VALUES (1,'Golden Peony Jasmine Rice 5 kg ',NULL,7.5,'Rice','Golden Peony Jasmine Rice 5 kg.PNG',NULL);
INSERT INTO "record_of_items" VALUES (2,'Jin Huang Thai Fragrant Rice 5 kg',NULL,12.5,'Rice','Jin Huang Thai Fragrant Rice 5 kg.PNG',NULL);
INSERT INTO "record_of_items" VALUES (3,'Fairprice Jasmine Rice 10 kg',NULL,15.5,'Rice','Fairprice Jasmine Rice 10 kg.PNG',NULL);
INSERT INTO "record_of_items" VALUES (4,'Golden Phoenix Thai Fragrant Rice 5kg',NULL,12.4,'Rice','Golden Phoenix Thai Fragrant Rice 5kg.PNG',NULL);
INSERT INTO "record_of_items" VALUES (5,'Marigold HL Milk 1 litre',NULL,3.2,'Dairy','Marigold HL Milk 1 litre.PNG',NULL);
INSERT INTO "record_of_items" VALUES (6,'Marigold HL Milk 2 litres',NULL,5.4,'Dairy','Marigold HL Milk 2 litres.PNG',NULL);
INSERT INTO "record_of_items" VALUES (7,'Meiji Fresh Milk 2 litres',NULL,5.6,'Dairy','Meiji Fresh Milk 2 litres.PNG',NULL);
INSERT INTO "record_of_items" VALUES (8,'Magnolia Fresh Milk 1 litre',NULL,3.5,'Dairy','Magnolia Fresh Milk 1 litre.PNG',NULL);
INSERT INTO "record_of_items" VALUES (9,'Gardenia White Bread 600g',NULL,2.4,'Breads','Gardenia White Bread 600g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (10,'Sunshine Soft White Bread 400g',NULL,2,'Breads','Sunshine Soft White Bread 400g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (11,'Fairprice Wholemeal Bread 500g',NULL,1.7,'Breads','Fairprice Wholemeal Bread 500g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (12,'Gardenia Wholemeal Bread 400g',NULL,2.3,'Breads','Gardenia Wholemeal Bread 400g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (13,'Seng Choon 10s’',NULL,2.8,'Eggs','Seng Choon 10s’.PNG',NULL);
INSERT INTO "record_of_items" VALUES (14,'Pasar Fresh Eggs 10s’',NULL,1.9,'Eggs','Pasar Fresh Eggs 10s’.PNG',NULL);
INSERT INTO "record_of_items" VALUES (15,'Seng Choon Corn Feed Eggs 12s’',NULL,2.3,'Eggs','Seng Choon Corn Feed Eggs 12s’.PNG',NULL);
INSERT INTO "record_of_items" VALUES (16,'Budget Eggs 10s’',NULL,1.6,'Eggs','Budget Eggs 10s’.PNG',NULL);
INSERT INTO "record_of_items" VALUES (17,'China Fuji Apple',NULL,1,'Fruits','China Fuji Apple.PNG',NULL);
INSERT INTO "record_of_items" VALUES (18,'South African Green Apple',NULL,0.55,'Fruits','South African Green Apple.PNG',NULL);
INSERT INTO "record_of_items" VALUES (19,'New Zealand Royal Gala Apple',NULL,0.6,'Fruits','New Zealand Royal Gala Apple.PNG',NULL);
INSERT INTO "record_of_items" VALUES (20,'Yellow Tail',NULL,11.5,'Fish','Yellow Tail.PNG','per kg');
INSERT INTO "record_of_items" VALUES (21,'White Pomfret',NULL,20.8,'Fish','White Pomfret.PNG','per kg');
INSERT INTO "record_of_items" VALUES (22,'Red Grouper (Small)',NULL,17.4,'Fish','Red Grouper (Small).PNG','per kg');
INSERT INTO "record_of_items" VALUES (23,'Japanese Sea Bass',NULL,18.9,'Fish','Japanese Sea Bass.PNG','per kg');
INSERT INTO "record_of_items" VALUES (24,'Beautex 2 Ply Premium Toilet Rolls 10 + 2 free',NULL,5.8,'Paper','Beautex 2 Ply Premium Toilet Rolls 10 + 2 free.PNG',NULL);
INSERT INTO "record_of_items" VALUES (25,'Scott Extra 20 rolls',NULL,6.1,'Paper','Scott Extra 20 rolls.PNG',NULL);
INSERT INTO "record_of_items" VALUES (26,'FairPrice Bathroom Tissues 30 rolls',NULL,5.1,'Paper','FairPrice Bathroom Tissues 30 rolls.PNG',NULL);
INSERT INTO "record_of_items" VALUES (27,'Budget Heavy Weight Bathroom Tissues 10 rolls',NULL,4.2,'Paper','Budget Heavy Weight Bathroom Tissues 10 rolls.PNG',NULL);
INSERT INTO "record_of_items" VALUES (28,'SCS Unsalted Butter 250g',NULL,4.25,'Dairy','SCS Unsalted Butter 250g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (29,'SCS Salted Butter 250g',NULL,3.5,'Dairy','SCS Salted Butter 250g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (30,'Emborg Butter Unsalted 200g',NULL,3.95,'Dairy','Emborg Butter Unsalted 200g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (31,'Anchor Butter Unsalted 227g',NULL,4.25,'Dairy','Anchor Butter Unsalted 227g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (32,'Prima Plain Flour 1kg',NULL,2.2,'Baking','Prima Plain Flour 1kg.PNG',NULL);
INSERT INTO "record_of_items" VALUES (33,'Fairprice Plain Flour 1kg',NULL,2.25,'Baking','Fairprice Plain Flour 1kg.PNG',NULL);
INSERT INTO "record_of_items" VALUES (34,'Bake King Self Raising Flour 500g',NULL,1.5,'Baking','Bake King Self Raising Flour 500g.PNG',NULL);
INSERT INTO "record_of_items" VALUES (35,'Prima Self Raising Flour 1kg',NULL,2.75,'Baking','Prima Self Raising Flour 1kg.PNG',NULL);
INSERT INTO "record_of_items" VALUES (36,'Pasar China White Peach',NULL,2.95,'Fruits','Pasar China White Peach.PNG','for 4');
INSERT INTO "record_of_items" VALUES (37,'Kor Premium Peach',NULL,6.95,'Fruits','Kor Premium Peach.PNG','for 2');
INSERT INTO "record_of_items" VALUES (38,'Spain Donut Peach',NULL,1.75,'Fruits','Spain Donut Peach.PNG','');
INSERT INTO "submitted__cart" VALUES (4,'Ron','Fairprice Jasmine Rice 10 kg','-',15.5,4,'Rice');
INSERT INTO "submitted__cart" VALUES (5,'Don','Bake King Self Raising Flour 500g','-',1.5,8,'Baking');
INSERT INTO "submitted__cart" VALUES (6,'Don','Golden Peony Jasmine Rice 5 kg ','-',7.5,8,'Rice');
INSERT INTO "submitted__cart" VALUES (7,'Don','Golden Phoenix Thai Fragrant Rice 5kg','-',12.4,4,'Rice');
INSERT INTO "submitted__cart" VALUES (8,'Don','Seng Choon 10s’','-',2.8,6,'Eggs');
INSERT INTO "submitted__cart" VALUES (9,'Don','Seng Choon Corn Feed Eggs 12s’','-',2.3,3,'Eggs');
INSERT INTO "submitted__cart" VALUES (10,'Don','Pasar Fresh Eggs 10s’','-',1.9,3,'Eggs');
INSERT INTO "submitted__cart" VALUES (11,'Don','Fairprice Jasmine Rice 10 kg','-',15.5,5,'Rice');
INSERT INTO "submitted__cart" VALUES (12,'Don','Jin Huang Thai Fragrant Rice 5 kg','-',12.5,1,'Rice');
INSERT INTO "submitted__cart" VALUES (13,'Don','Budget Eggs 10s’','-',1.6,1,'Eggs');
INSERT INTO "submitted__cart" VALUES (14,'Jack','Jin Huang Thai Fragrant Rice 5 kg','-',5,1,'Rice');
INSERT INTO "submitted__cart" VALUES (15,'Jack','Fairprice Jasmine Rice 10 kg','-',5,1,'Rice');
INSERT INTO "submitted__cart" VALUES (16,'Jack','Golden Phoenix Thai Fragrant Rice 5kg','-',5,1,'Rice');
INSERT INTO "submitted__cart" VALUES (17,'Jack','Yellow Tail','-',11.5,1,'Fish');
INSERT INTO "submitted__cart" VALUES (18,'Jack','Pasar Fresh Eggs 10s’','-',1.9,1,'Eggs');
INSERT INTO "std_acc" VALUES (1,'Don','123',1,242.6);
INSERT INTO "std_acc" VALUES (2,'Jon','123',1,0);
INSERT INTO "std_acc" VALUES (3,'Lon','123',2,0);
INSERT INTO "std_acc" VALUES (4,'Fon','123',2,0);
INSERT INTO "std_acc" VALUES (5,'Ron','123',3,0);
INSERT INTO "std_acc" VALUES (6,'Son','123',3,0);
INSERT INTO "std_acc" VALUES (7,'Kon','123',4,0);
INSERT INTO "std_acc" VALUES (8,'Von','123',4,0);
INSERT INTO "std_acc" VALUES (9,'Jack','123',1,0);
INSERT INTO "std_acc" VALUES (10,'Jill','123',1,0);
INSERT INTO "std_acc" VALUES (11,'Great','123',1,0);
INSERT INTO "promo_items" VALUES (1,2,1,5);
INSERT INTO "promo_items" VALUES (2,3,1,5);
INSERT INTO "promo_items" VALUES (3,4,1,5);
INSERT INTO "cart_items" VALUES (6,3,52,2);
INSERT INTO "cart_items" VALUES (7,3,29,2);
INSERT INTO "cart_items" VALUES (8,3,3,2);
INSERT INTO "cart_items" VALUES (9,1,34,8);
INSERT INTO "cart_items" VALUES (10,1,1,8);
INSERT INTO "cart_items" VALUES (11,1,4,4);
INSERT INTO "cart_items" VALUES (12,5,3,4);
INSERT INTO "cart_items" VALUES (13,1,13,6);
INSERT INTO "cart_items" VALUES (14,1,15,3);
INSERT INTO "cart_items" VALUES (15,1,14,3);
INSERT INTO "cart_items" VALUES (16,1,3,5);
INSERT INTO "cart_items" VALUES (17,1,2,1);
INSERT INTO "cart_items" VALUES (18,1,16,1);
INSERT INTO "cart_items" VALUES (19,9,2,1);
INSERT INTO "cart_items" VALUES (20,9,3,1);
INSERT INTO "cart_items" VALUES (21,9,4,1);
INSERT INTO "cart_items" VALUES (22,9,20,1);
INSERT INTO "cart_items" VALUES (23,9,14,1);
COMMIT;
