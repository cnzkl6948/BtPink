﻿drop sequence board_seq;
drop sequence reply_seq;
drop table reply;
drop table board;

-------id = notnull추가할것, id회원에 있는걸로 되도록 fk조건 넣을것!

create table board(
boardnum number primary key,
id varchar2(20),
title varchar2(100) not null,
content varchar2(2000) not null,
inputdate date default sysdate
);


-- 게시판 일련번호에 사용할 시퀀스 
create sequence board_seq start with 1 increment by 1;

create table reply (
replynum number primary key,
boardnum number not null,
id varchar2(20) not null,
text varchar2(200) not null,
inputdate date default sysdate,
constraint reply_fk foreign key(boardnum) references board(boardnum) on delete cascade
);


-- 리플에 사용할 시퀀스
create sequence reply_seq start with 1 increment by 1;

-- 글 저장 예
insert into board (boardnum, id, title, content, drop sequence board_seq;
drop sequence reply_seq;
drop table reply;
drop table board;

id = notnull해제

create table board(
boardnum number primary key,
id varchar2(20),
title varchar2(100) not null,
content varchar2(2000) not null,
inputdate date default sysdate,
);


-- 게시판 일련번호에 사용할 시퀀스 
create sequence board_seq start with 1 increment by 1;

create table reply (
replynum number primary key,
boardnum number not null,
id varchar2(20) not null,
text varchar2(200) not null,
inputdate date default sysdate,
constraint reply_fk foreign key(boardnum) references board(boardnum) on delete cascade
);


-- 리플에 사용할 시퀀스
create sequence reply_seq start with 1 increment by 1;

-- 글 저장 예
insert into board (boardnum, id, title, content, classification) values (board_seq.nextval, 'aaa', '글제목', '글내용','식단');
insert into board(boardnum,id,title,content,classification) values(board_seq.nextval, 'aaa','hello','helloworld','행사');
	
-- 리플 저장 예
insert into reply (replynum, boardnum, id, text) values (reply_seq.nextval, 5, 'bbb', '리플의 내용1...');
insert into reply (replynum, boardnum, id, text) values (reply_seq.nextval, 5, 'kkk', '리플의 내용2...');
insert into reply (replynum, boardnum, id, text) values (reply_seq.nextval, 5, 'ddd', '리플의 내용3...');



//////////////////////////////////////////////////////////////////
drop table demand;


--학부모 요청사항
create table demand(
demandnum number primary key,
stdno varchar2(50) ,
demandsubject varchar2(100)default 'etc',
attend varchar2(200) default 'normal',
startdate date not null,
enddate date not null,
demandcontent varchar2(2000) not null,
classno varchar2(50) not null
);
////////////////////////////제약조건 나중에 추가할것!!
constraint stdno_fk foreign key(stdno) references student(stdno),
constraint classno_fk foreign key(classno) references class(classno)


/////////////////////////////////////////////////////////////////

-- demandNum에 사용할 시퀀스
create sequence demand_seq start with 1 increment by 1;

