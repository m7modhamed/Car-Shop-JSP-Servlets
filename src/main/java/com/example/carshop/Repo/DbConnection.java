package com.example.carshop.Repo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	public static Connection connect() throws SQLException  {
		
    String url = "jdbc:oracle:thin:@localhost:1521/xe"; 
    String username = "system"; 
    String password = "oracle";

		Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, username, password);

		} catch (SQLException e) {
			System.out.println(e.getMessage());

		} catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


        return con;
	}

}
