package dao;

import java.sql.*;

import util.DBManager;
import dto.UserDto;

public class LoginDaoImpl implements LoginDao {
	
	// Singleton
	private static LoginDaoImpl instance = new LoginDaoImpl();
	private LoginDaoImpl() {}
	public static LoginDaoImpl getInstance() {
		return instance;
	}
	
	@Override
	public UserDto login(String userEmail) {
		UserDto userDto = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			// Connection 객체 획등
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			// Query문 작성
			sb.append(" SELECT USER_SEQ, USER_NAME, USER_PASSWORD, USER_EMAIL, USER_PROFILE_IMAGE_URL, USER_REGISTER_DATE, USER_STATE ")
				.append(" FROM USERS WHERE USER_EMAIL = ? ");
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, userEmail);
			System.out.println(sb.toString());
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				userDto = new UserDto();
				userDto.setUserSeq(rs.getInt("USER_SEQ"));
				userDto.setUserName(rs.getString("USER_NAME"));
				userDto.setUserPassword(rs.getString("USER_PASSWORD"));
				userDto.setUserEmail(rs.getString("USER_EMAIL"));
				userDto.setUserProfileImageUrl(rs.getString("USER_PROFILE_IMAGE_URL"));
				userDto.setUserRegisterDate(rs.getDate("USER_REGISTER_DATE"));
				userDto.setUserState(rs.getString("USER_STATE")); //001
			}
			sb = new StringBuilder();
			sb.append(" SELECT code_name ")
				.append(" FROM code ")
				.append(" WHERE code = ? ")
				.append(" AND group_code = '001' ");
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, userDto.getUserState());
			
			rs = pstmt.executeQuery();
			if(rs.next()) { 
				userDto.setUserState(rs.getString("code_name"));
				System.out.println(rs.getString("code_name"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally { // 예외가 발생하더라도 수행할 수 있도록
			// Connection 객체 반납
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return userDto;
	}

}
