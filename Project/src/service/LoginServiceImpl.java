package service;

import dao.LoginDao;
import dao.LoginDaoImpl;
import dto.UserDto;

public class LoginServiceImpl implements LoginService {
	// Singleton
	private static LoginServiceImpl instance = new LoginServiceImpl();
	private LoginServiceImpl() {}
	public static LoginServiceImpl getInstance() {
		return instance;
	}

	
	@Override
	public UserDto login(String userEmail, String userPassword) {
		LoginDao loginDao = LoginDaoImpl.getInstance();
		UserDto userDto = loginDao.login(userEmail);
		
		// 이메일이 존재하고 패스워드를 맞출 경우
		if (userDto != null && userDto.getUserPassword().equals(userPassword)) {
			return userDto;
		}
		// 존재하지 않는 이메일이거나 패스워드가 틀릴 경우
		else {
			return null;
		}
		
	}

}
