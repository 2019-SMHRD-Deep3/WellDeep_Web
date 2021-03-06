drop table post;
drop sequence post_seq;
drop table alarm;
drop sequence alarm_seq;
drop table voice;
drop sequence voice_seq;
drop table img;
drop sequence img_seq;
drop table children;
drop sequence children_seq;
drop table parents;



create table parents (
parents_id varchar2(50) PRIMARY key,
parents_pw varchar2(50) not null,
parents_addr varchar2(300) not null,
parents_phone varchar2(100) not null,
parents_name varchar2(50) not null,
parents_sex varchar2(20) not null
);

create table children (
children_number varchar2(50) PRIMARY key,
children_name varchar2(50) not null,
children_sex varchar2(20) not null,
children_age varchar2(20) not null,
children_photo varchar2(1000),
parents_id varchar2(50) not null,
constraint fk_parents_id_chil foreign key(parents_id)
references parents
);
create sequence children_seq start with 1 increment by 1 maxvalue 500 cycle nocache;

create table img (
img_number varchar2(50) PRIMARY key,
img_time date,
img_file varchar2(1000) UNIQUE not null,
parents_id varchar2(50) not null,
children_number varchar2(50) not null,
constraint fk_parents_id_img foreign key(parents_id)
references parents,
constraint fk_children_number_img foreign key(children_number)
references children
);
create sequence img_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


create table voice (
voice_number varchar2(50) primary key,
voice_time varchar2(100) not null,
voice_file varchar2(1000) UNIQUE not null,
parents_id varchar2(50) not null,
children_number varchar2(50) not null,
constraint fk_parents_id_voice foreign key(parents_id)
references parents,
constraint fk_children_number_voice foreign key(children_number)
references children
);
create sequence voice_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;

create table post (
post_number varchar2(50) primary key,
post_title varchar2(500) not null,
post_context varchar2(2000) not null,
post_time date,
parents_id varchar2(50) not null,
constraint fk_parents_id_post foreign key(parents_id)
references parents
);
create sequence post_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


create table alarm (
alarm_number varchar2(50) primary key,
alarm_time date,
parents_id varchar2(50) not null,
children_number varchar2(50) not null,
img_file varchar2(50) not null,
voice_file varchar2(50) not null,
constraint fk_parents_id_alarm foreign key(parents_id)
references parents,
constraint fk_children_number_alarm foreign key(children_number)
references children,
constraint fk_img_file_alarm foreign key(img_file)
references img(img_file),
constraint fk_voice_file_alarm foreign key(voice_file)
references voice(voice_file)
);
create sequence alarm_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


insert into parents values (1111,1111,'광주','010-0000-0000','천승현','남');
insert into children values (children_seq.nextval,'천인성','남',6,'tjdlstjd2.jpg',1111);
insert into img values (img_seq.nextval,SYSDATE,'alarm_1.png',1111,1);
insert into voice values (voice_seq.nextval,SYSDATE,'alarm_1.wav',1111,1);
insert into alarm values (alarm_seq.nextval,SYSDATE,1111,1,'alarm_1.png','alarm_1.wav');
insert into post values (post_seq.nextval,'title','context',SYSDATE,1111);

insert into children values (children_seq.nextval,'천사랑','여',7,'wjdtkfkd2.jpg',1111);
insert into img values (img_seq.nextval,SYSDATE,'alarm_2.jpg',1111,2);
insert into voice values (voice_seq.nextval,SYSDATE,'alarm_2.wav',1111,2);
insert into alarm values (alarm_seq.nextval,SYSDATE,1111,2,'alarm_2.jpg','alarm_2.wav');
insert into post values (post_seq.nextval,'title','context',SYSDATE,1111);

insert into children values (children_seq.nextval,'천유정','여',8,'rladbwjd2.jpg',1111);
insert into img values (img_seq.nextval,SYSDATE,'alarm_3.jpg',1111,3);
insert into voice values (voice_seq.nextval,SYSDATE,'alarm_3.wav',1111,3);
insert into alarm values (alarm_seq.nextval,SYSDATE,1111,3,'alarm_3.jpg','alarm_3.wav');
insert into post values (post_seq.nextval,'title','context',SYSDATE,1111);

insert into parents values (2222,2222,'서울','010-1111-2222','고길동','남');
insert into children values (children_seq.nextval,'고우진','여',7,'tjdnwls2.png',2222);
insert into img values (img_seq.nextval,SYSDATE,'alarm_4.png',2222,4);
insert into voice values (voice_seq.nextval,SYSDATE,'alarm_4.wav',2222,4);
insert into alarm values (alarm_seq.nextval,SYSDATE,2222,4,'alarm_4.png','alarm_4.wav');
insert into post values (post_seq.nextval,'title','context',SYSDATE,2222);

insert into children values (children_seq.nextval,'고아윤','여',5,'rladkdbs2.png',2222);
insert into img values (img_seq.nextval,SYSDATE,'alarm_5.jpg',2222,5);
insert into voice values (voice_seq.nextval,SYSDATE,'alarm_5.wav',2222,5);
insert into alarm values (alarm_seq.nextval,SYSDATE,2222,4,'alarm_5.jpg','alarm_5.wav');
insert into post values (post_seq.nextval,'title','context',SYSDATE,2222);

insert into children values (children_seq.nextval,'고서준','남',5,'wjstjwns2.jpg',2222);
insert into img values (img_seq.nextval,SYSDATE,'alarm_6.jpg',2222,6);
insert into voice values (voice_seq.nextval,SYSDATE,'alarm_6.wav',2222,6);
insert into alarm values (alarm_seq.nextval,SYSDATE,2222,6,'alarm_6.jpg','alarm_6.wav');
insert into post values (post_seq.nextval,'title','context',SYSDATE,2222);

select * from ALARM;
select * from PARENTS;
select * from CHILDREN;
select * from IMG;
select * from POST;
select * from VOICE;

commit;