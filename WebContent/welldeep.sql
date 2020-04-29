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

select * from PARENTS;

create table parents (
perents_id varchar2(50) PRIMARY key,
perents_pw varchar2(50) not null,
perents_addr varchar2(300) not null,
perents_phone varchar2(100) not null,
perents_name varchar2(50) not null,
perents_sex varchar2(20) not null
);

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
img_file varchar2(1000) UNIQUE not null,
perents_id varchar2(50) not null,
children_number varchar2(50) not null,
constraint fk_perents_id_img foreign key(perents_id)
references parents,
constraint fk_children_number_img foreign key(children_number)
references children
);
create sequence img_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


create table voice (
voice_number varchar2(50) primary key,
voice_time varchar2(100) not null,
voice_file varchar2(1000) UNIQUE not null,
perents_id varchar2(50) not null,
children_number varchar2(50) not null,
constraint fk_perents_id_voice foreign key(perents_id)
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
perents_id varchar2(50) not null,
img_file varchar2(50) not null,
voice_file varchar2(50) not null,
constraint fk_perents_id_post foreign key(perents_id)
references parents,
constraint fk_img_file_post foreign key(img_file)
references img(img_file),
constraint fk_voice_file_post foreign key(voice_file)
references voice(voice_file)
);
create sequence post_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


create table alarm (
alarm_number varchar2(50) primary key,
alarm_time date,
perents_id varchar2(50) not null,
children_number varchar2(50) not null,
img_file varchar2(50) not null,
voice_file varchar2(50) not null,
constraint fk_perents_id_alarm foreign key(perents_id)
references parents,
constraint fk_children_number_alarm foreign key(children_number)
references children,
constraint fk_img_file_alarm foreign key(img_file)
references img(img_file),
constraint fk_voice_file_alarm foreign key(voice_file)
references voice(voice_file)
);
create sequence alarm_seq start with 1 increment by 1 maxvalue 9999 cycle nocache;


insert into parents values (1111,1111,'광주','010-0000-0000','홍길동','남');
insert into children values (children_seq.nextval,'코난','남',6,'children_photo',1111);
insert into img values (img_seq.nextval,SYSDATE,'tree.jpg',1111,1);
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file',1111,1);
insert into alarm values (alarm_seq.nextval,SYSDATE,1111,1,'tree.jpg','voice_file');
insert into post values (post_seq.nextval,'title','context',SYSDATE,1111,'tree.jpg','voice_file');

insert into children values (children_seq.nextval,'장미','여',6,'children_photo',1111);
insert into img values (img_seq.nextval,SYSDATE,'tree2.jpg',1111,2);
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file2',1111,2);
insert into alarm values (alarm_seq.nextval,SYSDATE,1111,2,'tree2.jpg','voice_file2');
insert into post values (post_seq.nextval,'title','context',SYSDATE,1111,'tree2.jpg','voice_file2');

insert into children values (children_seq.nextval,'미란','여',7,'children_photo',1111);
insert into img values (img_seq.nextval,SYSDATE,'tree3.jpg',1111,3);
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file3',1111,3);
insert into alarm values (alarm_seq.nextval,SYSDATE,1111,3,'tree3.jpg','voice_file3');
insert into post values (post_seq.nextval,'title','context',SYSDATE,1111,'tree3.jpg','voice_file3');

insert into parents values (2222,2222,'서울','010-1111-2222','고길동','남');
insert into children values (children_seq.nextval,'둘리','남',7,'children_photo',2222);
insert into img values (img_seq.nextval,SYSDATE,'kb.jpg',2222,4);
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file4',2222,4);
insert into alarm values (alarm_seq.nextval,SYSDATE,1111,4,'kb.jpg','voice_file4');
insert into post values (post_seq.nextval,'title','context',SYSDATE,2222,'kb.jpg','voice_file4');

insert into children values (children_seq.nextval,'마이콜','남',5,'children_photo',2222);
insert into img values (img_seq.nextval,SYSDATE,'kb2.jpg',2222,5);
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file5',2222,5);
insert into alarm values (alarm_seq.nextval,SYSDATE,1111,4,'kb2.jpg','voice_file5');
insert into post values (post_seq.nextval,'title','context',SYSDATE,2222,'kb2.jpg','voice_file5');

insert into children values (children_seq.nextval,'희동이','남',3,'children_photo',2222);
insert into img values (img_seq.nextval,SYSDATE,'kb3.jpg',2222,6);
insert into voice values (voice_seq.nextval,SYSDATE,'voice_file6',2222,6);
insert into alarm values (alarm_seq.nextval,SYSDATE,2222,6,'kb3.jpg','voice_file6');
insert into post values (post_seq.nextval,'title','context',SYSDATE,2222,'kb3.jpg','voice_file6');


commit;