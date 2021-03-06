/**
 * Database schema required by CDbAuthManager.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @link http://www.yiiframework.com/
 * @copyright 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 * @since 1.0
 */

drop table if exists `AutorizacionUsuario`;
drop table if exists `ItemPadreHijo`;
drop table if exists `ElementosAutorizados`;

create table `ElementosAutorizados`
(
   `name`                 varchar(64) not null,
   `type`                 integer not null,
   `description`          text,
   `bizrule`              text,
   `data`                 text,
   primary key (`name`)
) engine InnoDB;

create table `ItemPadreHijo`
(
   `parent`               varchar(64) not null,
   `child`                varchar(64) not null,
   primary key (`parent`,`child`),
   foreign key (`parent`) references `ElementosAutorizados` (`name`) on delete cascade on update cascade,
   foreign key (`child`) references `ElementosAutorizados` (`name`) on delete cascade on update cascade
) engine InnoDB;

create table `AutorizacionUsuario`
(
   `itemname`             varchar(64) not null,
   `userid`               varchar(64) not null,
   `bizrule`              text,
   `data`                 text,
   primary key (`itemname`,`userid`),
   foreign key (`itemname`) references `ElementosAutorizados` (`name`) on delete cascade on update cascade
) engine InnoDB;
