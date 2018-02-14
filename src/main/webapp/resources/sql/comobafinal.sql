-- 공통 테이블

update cmb_member set status = 0 where nickname = '월이2'
commit


update cmb_member set status = 1
	    where memberno = 17

commit;


select * from cmb_member

create table cmb_member 
(memberno  number        not null    -- 회원번호
,nickname  varchar2(30)  not null    -- 닉네임 
,pwd       varchar2(50)  not null    -- 암호
,email     varchar2(50)  not null    -- 이메일
,status    number(1) default 1       -- 회원상태(1:회원 / 0:회원불)
,constraint PK_cmb_member primary key(memberno)
,constraint CK_cmb_member_status check(status in(0,1))
);


select rno, memberno, nickname, pwd, email, status, studycnt, joindate, comments 
from(
select rownum as rno, V.memberno, V.nickname, V.pwd, V.email, V.status, V.studycnt, V.joindate, V.comments 
from
(
select memberno, nickname, pwd, email, status, studycnt, joindate, comments 
from cmb_member
where status = 1
  order by memberno desc
) V
) T

select * 
from tab




alter table cmb_board add (commentCount number);

alter table cmb_board add (nickname  varchar2(20));

select *
		from cmb_board
		where status = 1

insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '제발 한번에..' , sysdate - 365 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');


commit;

insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');


insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 *3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 2 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 3 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

select count (*) as boardCnt from cmb_board where writedate between TO_DATE('2010','yyyy') and  TO_DATE('2010'+1,'yyyy') ;

select count (*) as boardCnt2016 from cmb_board where writedate between TO_DATE('2016','yyyy') and  TO_DATE('2016'+1,'yyyy') ;


                           
                           or writedate <  TO_DATE('2015','yyyy')+365 order by writedate;
                          
select * from cmb_board where writedate <  TO_DATE('2015','yyyy')+365  order by writedate;

insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 4 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 4 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');


insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 5 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 5 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 5 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 5 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 6 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');
insert into cmb_board values (seq_cmb_board.nextval , 14 , '되겟지???;; ㅠㅠ' , sysdate - 365 * 6 , 0, 1, '어이없군..', 0, 0, 2, '재리',0,'','','');

insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 4 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 8 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 7 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 2 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 1 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate - 365 * 3 , 1, 1);
insert into CMB_STORY values (seq_CMB_board.nextval , 15 , '되겟지???;; ㅠㅠ' ,0, sysdate + 180 , 1, 1);

select * from CMB_order
commit


commit;


select *from tab;

select * from cmb_studyroom;

select * from CMB_STORY;

insert  

select count(*) from CMB_STORY where regdate = to_date(2017,'yyyy');

select * from CMB_GONGLIVE;

select * from cmb_studyroom;
from
(select * from cmb_order);



--select distinct  sum (D.STUDYROOM_NO * D.cost * E.PEOPLE  )  from cmb_order E join cmb_studyroom D  on E.FK_STUDYROOM_NO = D.STUDYROOM_NO  order by city;



select  FK_STUDYROOM_NO ,people , usehour from cmb_order E join cmb_studyroom D  on E.FK_STUDYROOM_NO = D.STUDYROOM_NO ;


select count (*) from CMB_STORY where regdate between TO_DATE('2017','yyyy') and  TO_DATE('2017'+1,'yyyy') ;
--------------------------------------------------------------------------------------------------------------------------------
양승모 sql
--------------------------------------------------------------------------------------------------------------------------------










--------------------------------------------------------------------------------------------------------------------------------
김송희 sql
--------------------------------------------------------------------------------------------------------------------------------



37.53383346051473

