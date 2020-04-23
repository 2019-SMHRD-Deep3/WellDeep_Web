


drop table post;
drop table alarm;
drop table record;
drop table voice;
drop table children;
drop table parsents;
drop table img;

create table parsents (
persents_id varchar2(50) PRIMARY key,
persents_pw varchar2(50) not null,
persents_addr varchar2(300) not null,
persents_phone varchar2(100) not null,
persents_name varchar2(50) not null,
persents_sex varchar2(20) not null
);

create table children (
children_number varchar2(50) PRIMARY key,
children_name varchar2(50) not null,
children_sex varchar2(10) not null,
children_age varchar2(20) not null,
children_photo varchar2(1000),
persents_id varchar2(50) not null,
constraint fk_persents_id_chil foreign key(persents_id)
references parsents
);

create table img (
img_number varchar2(50) PRIMARY key,
img_photo varchar2(4000),
img_time varchar2(100),
img_file varchar2(1000)
);

create table voice (
voice_number varchar2(50) primary key,
voice_time varchar2(100) not null,
voice_file varchar2(1000) not null
);

create table record (
record_number varchar2(50) primary key,
record_photo varchar2(4000) not null,
record_time varchar2(100) not null,
persents_id varchar2(50) not null,
children_number varchar2(50) not null,
img_number varchar2(50) not null,
voice_number varchar2(50) not null,
constraint fk_persents_id_record foreign key(persents_id)
references parsents,
constraint fk_children_number_record foreign key(children_number)
references children,
constraint fk_img_number_record foreign key(img_number)
references img,
constraint fk_voice_number_record foreign key(voice_number)
references voice
);

create table post (
post_number varchar2(50) primary key,
post_title varchar2(500) not null,
post_context varchar2(2000) not null,
post_time varchar2(100) not null,
persents_id varchar2(50) not null,
img_number varchar2(50) not null,
voice_number varchar2(50) not null,
constraint fk_persents_id_post foreign key(persents_id)
references parsents,
constraint fk_img_number_post foreign key(img_number)
references img,
constraint fk_voice_number_post foreign key(voice_number)
references voice
);

create table alarm (
alarm_number varchar2(50) primary key,
alarm_time varchar2(100) not null,
alarm_phone varchar2(100) not null,
persents_id varchar2(50) not null,
children_number varchar2(50) not null,
record_number varchar2(50) not null,
img_number varchar2(50) not null,
voice_number varchar2(50) not null,
constraint fk_persents_id_alarm foreign key(persents_id)
references parsents,
constraint fk_children_number_alarm foreign key(children_number)
references children,
constraint fk_record_number_alarm foreign key(record_number)
references record,
constraint fk_img_number_alarm foreign key(img_number)
references img,
constraint fk_voice_number_alarm foreign key(voice_number)
references voice
);
