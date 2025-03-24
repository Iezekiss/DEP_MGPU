CREATE TABLE orders 
    ( 
     row_id             INTEGER  NOT NULL , 
     order_id           VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     order_date         DATE  NOT NULL , 
     ship_date          DATE  NOT NULL , 
     ship_mode          VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     customer_id        VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     customer_name      VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     segment            VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     country            VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     city               VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     state              VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     postal_code        VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     region             VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     product_id         VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     category           VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     subcategory        VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     product_name       VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
                     NOT NULL , 
     sales              FLOAT  NOT NULL , 
     quantity           INTEGER  NOT NULL , 
     discount           FLOAT  NOT NULL , 
     profit             FLOAT  NOT NULL , 
     returns_returns_ID NUMBER  NOT NULL , 
     "date"             DATE , 
     people_people_ID   NUMBER  NOT NULL , 
     date1              DATE 
    ) 
;