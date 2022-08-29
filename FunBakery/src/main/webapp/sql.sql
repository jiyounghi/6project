select * from T_MEMBER;

insert into T_MEMBER values('admin','admin','admin',sysdate,'a');

<<<<<<< HEAD
<<<<<<< HEAD
delete from T_MEMBER where mb_id = 'seongjin';
=======
=======
>>>>>>> branch 'master' of https://gwangju-ai-gitlab.elice.io/jiyounghi/firstteamproject.git
insert into T_COMMUNITY values(1, '제목입니다', '내용입니다', '22/08/25', 'admin',0);
insert into T_COMMUNITY values(2, '제목입니다', '내용입니다', '22/08/26', 'admin',0);
insert into T_COMMUNITY values(t_community_SEQ.nextval,'제목입니다', '내용입니다', '22/08/26', 'admin',0);

SELECT b.article_seq, b.article_title, b.article_content, b.article_date, m.mb_name, b.article_count FROM t_community b, t_member m WHERE b.mb_id = m.mb_id ORDER BY b.article_seq DESC;

select * from t_community;

select * from t_comment;

SELECT b.article_title, b.article_content, b.article_date, m.mb_name FROM t_community b, t_member m where b.mb_id = m.mb_id and b.article_seq=1;

insert into T_COMMENT values(1,1,'댓글입니다1','22/08/25','admin');
insert into T_COMMENT values(2,1,'댓글입니다2','22/08/25','admin');
insert into T_COMMENT values(3,1,'댓글입니다3','22/08/25','admin');
insert into T_COMMENT values(4,1,'댓글입니다4','22/08/25','admin');
insert into T_COMMENT values(5,1,'안녕하세요. 댓글 구현 중입니다. 이게 맞나싶기도하고 점점 괜찮아지는거보니까 맞는거 같긴 합니다. 좋은 하루를 보내고 싶지만 그러지 못할거 같군요. 좋은 하루를 보낼 수 있길 빕니다. 이만 글을 줄이겠습니다.','22/08/26','admin');

select * from T_COMMENT;

SELECT c.cmt_content, c.cmt_date, m.mb_name FROM t_comment c, t_member m WHERE c.mb_id = m.mb_id and c.article_seq=1 order by cmt_seq;
<<<<<<< HEAD
>>>>>>> refs/remotes/origin/master
=======
=======
delete from T_MEMBER where mb_id = 'seongjin';
>>>>>>> sj
>>>>>>> branch 'master' of https://gwangju-ai-gitlab.elice.io/jiyounghi/firstteamproject.git
