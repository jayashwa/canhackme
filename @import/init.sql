
CREATE TABLE `users` (
	`user_no` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`user_name` TEXT NOT NULL UNIQUE,
	`user_email` TEXT NOT NULL UNIQUE,
	`user_password` TEXT NOT NULL,
	`user_comment` TEXT NOT NULL,
	`user_score` INTEGER NOT NULL,
	`user_signed_up_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `chals` (
	`chal_no` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`chal_name` TEXT NOT NULL UNIQUE,
	`chal_title` TEXT NOT NULL UNIQUE,
	`chal_contents` TEXT NOT NULL,
	`chal_score` INTEGER NOT NULL,
	`chal_flag` TEXT NOT NULL UNIQUE,
	`chal_tags` TEXT NOT NULL,
	`chal_user_no` INTEGER NOT NULL,
	`chal_uploaded_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `solvs` (
	`solv_no` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`solv_user_no` INTEGER NOT NULL,
	`solv_chal_no` INTEGER NOT NULL,
	`solv_solved_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `notis` (
	`noti_no` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`noti_contents` TEXT NOT NULL,
	`noti_user_no` INTEGER NOT NULL,
	`noti_uploaded_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
