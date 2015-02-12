package user.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import bean.UserInfo;

@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {
	// TODO Auto-generated method stub
	

	public UserInfo login(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("login", userInfo);
	}
	public void addUser(UserInfo userinfo) {
		getSqlSession().insert("addUserInfo", userinfo);
		
	}
	public UserInfo confirm(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("confirm", userInfo);
	}

}