126.88684043643184	
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST
	from (
select * from cmb_studyroom 
where (LONGITUDE between 0 - 0.01 and 355 + 0.01)
  and (LATITUDE between   1 and 37.53 + 0.0025)
		)V
  )T
  
  select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST , LONGITUDE ,LATITUDE
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST , V.LONGITUDE ,V.LATITUDE
	from (
select * from cmb_studyroom 
where (LATITUDE between 37.53385047631118 - 0.01 and 37.53385047631118 + 0.01)
  and (LONGITUDE between   126.89230141398616 
  - 0.0025 and 126.89230141398616 + 0.0025)
		)V
  )T
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST
	from (
select * from cmb_studyroom 
where (latitude between  37.534250346432984 - 0.0025 and  37.534250346432984 + 0.0025)
  and (longitude between  126.8972795939178 - 0.01 and 126.8972795939178 + 0.01)
		)V
  )T



select * from cmb_studyroom 
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST
	from (
select * from cmb_studyroom 
where (latitude between  37.534250346432984 - 0.0025 and  37.534250346432984 + 0.0025)
  and (longitude between  126.8972795939178 - 0.01 and 126.8972795939178 + 0.01)
		)V
  )T
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST , LONGITUDE ,LATITUDE
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST , V.LONGITUDE ,V.LATITUDE
	from (
select * from cmb_studyroom 
where (LATITUDE between  37.534267362134834 - 0.0025 and 37.534267362134834 + 0.0025)
  and (LONGITUDE between   126.89781603572078 - 0.01 and 126.89781603572078 + 0.01)
		)V
  )T
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST , LONGITUDE ,LATITUDE
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST , V.LONGITUDE ,V.LATITUDE
	from (
select * from cmb_studyroom 
where (LONGITUDE between  37.534267362134834 - 0.0025 and 37.534267362134834 + 0.0025)
  and (LATITUDE between   126.89781603572078 - 0.01 and 126.89781603572078 + 0.01)
		)V
  )T
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST , LONGITUDE ,LATITUDE
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST , V.LONGITUDE ,V.LATITUDE
	from (
select * from cmb_studyroom 
where (LATITUDE between  37.534267362134834 - 0.0025 and 37.534267362134834 + 0.0025)
  and (LONGITUDE between   126.89781603572078 - 0.01 and 126.89781603572078 + 0.01)
		)V
  )T
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST
	from (
select * from cmb_studyroom 
where (latitude between  37.534250346432984 - 0.0025 and  37.534250346432984 + 0.0025)
  and (longitude between  126.8972795939178 - 0.01 and 126.8972795939178 + 0.01)
		)V
  )T
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST , LONGITUDE ,LATITUDE
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST , V.LONGITUDE ,V.LATITUDE
	from (
select * from cmb_studyroom 
where (LATITUDE between  37.534267362134834 - 0.0025 and 37.534267362134834 + 0.0025)
  and (LONGITUDE between   126.89781603572078 - 0.01 and 126.89781603572078 + 0.01)
		)V
  )T
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST , LONGITUDE ,LATITUDE
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST , V.LONGITUDE ,V.LATITUDE
	from (
select * from cmb_studyroom 
where (LONGITUDE between  37.534267362134834 - 0.0025 and 37.534267362134834 + 0.0025)
  and (LATITUDE between   126.89781603572078 - 0.01 and 126.89781603572078 + 0.01)
		)V
  )T
select rno ,STUDYROOM_NO , STUDYROOM_NAME, ADDR1, ADDR2, HP, COST , LONGITUDE ,LATITUDE
from(
select rownum as rno ,V.STUDYROOM_NO , V.STUDYROOM_NAME, V.ADDR1, V.ADDR2, V.HP, V.COST , V.LONGITUDE ,V.LATITUDE
	from (
select * from cmb_studyroom 
where (LATITUDE between 37.53385047631118 - 0.01 and 37.53385047631118 + 0.01)
  and (LONGITUDE between   126.89230141398616 
  - 0.0025 and 126.89230141398616 + 0.0025)
		)V
  )T

where LONGITUDE between 126.896963 and  127

CMB_STUDYROOM_ADDFILE







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

select * from CMB_STUDYROOM_ADDFILE


