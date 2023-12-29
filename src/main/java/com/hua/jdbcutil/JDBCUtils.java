package com.hua.jdbcutil;

//import com.mchange.v2.c3p0.ComboPooledDataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * JDBC�����Ĺ�����
 * @author hua
 *
 */
public class JDBCUtils {
	private static DataSource dataSource = null;
//private static DataSource dataSource = new ComboPooledDataSource();
	static{
		//����Դֻ�ܱ�����һ��
		dataSource = new ComboPooledDataSource("hua.project");

//			dataSource = new ComboPooledDataSource();
//		try {
//			dataSource.setDriverClass("com.mysql.cj.jdbc.Driver");
//		} catch (PropertyVetoException e) {
//			e.printStackTrace();
//		}
//		dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/baomingsystem");
//		dataSource.setUser("root");
//		dataSource.setPassword("root");

	}

	/**
	 *
	 * @return ����Դ��һ��Connection����
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException{
		return dataSource.getConnection();
	}

	/**
	 * �ر�Connection����
	 * @param conn
	 */
	public static void closeConnection(Connection conn){
		if(conn != null){
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
