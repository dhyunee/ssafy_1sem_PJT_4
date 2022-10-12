package service;

import dto.UserDto;

public interface UserService {
	int userRegister(UserDto userDto);

	int userModify(UserDto userDto);

	int userWithdraw(String userEmail);
}