create table cmb_board
(board_no        number        not null         -- 게시글번호
,memberno_fk     number        not null         -- 글쓴 회원번호
,subject         varchar2(200) not null         -- 글제목 
,writedate       date default sysdate not null  -- 글쓴 시간
,readCount       number        not null         -- 조회수
,status          number(1) default 1            -- 글삭제여부
,constraint PK_cmb_board_board_no primary key(board_no)
,constraint FK_cmb_board_memberno_fk foreign key(memberno_fk) references cmb_member(memberno)
,constraint CK_cmb_board_status check(status in(0,1))
);

select * from tab;

select * from cmb_gonglive where 

select * from cmb_board;
select * from cmb_member;
select * from cmb_board_contents;



create  cmb_boardComment (


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



--drop table cmb_studyroom purge;
--drop sequence seq_cmb_studyroom;
--drop table cmb_studyroom_contents purge;
--drop sequence seq_cmb_studyroom_contents;
--drop table cmb_studyroom_addfile purge;
--drop sequence seq_cmb_studyroom_addfile;

select * from cmb_studyroom_addfile;
select * from cmb_studyroom;
select * from cmb_studyroom A, cmb_studyroom_addfile B where B.FK_STUDYROOM_NO = A.STUDYROOM_NO  ;
select * from cmb_studyroom_contents;

--- << 17스터디룸 테이블 >> ---
create table cmb_studyroom
(studyroom_no  number         not null   -- 스터디룸 번호
,studyroom_name          varchar2(100)  not null   -- 이름
,addr1          varchar2(100)  not null   -- 주소1
,addr2         varchar2(100)  not null   -- 주소2
,hp            varchar2(13)   not null   -- 연락처
,cost          number(10)     not null   -- 비용
,longitude     varchar2(20)    not null   -- 경도
,latitude      varchar2(20)    not null   -- 위도
,constraint PK_cmb_studyroom_studyroom_no primary key(studyroom_no)

);

PK_spring_tblComment_seq

select * from cmb_studyroom_addfile




alter table cmb_studyroom modify(longitude varchar2(20),latitude varchar2(20));


alter table cmb_studyroom drop(fk_memberno);

select * 
from cmb_studyroom_contents;



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
(studyroom_contents_no   number           not null     -- 스터디룸 등록번호
,board_contents          varchar2(1000)   not null     -- 스터디룸 테이블 내용
,constraint PK_cmb_studyroom_contents_no primary key (studyroom_contents_no)

);

--constraint FK_cmb_addfile_fk_studyroom_no foreign key(fk_studyroom_no)
  --                              references cmb_studyroom(studyroom_no)


select *
from cmb_studyroom_addfile

alter table cmb_studyroom_contents
drop constraint fk_studyroom_no;

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
from cmb_studyroom;

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

);

select * from cmb_studyroom

select * from  cmb_studyroom_addfile
 
 insert into cmb_studyroom_addfile(addfile_no, fk_studyroom_no, imagefilename, imageorgFilename, imagefileSize, thumbnailFileName) 
		values(seq_cmb_studyroom_addfile.nextval, 2, '튤립', 'ㄴㅁ웆ㅂ', 123123, 'ㅁㄴㄴ') 
 
 commit
 
 
 
 --alter table cmb_studyroom_addfile add
 --(imagefilename     varchar2(400) not null
--, imageorgFilename  varchar2(400) not null
--, imagefileSize     number
--, thumbnailFileName varchar2(400))

select * from cmb_board

------------------------------------나만

select board_no, memberno_fk, nickname, subject, readCount, writedate, commentCount
		from 
		(
		  select rownum as RNO
		       , V.board_no, V.memberno_fk, V.nickname, V.subject, V.content, V.readCount, V.writedate, V.commentCount
		  from 
		  (
		      select board_no, memberno_fk, nickname 
		           , case when length(subject) > 20 then substr(subject, 1, 18)||'..'
		             else subject end as subject
		           , content , readCount
		           , to_char(writedate, 'yyyy-mm-dd hh24:mi:ss') as writedate
		           , commentCount
		      from cmb_board
		      where status = 1
	      order by board_no desc
		  ) V
		) T
	
  
  select * from cmb_studyroom


