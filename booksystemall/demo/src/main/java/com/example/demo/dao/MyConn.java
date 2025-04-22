package com.example.demo.dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConn {
    static Connection conn;
    public static Connection getConn(){
        String URL="jdbc:mysql://localhost:3306/mydb";
        String username="saber";
        String pass="1234";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL,username,pass);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;

    }
}
