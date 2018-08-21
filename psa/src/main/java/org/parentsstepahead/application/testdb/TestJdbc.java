package org.parentsstepahead.application.testdb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestJdbc {

	    public static void main(String[] args) {

	        String jdbcUrl = "jdbc:mysql://localhost:3306/parents_step_ahead?useSSL=false";
	        String username= "parentsstepahead";
	        String password ="p4r3n75573p4h34d";

	        try{

	            System.out.println("Connecting to the db: " + jdbcUrl);
	            Connection con = DriverManager.getConnection(jdbcUrl, username, password);
	            System.out.println("Connection sucessful");
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	    }
	}