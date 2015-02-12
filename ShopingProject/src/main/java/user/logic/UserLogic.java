package user.logic;

import bean.UserInfo;

public interface UserLogic {
	//로그인
	UserInfo login(UserInfo userInfo);
	//확인
	UserInfo confirm(UserInfo userInfo);
	//사용자 추가
	void addUser(UserInfo userInfo);

}