select seq_cmb_studyroom_addfile.nextval
from dual

----------------------------------------나만

select * from cmb_studyroom_addfile;

create sequence seq_cmb_studyroom_addfile
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

select seq_cmb_addfile.nextval
from dual

select * from cmb_member

insert into cmb_member values(seq_cmb_member.nextval, '재리', 'qwer1234$', 'woflqh12@naver.com' , 1, 0, default)

commit;


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

---- 결제 그래프 관한 테이블

  select * from cmb_order
  
  select * from cmb_studyroom
  
  select * from cmb_member
  
 
 select * from CMB_order
 
 
 -- drop table cmb_order purge;
  create table cmb_order 
  (order_no number not null           -- 예약번호 PK
  ,regdate date default sysdate       -- 결제시간 현재시간
  ,people number                      -- 스터디룸을 이용하는 인원수
  ,usehour number                    -- 스터디룸을 사용 하는 시간
  ,status number(1) default 0         -- 결제 완료 되면 1 아니면 0
  ,city number(1) default 0           -- 0 : 강남, 1 : 강서, 2 : 강동, 3 : 강북, 4 : 중구
  ,fk_studyroom_no number not null    -- 예약할 스터디룸의 번호
  -- ,fk_cost number not null            -- 스터디룸 비용을 참조 하여  인원수 * 비용 * 시간 를 한다        그냥 참조 받은값을 넣으려고 뺌
  ,fk_memberno number not null        -- 결제하는 회원번호
  ,constraint PK_cmb_order_order_no primary key(order_no)
  ,constraint FK_cmb_order_fk_memberno foreign key(fk_memberno) references cmb_member(memberno)
  ,constraint FK_cmb_order_fk_studyroom_no foreign key(fk_studyroom_no) references cmb_studyroom(studyroom_no)
  ,constraint CK_cmb_order_status check(status in(0,1))
  ,constraint CK_cmb_order_city check(city in(0,1,2,3,4))
  );
  
  
  
    select *
   		 from cmb_story
  		 group by to_char(regdate, 'yyyy')
  	 	order by 1
  
  --drop sequence seq_cmb_order;
  
  create sequence seq_cmb_order --결제시퀀스
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle
  nocache;
 
 
 ----------------------------------------------
 select * from cmb_order
 where to_char(regdate , 'yy') =17
 order by 2 desc
 
 
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, sysdate +150, 4, 3, 1, 1, 1, 17);
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, sysdate +180, 1, 2, 1, 2, 1, 17);
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, sysdate +120, 4, 3, 1,3, 1, 17);
 
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, sysdate - trunc(dbms_random.value(-170,180)), trunc(dbms_random.value(1,5)), trunc(dbms_random.value(1,4)), 1, 3, 1, 17);
 
 
 commit
 
 select *
 from cmb_board
 order by 1 desc;
 
 
 select *
 from cmb_order
 where city = 2
 order by regdate asc
 
 select *
 from cmb_order
 -----------------------------------------
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, default, 4, 3, 1, 4, 1, 17);
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, default, 4, 3, 1, 4, 1, 17);
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, default, 4, 3, 1, 4, 1, 17);
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, default, 4, 3, 1, 4, 1, 17);
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, default, 4, 3, 1, 4, 1, 17);
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, default, 4, 3, 1, 0, 1, 17);
 
 insert into cmb_order (order_no, regdate, people, usehour, status, city, fk_studyroom_no,  fk_memberno) values
 (seq_cmb_order.nextval, default, 4, 3, 1, 0, 1, 17);
 
 
 
 
 
 commit;
 
 select count (*)
 from cmb_order 
 where city = 0;
 
 
 commit;
 
 
 	select count (*) from cmb_order  where city = 6;
 
 
 
 	select board_no, memberno_fk, nickname, subject, readCount, writedate, commentCount
          , groupno, fk_seq, depthno
          , fileName, orgFilename, fileSize
		from 
		(
		  select rownum as RNO
		       , V.board_no, V.memberno_fk, V.nickname, V.subject, V.content, V.readCount, V.writedate, V.commentCount
            , V.groupno, V.fk_seq, V.depthno
		     , V.fileName, V.orgFilename, V.fileSize
		  from 
		  (
		      select board_no, memberno_fk, nickname 
		           , case when length(subject) > 20 then substr(subject, 1, 18)||'..'
		             else subject end as subject
		           , content , readCount
		           , to_char(writedate, 'yyyy-mm-dd hh24:mi:ss') as writedate
		           , commentCount
               , groupno, fk_seq, depthno
		         , fileName, orgFilename, fileSize
		      from cmb_board
		      where status = 1
 
     order by board_no desc
		  ) V
		) T;
   
   
      select * from cmb_board  order by writedate;
   
   		select count (*) as www from cmb_board where writedate between TO_DATE(2011,'yyyy') and  TO_DATE(2012,'yyyy');
   
   -------------------------태봉
   select B.*, A.cost*B.people*B.usehour as 가격
