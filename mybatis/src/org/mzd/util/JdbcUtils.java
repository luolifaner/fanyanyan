package org.mzd.util;

import java.io.IOException;
import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class JdbcUtils {

	static SqlSessionFactory sessionFactory;
	static{
		String resource = "mybatis-config.xml";
		InputStream is=null;
		try {
			is = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sessionFactory = new SqlSessionFactoryBuilder().build(is);
	}
	public static SqlSession openSqlSession(){
		SqlSession session = sessionFactory.openSession();
		return session;
	}
}
