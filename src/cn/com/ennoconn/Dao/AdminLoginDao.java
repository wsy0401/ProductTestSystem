package cn.com.ennoconn.Dao;

import cn.com.ennoconn.Bean.Adminstrator;

import java.sql.*;

public class AdminLoginDao {
	private static final String driver="com.mysql.jdbc.Driver";
	private static final String dbuser="root";
	private static final String dbpasswd="123456";
	private static final String url="jdbc:mysql://localhost:3306/AdminDB"+"?serverTimezone=GMT%2B8";
	private static final String table="Adminstrator";
	private static final String col_username="username";
	private static final String col_password="password";
	private static final String col_shortno="shortno";
	private static final String col_telephone="telephone";
	private static final String col_email="email";
	private Adminstrator admin=new Adminstrator();
	public Adminstrator getAdmin() {
		return admin;
	}
	//TODO 这里可能用不到setAdmin()
	public void setAdmin(Adminstrator admin) {
		this.admin = admin;
	}
	static{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
;	}
	public boolean login(String username,String password){
		Connection conn=null;
		PreparedStatement statement=null;
		ResultSet rs=null;
		try {
			conn = DriverManager.getConnection(url, dbuser, dbpasswd);
			//select * from AdminDB where username='root' and password='123456'
//			String sql = "select * from " + table + " where " + col_username
//					+ "='" + username + "' And " + col_password + "='"
//					+ password + "'";
			String sql = "select * from Adminstrator where username=? and password=?";
			statement = conn.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);
			rs = statement.executeQuery();
			while (rs.next()) {
				admin.setUsername(rs.getString(col_username));
				admin.setPassword(rs.getString(col_password));
				admin.setShortNo(rs.getString(col_shortno));
				admin.setTelephone(rs.getString(col_telephone));
				admin.setEmail(rs.getString(col_email));
				System.out.println(admin);
				return true;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//TODO 使用自己数据库的DBUtil类去关闭rs，ps，connection
			try {
				if (rs != null)
					rs.close();
				if (statement != null)
					statement.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}

		}
		return false;
	}
	
	
}
