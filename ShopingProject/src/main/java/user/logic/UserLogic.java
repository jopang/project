package user.logic;

import bean.UserInfo;

public interface UserLogic {
	//로그인
	UserInfo login(UserInfo userInfo);
	//확인
	UserInfo confirm(UserInfo userInfo);
	//사용자 추가
	void addUser(UserInfo userInfo);
	//아이디찾기
	UserInfo idSearch(UserInfo userInfo);
	//비밀번호찾기
	UserInfo passSearch(UserInfo userInfo);
	//회원정보수정
	public void modifyUser(UserInfo userInfo);
}