from cmb_studyroom A, cmb_order B
where A.studyroom_no = B.fk_studyroom_no
order by B.city
;
   -- 자유게시판 2010년부터 2017까지 게시물 현황
   select to_char(writedate, 'yyyy') as YEAR
 	            , count(*) as CNT
   		 from cmb_board
  		 group by to_char(writedate, 'yyyy')
  	 	order by 1;
      
      
       select to_char(regdate, 'yyyy') as YEAR
 	            , count(*) as CNT
   		 from cmb_order
  		 group by to_char(regdate, 'yyyy')
  	 	order by 1;
      
      
    -- 공라이브 2010년부터 2017까지 게시물 현황
      select count(*) as CNT
   		 from cmb_board
  		 group by to_char(writedate, 'yyyy')
  	 	order by 1
      
       select count(*) as CNT
   		 from cmb_story
  		 group by to_char(regdate, 'yyyy')
  	 	order by 1
      
      select *
      from (select  count(*) 
      from 
      (select  count(*) as CNT
   		 from cmb_gonglive
       where to_char(writedate, 'yyyy') =2010
      ) V
       where to_char(writedate, 'yyyy') =2011
      )T
      
      
   
   select typecode, typename
		from chart_jepumType
		where typecode in(select fk_typecode
                  		  from chart_jepumDetail
                  		   where fk_jepumno = 1000)
   
   -- 갯수 지역별로 가격을 합산, 갯수
 select city,  sum(  A.cost*B.people*B.usehour) as regioncost, COUNT(*)
from cmb_studyroom A, cmb_order B
where A.studyroom_no = B.fk_studyroom_no
group by city 
order by B.city

--
  select to_char(writedate, 'mm') as mm
         , count(*) as cnt
   from cmb_board
   where to_char(writedate, 'yy')= 17
   group by to_char(writedate, 'mm')
   order by 1;


------------ 17년도의 주문내역
select * from cmb_order
 where to_char(regdate , 'yy') =17
 order by 2 desc;
 


--중요
-- 17년도의 시티 4번의 월별 가격의 총합!
 
  select  to_char(regdate, 'mm') as month 
          , sum( A.cost*B.people*B.usehour) as totalcost4
    from cmb_studyroom A, cmb_order B
    where to_char(regdate, 'yy') = 17  
          and A.studyroom_no = B.fk_studyroom_no   
          and B.city = 4
    group by to_char(regdate, 'mm')
    order by 1
 
    ;
    select *
    from cmb_order
    ;
    
    
   select  sum( A.cost*B.people*B.usehour) as totalcost
    from cmb_studyroom A, cmb_order B
    where to_char(regdate, 'yy') = 17  
          
          and A.studyroom_no = B.fk_studyroom_no   
          
          and B.city = '4'
    group by to_char(regdate, 'mm') 
    order by 1




  select  sum( A.cost * B.people * B.usehour) as totalcost
  	  from cmb_studyroom A, cmb_order B
      where     to_char(regdate, 'yy') = 17  
			and A.studyroom_no = B.fk_studyroom_no
			and B.city = 0
      group by to_char(regdate, 'mm') 
      order by 1

