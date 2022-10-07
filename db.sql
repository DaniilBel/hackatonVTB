CREATE TABLE `Employees` (
	`Employees` BINARY NOT NULL,
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`role` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Transactions` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idSender` INT NOT NULL,
	`idReceiver` INT NOT NULL,
	`value` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Items` (
	`name` VARCHAR(255) NOT NULL,
	`price` INT NOT NULL,
	`ownerId` INT NOT NULL
);

ALTER TABLE `Transactions` ADD CONSTRAINT `Transactions_fk0` FOREIGN KEY (`idSender`) REFERENCES `Employees`(`id`);

ALTER TABLE `Transactions` ADD CONSTRAINT `Transactions_fk1` FOREIGN KEY (`idReceiver`) REFERENCES `Employees`(`id`);

ALTER TABLE `Items` ADD CONSTRAINT `Items_fk0` FOREIGN KEY (`ownerId`) REFERENCES `Employees`(`id`);




