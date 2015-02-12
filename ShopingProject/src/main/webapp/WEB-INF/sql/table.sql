create table userinfo(
   mid number(10) PRIMARY KEY,
   m_id varchar2(50) NOT NULL,
   m_pass varchar2(50) NOT NULL,
   m_name varchar2(50) NOT NULL,
   m_gender varchar2(10) NOT NULL,
   m_email1 varchar2(50) NOT NULL,
   m_email2 varchar2(50) NOT NULL,
   m_homephone varchar2(30) NOT NULL,
   m_cellphone varchar2(30) NOT NULL,
   m_zipcode1 varchar2(20) NOT NULL,
   m_zipcode2 varchar2(20) NOT NULL,
   m_addr1 varchar2(150) NOT NULL,
   m_addr2 varchar2(150) NOT NULL,
   m_point number(10) default 1000,
   m_role varchar2(20) null
)

create sequence mem_seq 
   start with 1
   increment by 1
   nocycle

drop table member;
drop sequence mem_seq

create table iteminfo(
   i_num number(10) PRIMARY KEY,  /*고유번호*/
   i_name varchar2(50) NOT NULL,   /*상품명*/
   category varchar2(50) NOT NULL,
   i_comment varchar2(100) NOT NULL,   /*상품내용*/
   i_option varchar2(50),    /*옵션*/
   i_option1 varchar2(50),   /*옵션1*/
   i_count number(10) NOT NULL,   /*재고*/
   i_price number(10) NOT NULL,   /*가격*/
   i_img varchar2(50) NOT NULL   /*상품사진*/
)

create sequence it_seq
   start with 1
   increment by 1
   nocycle
   
insert into iteminfo values
(
it_seq.nextval,
'shoes',
'sdfasfdasdasd',
'S/M/L',
'250/260/270',
10000,
52000,
'shoes.jpg'
)

insert into iteminfo values
(
it_seq.nextval,
'shoes1',
'sdfasfdasdassdd',
'black/yellow/green',
'250/260/270',
10000,
2252000,
'shoes1.jpg'
)

insert into iteminfo values
(
it_seq.nextval,
'tee-shirt',
'sdfasfdassddasd',
'S/M/L',
'red/blue/pink',
100002,
5200023,
'shoes2.jpg'
)

CREATE TABLE message (
  SEQ_NO number(10) NOT NULL ,
  FROM_ID varchar2(30) NOT NULL,
  TO_ID varchar2(30) NOT NULL,
  CONTENT varchar2(1000) NOT NULL,
  SEND_DATE DATE NULL,
  CONFIRM_DATE DATE NULL,
  PRIMARY KEY (SEQ_NO)
);
drop sequence message_SEQ_NO_seq;
create sequence message_SEQ_NO_seq start with 1;