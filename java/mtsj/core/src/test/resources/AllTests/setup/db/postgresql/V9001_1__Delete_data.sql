-- Delete data for PostGreSQL
ALTER TABLE OFFER ALTER CONSTRAINT FK_OFFER2SIDEDISH DEFERRABLE;
ALTER TABLE OFFER ALTER CONSTRAINT FK_OFFER2MEAL DEFERRABLE;
ALTER TABLE OFFER ALTER CONSTRAINT FK_OFFER2DRINK DEFERRABLE;

ALTER TABLE ORDERPOSITION ALTER CONSTRAINT FK_ORDPOS2ORDER DEFERRABLE;
ALTER TABLE ORDERPOSITION ALTER CONSTRAINT FK_ORDPOS2COOK DEFERRABLE;

ALTER TABLE BILLORDERPOSITION ALTER CONSTRAINT FK_BILLORDPOS2BILL DEFERRABLE;
ALTER TABLE BILLORDERPOSITION ALTER CONSTRAINT FK_BILLORDPOS2ORDPOS DEFERRABLE;

DELETE FROM RESTAURANTTABLE;
DELETE FROM BILLORDERPOSITION;
DELETE FROM ORDERPOSITION;
DELETE FROM RESTAURANTORDER;
DELETE FROM OFFER;
DELETE FROM PRODUCT;
DELETE FROM BILL;

--Keep Staffmembers to allow authentication
--DELETE FROM STAFFMEMBER;

ALTER TABLE OFFER ALTER CONSTRAINT FK_OFFER2SIDEDISH NOT DEFERRABLE;
ALTER TABLE OFFER ALTER CONSTRAINT FK_OFFER2MEAL NOT DEFERRABLE;
ALTER TABLE OFFER ALTER CONSTRAINT FK_OFFER2DRINK NOT DEFERRABLE;

ALTER TABLE ORDERPOSITION ALTER CONSTRAINT FK_ORDPOS2ORDER NOT DEFERRABLE;
ALTER TABLE ORDERPOSITION ALTER CONSTRAINT FK_ORDPOS2COOK NOT DEFERRABLE;

ALTER TABLE BILLORDERPOSITION ALTER CONSTRAINT FK_BILLORDPOS2BILL NOT DEFERRABLE;
ALTER TABLE BILLORDERPOSITION ALTER CONSTRAINT FK_BILLORDPOS2ORDPOS NOT DEFERRABLE;