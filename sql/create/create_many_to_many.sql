create table account (
    account_id integer not null auto_increment,
    email varchar(128) unique,
    name varchar(128),
    primary key(account_id)
) engine=innodb character set=utf8;

create table course (
    course_id integer not null auto_increment,
    title varchar(128) unique,
    primary key(course_id)
) engine=innodb character set=utf8;

create table member (
    account_id integer,
    course_id integer,
    role integer,

    constraint foreign key (account_id) references account (account_id)
        on delete cascade on update cascade,
    constraint foreign key (course_id) references course (course_id)
        on delete cascade on update cascade,

    primary key (account_id, course_id)
) engine=innodb character set=utf8;