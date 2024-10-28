/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package yonshop.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {

    public Connection getConnection() throws Exception {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

        String url = "jdbc:sqlserver://localhost:1433;"
                + "databaseName=YonShop_2Hand";
        
        Connection con = DriverManager.getConnection(url, "sa", "1312");
        return con;
    }

}
