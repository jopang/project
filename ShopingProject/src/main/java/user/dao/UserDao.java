package user.dao;

import bean.UserInfo;

public interface UserDao {
	//로그인
	UserInfo login(UserInfo userInfo);
	//확인
	UserInfo confirm(UserInfo userInfo);
	//사용자추가
	public void addUser(UserInfo userinfo);

}
