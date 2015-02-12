package utills;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// MybatisManager.getSqlSession()...........
public class MybatisManager {
	private static SqlSessionFactory sqlMapper;
	static {
		String resources ="mybatis/mybatis-config.xml";
		Reader reader;
		try {
			reader = Resources.getResourceAsReader(resources);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			System.out.println("Mybatis Manager success");
		} catch (IOException e) {
			System.out.println("Mybatis Manager error");
			e.printStackTrace();
		}
	}
	public static SqlSessionFactory getSqlSession(){
		System.out.println("Sqlsession return");
		return sqlMapper;
	}
}
