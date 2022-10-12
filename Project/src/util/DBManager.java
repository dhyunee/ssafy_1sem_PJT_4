package util;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class DBManager {
	// Connection 객체를 얻어서 리턴
	public static Connection getConnection() {
		Connection con = null;
		try {
			// context.xml에 접근
			// InitialContext - 최상위 Context
			Context context = (Context) new InitialContext().lookup("java:comp/env/");
			// Resource 중 jdbc/board에 접근
			DataSource dataSource = (DataSource) context.lookup("jdbc/my_house");
			
			// Connection pull
			con = dataSource.getConnection();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	// Connection 객체를 반납받음
	public static void releaseConnection(ResultSet rs, PreparedStatement pstmt, Connection con) {
		try {
			if (rs != null) {rs.close();}
			if (pstmt != null) {pstmt.close();}
			if (con != null) {con.close();}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
