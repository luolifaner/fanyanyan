package org.mzd.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.lanqiao.domain.Post;
import org.lanqiao.domain.Reply;
import org.mzd.util.JdbcUtils;

public class PostDao {

	public List<Reply> login(Reply reply) {
		SqlSession session = JdbcUtils.openSqlSession();
		List<Reply> list = session.selectList("org.mzd.xmlsql.Post.login",reply);
		session.close();
		return list;
	}
public List<Post> select(){
	SqlSession session=JdbcUtils.openSqlSession();
	List<Post> list=session.selectList("org.mzd.xmlsql.Post.selectPost");
	session.close();
	return list;
	
}
public List<Post> selectReply(int id) {
	SqlSession session=JdbcUtils.openSqlSession();
	List<Post> list=session.selectList("org.mzd.xmlsql.Post.getRow");
	session.close();
	return list;
}
public List<Post> selectMore(int id) {
	SqlSession session=JdbcUtils.openSqlSession();
	List list=session.selectList("org.mzd.xmlsql.Post.selectMore");
	session.close();
	return list;
}
}
