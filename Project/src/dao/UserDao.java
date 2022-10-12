package dao;

import dto.UserDto;

public interface UserDao {
	int userRegister(UserDto userDto);

	int userModify(UserDto userDto);

	int userWithdraw(String userEmail);
}
