CREATE TABLE "public.vtb_employees" (
	"employee_id" serial(100) NOT NULL DEFAULT '1',
	"name" VARCHAR(255) NOT NULL,
	"surname" VARCHAR(255) NOT NULL,
	"balance" integer NOT NULL DEFAULT '1',
	"administrator" BOOLEAN NOT NULL,
	"hr" BOOLEAN NOT NULL,
	"boss" BOOLEAN NOT NULL,
	CONSTRAINT "vtb_employees_pk" PRIMARY KEY ("employee_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.transactions" (
	"transaction_id" serial NOT NULL,
	"transaction_value" integer NOT NULL,
	"employee_id_giver" integer NOT NULL,
	"employee_id_receiver" integer NOT NULL,
	"transaction_type" VARCHAR(255) NOT NULL,
	"transaction_time" TIME NOT NULL UNIQUE,
	CONSTRAINT "transactions_pk" PRIMARY KEY ("transaction_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.marketplace" (
	"product_id" serial NOT NULL,
	"product_name" serial(255) NOT NULL UNIQUE,
	"product_value" integer NOT NULL,
	CONSTRAINT "marketplace_pk" PRIMARY KEY ("product_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.market_transactions" (
	"market_transaction_id" serial NOT NULL UNIQUE,
	"product_id" integer NOT NULL
) WITH (
  OIDS=FALSE
);




ALTER TABLE "transactions" ADD CONSTRAINT "transactions_fk0" FOREIGN KEY ("employee_id_giver") REFERENCES "vtb_employees"("employee_id");
ALTER TABLE "transactions" ADD CONSTRAINT "transactions_fk1" FOREIGN KEY ("employee_id_receiver") REFERENCES "vtb_employees"("employee_id");


ALTER TABLE "market_transactions" ADD CONSTRAINT "market_transactions_fk0" FOREIGN KEY ("market_transaction_id") REFERENCES "transactions"("transaction_id");
ALTER TABLE "market_transactions" ADD CONSTRAINT "market_transactions_fk1" FOREIGN KEY ("product_id") REFERENCES "marketplace"("product_id");


