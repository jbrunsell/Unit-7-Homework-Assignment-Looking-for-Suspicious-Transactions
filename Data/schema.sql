-- Drop tables
DROP TABLE IF EXISTS merchant_category CASCADE;
DROP TABLE IF EXISTS merchant CASCADE;
DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS transaction CASCADE;


-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "merchant_category" (
    "category_id" INT   NOT NULL,
    "merchant_category" VARCHAR(64)   NOT NULL,
    CONSTRAINT "pk_merchant_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "merchant" (
    "merchant_id" INT   NOT NULL,
    "merchant_name" VARCHAR(64)   NOT NULL,
    "merchant_category_id" int   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY (
        "merchant_id"
     )
);

CREATE TABLE "card_holder" (
    "cardholder" INT   NOT NULL,
    "cardholder_name" VARCHAR(64)   NOT NULL,
    CONSTRAINT "pk_card_holder" PRIMARY KEY (
        "cardholder"
     )
);

CREATE TABLE "credit_card" (
    "card_number" VARCHAR(20)   NOT NULL,
    "cardholder_id" INT   NOT NULL,
        CONSTRAINT "pk_credit_card" PRIMARY KEY (
        "card_number"
     )
);

CREATE TABLE "transaction" (
    "transaction_id" FLOAT   NOT NULL,
    "transaction_date" TIMESTAMP   NOT NULL,
    "transaction_amount" FLOAT   NOT NULL,
    "transaction_card" VARCHAR(20)   NOT NULL,
    "transaction_merchant" int   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY (
        "transaction_id"
     )
);

ALTER TABLE "merchant" ADD CONSTRAINT "fk_merchant_merchant_category_id" FOREIGN KEY("merchant_category_id")
REFERENCES "merchant_category" ("category_id");

ALTER TABLE "credit_card" ADD CONSTRAINT "fk_credit_card_cardholder_id" FOREIGN KEY("cardholder_id")
REFERENCES "card_holder" ("cardholder");

ALTER TABLE "transaction" ADD CONSTRAINT "fk_transaction_Transaction_Card" FOREIGN KEY("transaction_card")
REFERENCES "credit_card" ("card_number");

ALTER TABLE "transaction" ADD CONSTRAINT "fk_transaction_Transaction_merchant" FOREIGN KEY("transaction_merchant")
REFERENCES "merchant" ("merchant_id");

