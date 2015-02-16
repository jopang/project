package user.logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.dao.UserDao;
import bean.UserInfo;

@Service
public class UserLogicImpl implements UserLogic{
	@Autowired
	private UserDao userDao;

	public UserInfo login(UserInfo userInfo) {
		return this.userDao.login(userInfo);
	}

	public void addUser(UserInfo userInfo) {
		// TODO Auto-generated method stub
		this.userDao.addUser(userInfo);
	}

	public UserInfo confirm(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return this.userDao.confirm(userInfo);
	}

	public UserInfo idSearch(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return this.userDao.idSearch(userInfo);
	}
	
	public UserInfo passSearch(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return this.userDao.passSearch(userInfo);
	}

	public void modifyUser(UserInfo userInfo) {
		// TODO Auto-generated method stub
		this.userDao.modifyUser(userInfo);
	}

}
	  