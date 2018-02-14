-- 공통 테이블



create table cmb_member 
(memberno  number        not null    -- 회원번호
,nickname  varchar2(30)  not null    -- 닉네임 
,pwd       varchar2(50)  not null    -- 암호
,email     varchar2(50)  not null    -- 이메일
,status    number(1) default 1       -- 회원상태(1:회원 / 0:회원불)
,constraint PK_cmb_member primary key(memberno)
,constraint CK_cmb_member_status check(status in(0,1))
);


select * from cmb_member















--------------------------------------------------------------------------------------------------------------------------------
양승모 sql
--------------------------------------------------------------------------------------------------------------------------------










--------------------------------------------------------------------------------------------------------------------------------
김송희 sql
--------------------------------------------------------------------------------------------------------------------------------








--------------------------------------------------------------------------------------------------------------------------------
김재연 sql
--------------------------------------------------------------------------------------------------------------------------------



--- << 3자유게시판 내용 테이블(자유게시판 테이블)>> ---
create table cmb_board_contents
(--board_contents_no  number         not null    -- 자유게시판번호
board_no_fk         number         not null    -- 게시판글번호 
,board_contents     VARCHAR2(2000) not null    -- 자유게시판내용
,constraint PK_cmb_contents_board_no_fk primary key(board_no_fk)
,constraint FK_cmb_board_no_fk  foreign key(board_no_fk) references cmb_board(board_no)
);


create table cmb_board
(board_no        number        not null         -- 게시글번호
,memberno_fk     number        not null         -- 회원번호
,subject         varchar2(200) not null         -- 제목 
,writedate       date default sysdate not null  -- 작성일자
,readCount       number        not null         -- 조회수
,status          number(1) default 1            -- 게시물삭제유무
,constraint PK_cmb_board_board_no primary key(board_no)
,constraint FK_cmb_board_memberno_fk foreign key(memberno_fk) references cmb_member(memberno)
,constraint CK_cmb_board_status check(status in(0,1))
);







--------------------------


select *
from ALL_ALL_TABLES
where OWNER = 'AWSCOMOBA';




create sequence seq_cmb_member
start with 1
increment by 1
nomaxvalue 
nominvalue
nocycle
nocache;


--drop table comoba_member purge;




select *
from SYS.ALL_SEQUENCES
WHERE SEQUENCE_OWNER = 'AWSCOMOBA';

--- << 17스터디룸 테이블 >> ---
create table cmb_studyroom
(studyroom_no  number         not null   -- 스터디룸 번호
,studyroom_name          varchar2(100)  not null   -- 이름
,addr1          varchar2(100)  not null   -- 주소1
,addr2         varchar2(100)  not null   -- 주소2
,hp            varchar2(13)   not null   -- 연락처
,cost          number(10)     not null   -- 비용
,longitude     varchar2(3)    not null   -- 경도
,latitude      varchar2(4)    not null   -- 위도
,constraint PK_cmb_studyroom_no primary key(studyroom_no)

);



alter table cmb_studyroom modify(longitude varchar2(20),latitude varchar2(20));


alter table cmb_studyroom drop(fk_memberno);

select * 
from cmb_studyroom;

--drop table cmb_studyroom purge;

create sequence seq_cmb_studyroom
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


--drop sequence seq_cmb_studyroom;

--select *
--from ALL_sequences


create table cmb_studyroom_contents
(studyroom_contents_no   number           not null     -- 스터디룸 내용 번호
,fk_studyroom_no         number           not null     -- 스터디룸 번호
,board_contents          varchar2(1000)   not null     -- 스터디룸 테이블 내용
,constraint PK_cmb_studyroom_contents_no primary key (studyroom_contents_no)
,CONSTRAINT FK_cmb_studyroom_contents FOREIGN KEY (fk_studyroom_no)
		REFERENCES cmb_studyroom (studyroom_no)
);


commit;
--drop table cmb_studyroom_contents purge;

create sequence seq_cmb_studyroom_contents
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

--drop sequence seq_cmb_studyroom_contents;

select * 
from cmb_studyroom_contents;

--drop table cmb_studyroom_addfile purge;

create table cmb_studyroom_addfile
( addfile_no        number           not null       -- 이미지 번호
, fk_studyroom_no   number           not null       -- 스터디룸 번호
, attachedfile      varchar2(400) default 'noimage.png'  -- 첨부파일
, imagefilename     varchar2(400) not null
, imageorgFilename  varchar2(400) not null
, imagefileSize     number
, thumbnailFileName varchar2(400)
,constraint PK_cmb_addfile_addfile_no primary key(addfile_no)
,constraint FK_cmb_addfile_studyroom_no_fk foreign key(fk_studyroom_no)
                                references cmb_studyroom(studyroom_no)
);
select * from  cmb_studyroom
 
 --alter table cmb_studyroom_addfile add
 --(imagefilename     varchar2(400) not null
--, imageorgFilename  varchar2(400) not null
--, imagefileSize     number
--, thumbnailFileName varchar2(400))




select * from cmb_studyroom_addfile;

create sequence seq_cmb_studyroom_addfile
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


--drop sequence seq_cmb_studyroom_addfile;


select *
from comoba_test

insert into comoba_test values  (1);


select *
from  cmb_member



-------------------------------------
--text



insert into cmb_studyroom_addfile(addfile_no, fk_studyroom_no, imagefilename, imageorgFilename, imagefileSize, thumbnailFileName) 
		values(seq_cmb_studyroom_addfile.nextval, seq_cmb_studyroom.nextval, '20170616174548202688141571911.jpg', 'Hydrangeas.jpg', 595284, '20170616174548202688143116584.jpg');

	insert into cmb_studyroom(studyroom_no, studyroom_name, addr1, addr2, hp, cost, longitude, latitude)
		values(seq_cmb_studyroom.nextval, '용시', '용용구', '용용동', 01094604053 , 1300, '37.533812', '126.896963')

select seq_cmb_studyroom.nextval
from dual;

commit;
select * from cmb_studyroom
--------------------------------------------------------------------------------------------------------------------------------
안태연 sql
--------------------------------------------------------------------------------------------------------------------------------








--------------------------------------------------------------------------------------------------------------------------------
김재민 sql
--------------------------------------------------------------------------------------------------------------------------------









--------------------------------------------------------------------------------------------------------------------------------
박월성 sql
--------------------------------------------------------------------------------------------------------------------------------
