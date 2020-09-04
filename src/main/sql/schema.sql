-- 数据库初始化脚本

-- 创建数据库
create database seckill;

CREATE TABLE seckill(
`seckill_id` bitint NOT NULL AUTO_INCREMENT,
`name` VARCHAR(120) NOT NULL,
`number` INT NOT NULL,
`start_time` TIMESTAMP NOT NULL,
`end_time` TIMESTAMP NOT NULL,
`create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`seckill_id`),
KEY idx_start_time(`start_time`),
KEY idx_end_time(`end_time`),
KEY idx_create_time(`create_time`)




)ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8

INSERT INTO seckill (NAME,NUMBER,start_time,end_time)
VALUES
('1000元',100,'2020-09-04 00:00:00', '2020-09-04 00:00:00'),
('500元',200,'2020-09-04 00:00:00', '2020-09-04 00:00:00'),
('3000元',300,'2020-09-04 00:00:00', '2020-09-04 00:00:00'),
('200元',400,'2020-09-04 00:00:00', '2020-09-04 00:00:00');

--秒杀成功明细表
--用户登录认证相关的信息
create table success_killed(
`seckill_id` bigint not null,
`user_phone` bigint not null,
`state` tinyint not null default -1 Comment '-1 wuxiao 0 chenggong 1 fukuan',
`create_time` timestamp not null,
primary key (seckill_id,user_phone),
key index_create_time(create_time)
)ENGINE=INNODB DEFAULT CHARSET=utf8