select *
from cmb_order







 
    
    	select count (*) from cmb_order  where city = 0
     
 

       select count(*) as CNT, to_char(regdate, 'yyyy')
   		 from cmb_order
  		 group by to_char(regdate, 'yyyy')
  	 	order by 1

      
   -----------개조하자---------------------
   from (select  to_char(regdate, 'mm') as month 
           , sum( A.cost*B.people*B.usehour) as city4
           
    from cmb_studyroom A, cmb_order B
    where to_char(regdate, 'yy') = 17  
           
          and A.studyroom_no = B.fk_studyroom_no   
          
          and B.city = 0
    group by to_char(regdate, 'mm') 
    order by 1
 )V
    ;
   
   
   
    select  to_char(regdate, 'mm') as month 
          , sum( A.cost*B.people*B.usehour) as totalcost0
    from cmb_studyroom A, cmb_order B
    where to_char(regdate, 'yy') = 17  
          and A.studyroom_no = B.fk_studyroom_no   
          and B.city = 0
    group by to_char(regdate, 'mm')
    order by 1
    ;
    
    
   
   
   	 select  count(*) as cnt
   		 from cmb_board
  		 group by to_char(writedate, 'yyyy')
  	 	order by 1
      
      commit;
      
    select  sum( A.cost * B.people * B.usehour) as totalcost
  	  from cmb_studyroom A, cmb_order B
      where     to_char(regdate, 'yy') = 17  
			and A.studyroom_no = B.fk_studyroom_no
			and B.city = 0
      group by to_char(regdate, 'mm') 
      order by 1;
      
      
      
      -- 06 27 김재연
      
      select B.BOARD_CONTENTS , nickname
      from cmb_board A , CMB_BOARD_CONTENTS B
		      where status = 1
              and board_no = board_no_fk
              --and lower(subject) like '%' || lower(#{search}) || '%'
              
      order by 1 desc;
      
    	select substr(B.BOARD_CONTENTS, instr(B.BOARD_CONTENTS, #{search}, 1, 1),
			length(#{search}) +
			5 )
			as searchdata
			from cmb_board A , CMB_BOARD_CONTENTS B
			where
			lower(B.BOARD_CONTENTS) like '%' || lower(#{search}) || '%'
    
    select distinct nickname as searchdata
			from cmb_board A , CMB_BOARD_CONTENTS B
			where lower(nickname) like '%' || lower(#{search}) || '%'
    
      
      
      
      	select board_no, memberno_fk, nickname, category, subject, BOARD_CONTENTS, readCount, writedate, commentCount 
			 , groupno, fk_seq, depthno
          	 , fileName, orgFilename, fileSize
		from 
		(
		  select rownum as RNO
		       , V.board_no, V.memberno_fk, V.nickname, V.category, V.subject, V.BOARD_CONTENTS, V.readCount, V.writedate, V.commentCount
		       , V.groupno, V.fk_seq, V.depthno
		       , V.fileName, V.orgFilename, V.fileSize
		  from 
		  (
		      select board_no, memberno_fk, nickname 
		           , case when length(subject) > 20 then substr(subject, 1, 18)||'..'
		             else subject end as subject
               , category
		           , case when length(BOARD_CONTENTS) > 20 then substr(BOARD_CONTENTS, 1, 20)||'...'
                 else BOARD_CONTENTS
                 end as BOARD_CONTENTS
               , readCount
		           , to_char(writedate, 'yyyy-mm-dd hh24:mi:ss') as writedate
		           , commentCount
		           , groupno, fk_seq, depthno
		           , fileName, orgFilename, fileSize
		      from cmb_board A , CMB_BOARD_CONTENTS B
		      where status = 1
              and board_no = board_no_fk
		
		           and BOARD_CONTENTS like '%'|| '옹' ||'%'
		
		      order by board_no desc
		  ) V
		) T
      
       select SUBJECT as searchdata
    		  from cmb_board A , CMB_BOARD_CONTENTS B
		      where status = 1
              and board_no = board_no_fk
              and lower(subject) like '%' || '도' || '%'
     		 order by 1 desc
      
      
      	select substr(board_contents, instr(board_contents, '헤', 1, 1),
			length('헤') +
			5 )
			as searchdata
			from cmb_board A , CMB_BOARD_CONTENTS B
			where
      
			lower(board_contents) like '%' || lower('헤') || '%'
         and board_no = board_no_fk
      
      select *
      	from cmb_board A , CMB_BOARD_CONTENTS B
      
      
      
      cmb_board
      order by 1 desc
      
      	select board_no, memberno_fk, nickname, category, subject, BOARD_CONTENTS, readCount, writedate, commentCount 
			 , groupno, fk_seq, depthno
          	 , fileName, orgFilename, fileSize
		from 
		(
		  select rownum as RNO
		       , V.board_no, V.memberno_fk, V.nickname, V.category, V.subject, V.BOARD_CONTENTS, V.readCount, V.writedate, V.commentCount
		       , V.groupno, V.fk_seq, V.depthno
		       , V.fileName, V.orgFilename, V.fileSize
		  from 
		  (
		      select board_no, memberno_fk, nickname 
		           , case when length(subject) > 20 then substr(subject, 1, 18)||'..'
		             else subject end as subject
               , category
		           , case when length(BOARD_CONTENTS) > 20 then substr(BOARD_CONTENTS, 1, 20)||'...'
                 else BOARD_CONTENTS
                 end as BOARD_CONTENTS
               , readCount
		           , to_char(writedate, 'yyyy-mm-dd hh24:mi:ss') as writedate
		           , commentCount
		           , groupno, fk_seq, depthno
		           , fileName, orgFilename, fileSize
		      from cmb_board A , CMB_BOARD_CONTENTS B
		      where status = 1
              and board_no = board_no_fk
                order by board_no desc
		  ) V
		) T
    
     	select board_no, memberno_fk, nickname, subject, BOARD_CONTENTS, readCount, writedate, commentCount 
			 , groupno, fk_seq, depthno
          	 , fileName, orgFilename, fileSize
		from 
		(
		  select rownum as RNO
		       , V.board_no, V.memberno_fk, V.nickname, V.subject, V.BOARD_CONTENTS, V.readCount, V.writedate, V.commentCount
		       , V.groupno, V.fk_seq, V.depthno
		       , V.fileName, V.orgFilename, V.fileSize
		  from 
		  (
		      select board_no, memberno_fk, nickname 
		           , case when length(subject) > 20 then substr(subject, 1, 18)||'..'
		             else subject end as subject
		           , case when length(BOARD_CONTENTS) > 20 then substr(BOARD_CONTENTS, 1, 20)||'...'
                 else BOARD_CONTENTS
                 end as BOARD_CONTENTS
               , readCount
		           , to_char(writedate, 'yyyy-mm-dd hh24:mi:ss') as writedate
		           , commentCount
		           , groupno, fk_seq, depthno
		           , fileName, orgFilename, fileSize
		      from cmb_board A , CMB_BOARD_CONTENTS B
		      where status = 1 
              and board_no = board_no_fk
	
		      order by board_no desc
		  ) V
		) T
      --위가 완성본
      
      	select board_no, memberno_fk, nickname, subject, readCount, writedate, commentCount
			 , groupno, fk_seq, depthno
          	 , fileName, orgFilename, fileSize
		from 
		(
		  select rownum as RNO
		       , V.board_no, V.memberno_fk, V.nickname, V.subject, V.content, V.readCount, V.writedate, V.commentCount
		       , V.groupno, V.fk_seq, V.depthno
		       , V.fileName, V.orgFilename, V.fileSize
		  from 
		  (
		      select board_no, memberno_fk, nickname 
		           , case when length(subject) > 20 then substr(subject, 1, 18)||'..'
		             else subject end as subject
		           , content , readCount
		           , to_char(writedate, 'yyyy-mm-dd hh24:mi:ss') as writedate
		           , commentCount
		           , groupno, fk_seq, depthno
		           , fileName, orgFilename, fileSize
		      from cmb_board
		      where status = 1
          	      order by board_no desc
		  ) V
		) T
      
      select * from cmb_board , CMB_BOARD_CONTENTS where board_no = board_no_fk
      
      insert into CMB_BOARD_CONTENTS values( 221 , '벨비유 나의 사랑 그대 널보면 너와 함께 있으면 어둠은 사라져 시간이 멈춰서 이 공간엔 너와 나 둘만 남겨져 love was alwats painful ')
      commit
      select *  from CMB_BOARD_CONTENTS
      select *  from CMB_STORY
      select *  from cmb_board order by 1 desc
      
      select * from cmb_board
      
      update cmb_board set  status = 1
      
      commit;
      
      update cmb_board set status = 0
	    where Board_no = #{Board_no}
      
      CMB_GONGLIVE
      
      CMB_STORY
      
      insert into spring_tblBoard(seq, userid, name, subject, content, pw, readCount, regDate, status, groupno, fk_seq, depthno, fileName, orgFilename, fileSize)
		values(spring_boardSeq.nextval, #{userid}, #{name}, #{subject}, #{content}, #{pw}, default, default, default, #{groupno}, default, default, #{fileName, jdbcType=VARCHAR}, #{orgFilename}, #{fileSize}) 
		
      ---0628 
      <if test='colname.equals("subject")'>
      	 select BOARD_NO , SUBJECT , BOARD_CONTENTS, NICKNAME, WRITEDATE
    		  from cmb_board A , CMB_BOARD_CONTENTS B
		      where status = 1
              and board_no = board_no_fk
              
       	<if test='colname.equals("board_contents")'>
		 select BOARD_NO , SUBJECT , BOARD_CONTENTS, NICKNAME, WRITEDATE
			from cmb_board A , CMB_BOARD_CONTENTS B
			where
			lower(board_contents) like '%' || lower(#{search}) || '%'
			   and board_no = board_no_fk       
         
         
         	<if test='colname.equals("nickname")'>
		 select BOARD_NO , SUBJECT , BOARD_CONTENTS, NICKNAME, WRITEDATE
			from cmb_board A , CMB_BOARD_CONTENTS B
			where lower(nickname) like '%' || lower(#{search}) || '%'    
     
     
  <resultMap type="java.util.HashMap" id="getSearchWordMap">
		<result property="BOARD_NO" column="board_no" javaType="String" />
	</resultMap>
     
  <resultMap type="java.util.HashMap" id="getSearchWordMap">
		<result property="SUBJECT" column="Subject" javaType="String" />
	</resultMap>     
     
  <resultMap type="java.util.HashMap" id="getSearchWordMap">
		<result property="NICKNAME" column="nickname" javaType="String" />
	</resultMap>     
     
  <resultMap type="java.util.HashMap" id="getSearchWordMap">
		<result property="WRITEDATE" column="writedate" javaType="date" />
	</resultMap>     
  
      
--------------------------------------------------------------------------------------------------------------------------------
안태연 sql
--------------------------------------------------------------------------------------------------------------------------------








--------------------------------------------------------------------------------------------------------------------------------
김재민 sql
--------------------------------------------------------------------------------------------------------------------------------


  select  to_char(regdate, 'mm') , sum( A.cost * B.people * B.usehour) as totalcost
  	  from cmb_studyroom A, cmb_order B
      where     to_char(regdate, 'yy') = 17  
			and A.studyroom_no = B.fk_studyroom_no
			and B.city = 2
      group by to_char(regdate, 'mm') 
      order by 1






--------------------------------------------------------------------------------------------------------------------------------
박월성 sql
--------------------------------------------------------------------------------------------------------------------------------
