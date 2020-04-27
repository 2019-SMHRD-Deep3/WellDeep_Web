drop table post;
drop sequence post_seq;
drop table alarm;
drop sequence alarm_seq;
drop table record;
drop sequence record_seq;
drop table voice;
drop sequence voice_seq;
drop table children;
drop sequence children_seq;
drop table parents;
drop table img;
drop sequence img_seq;

create table parents (
perents_id varchar2(50) PRIMARY key,
perents_pw varchar2(50) not null,
perents_addr varchar2(300) not null,
perents_phone varchar2(100) not null,
perents_name varchar2(50) not null,
perents_sex varchar2(20) not null
);

select * from CHILDREN;

create table children (
children_number varchar2(50) PRIMARY key,
children_name varchar2(50) not null,
children_sex varchar2(20) not null,
children_age varchar2(20) not null,
children_photo varchar2(1000),
perents_id varchar2(50) not null,
constraint fk_perents_id_chil foreign key(perents_id)
references parents
);
create sequence children_seq start with 1 increment by 1 maxvalue 500 cycle nocache;

create table img (
img_number varchar2(50) PRIMARY key,
img_time date,
img_file varchar2(1000)
);
create sequence img_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


create table voice (
voice_number varchar2(50) primary key,
voice_time varchar2(100) not null,
voice_file varchar2(1000) not null
);
create sequence voice_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


create table record (
record_number varchar2(50) primary key,
record_file varchar2(500) not null,
record_time date,
perents_id varchar2(50) not null,
children_number varchar2(50) not null,
img_number varchar2(50) not null,
voice_number varchar2(50) not null,
constraint fk_perents_id_record foreign key(perents_id)
references parents,
constraint fk_children_number_record foreign key(children_number)
references children,
constraint fk_img_number_record foreign key(img_number)
references img,
constraint fk_voice_number_record foreign key(voice_number)
references voice
);
create sequence record_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


create table post (
post_number varchar2(50) primary key,
post_title varchar2(500) not null,
post_context varchar2(2000) not null,
post_time date,
perents_id varchar2(50) not null,
--img_number varchar2(50) not null,
--voice_number varchar2(50) not null,
constraint fk_perents_id_post foreign key(perents_id)
references parents
--constraint fk_img_number_post foreign key(img_number)
--references img,
--constraint fk_voice_number_post foreign key(voice_number)
--references voice
);
create sequence post_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


create table alarm (
alarm_number varchar2(50) primary key,
alarm_time date,
perents_id varchar2(50) not null,
children_number varchar2(50) not null,
record_number varchar2(50) not null,
img_number varchar2(50) not null,
voice_number varchar2(50) not null,
constraint fk_perents_id_alarm foreign key(perents_id)
references parents,
constraint fk_children_number_alarm foreign key(children_number)
references children,
constraint fk_record_number_alarm foreign key(record_number)
references record,
constraint fk_img_number_alarm foreign key(img_number)
references img,
constraint fk_voice_number_alarm foreign key(voice_number)
references voice
);
create sequence alarm_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


insert into parents values ('1111','1111','광주','010-0000-0000','홍길동','남');
insert into children values (children_seq.nextval,'코난','남',6,'children_photo',1111);
insert into img values (img_seq.nextval,SYSDATE,'img_file');
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file');
insert into record values (record_seq.nextval,'record_file',sysdate,1111,1,1,1);
insert into alarm values (alarm_seq.nextval,sysdate,1111,1,1,1,1);
insert into post values (post_seq.nextval,'title','context',sysdate,1111);

insert into parents values ('2222','2222','서울','010-1111-0000','안선진','여자');
insert into children values (children_seq.nextval,'민이','여자',7,'children_photo',2222);
insert into img values (img_seq.nextval,SYSDATE,'img_file2');
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file2');
insert into record values (record_seq.nextval,'record_file2',sysdate,2222,2,2,2);
insert into alarm values (alarm_seq.nextval,sysdate,2222,2,2,2,2);
insert into post values (post_seq.nextval,'title2','context2',sysdate,2222);

insert into parents values ('3333','3333','인천','010-3333-0000','승현','남');
insert into children values (children_seq.nextval,'성순','남',5,'children_photo',2222);
insert into img values (img_seq.nextval,SYSDATE,'img_file');
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file');
insert into record values (record_seq.nextval,'record_file',sysdate,3333,3,3,3);
insert into alarm values (alarm_seq.nextval,sysdate,3333,3,3,3,3);
insert into post values (post_seq.nextval,'title','context',sysdate,3333);

select * from RECORD;

commit