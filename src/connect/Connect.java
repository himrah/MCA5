package connect;

import java.sql.*;
//import java.sql
public class Connect {
    static final String url="jdbc:mysql://localhost:3306/kk";
    static final String uid="root";
    static final String pwd="rahulkumar";

    public static Connection getConnection()throws SQLException {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        Connection con = DriverManager.getConnection(url, uid, pwd);
        con.setAutoCommit(true);
        return con;
}}
