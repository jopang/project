package user.dao;

import bean.UserInfo;

public interface UserDao {
	//로그인
	UserInfo login(UserInfo userInfo);
	//확인
	UserInfo confirm(UserInfo userInfo);
	//사용자추가
	public void addUser(UserInfo userinfo);
	//아이디찾기
	UserInfo idSearch(UserInfo userInfo);
	//비밀번호찾기
	UserInfo passSearch(UserInfo userInfo);
	//회원정보수정
	public void modifyUser(UserInfo userInfo);
}
