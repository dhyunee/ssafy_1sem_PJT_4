package dao;

import java.sql.*;

import util.DBManager;
import dto.UserDto;

public class UserDaoImpl implements UserDao {
	
	// Singleton
	private static UserDaoImpl instance = new UserDaoImpl();
	private UserDaoImpl() {}
	public static UserDaoImpl getInstance() {
		return instance;
	}
	
	@Override
	public int userRegister(UserDto userDto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int ret = -1;
		
		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			sb.append(" insert into users ")
				.append(" (user_name, user_password, user_email, user_profile_image_url, user_register_date, user_state)")
				.append(" values (?, ?, ?, '', now(), ?) ");
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, userDto.getUserName());
			pstmt.setString(2, userDto.getUserPassword());
			pstmt.setString(3, userDto.getUserEmail());
			pstmt.setString(4, userDto.getUserState());
			
			ret = pstmt.executeUpdate(); // 영향받은 row 수 return
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return ret;
	}
	@Override
	public int userModify(UserDto userDto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int ret = -1;
		
		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			sb.append(" update users ")
			.append(" set user_name=?, user_password=? ")
			.append(" where user_email=? ");
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, userDto.getUserName());
			pstmt.setString(2, userDto.getUserPassword());
			pstmt.setString(3, userDto.getUserEmail());
			
			ret = pstmt.executeUpdate(); // 영향받은 row 수 return
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return ret;
	}
	@Override
	public int userWithdraw(String userEmail) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int ret = -1;
		
		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			sb.append(" delete from users where user_email=? ");
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, userEmail);
			
			ret = pstmt.executeUpdate(); // 영향받은 row 수 return
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return ret;
	}
	@Override
	public int userEventPart(String userEmail) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int ret = -1;
		
		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			sb.append(" Update users set user_event_part='001' where user_email=? ");
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, userEmail);
			
			ret = pstmt.executeUpdate(); // 영향받은 row 수 return
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return ret;
	}

}
