/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class DbUtil {
    
    private static Connection con=null;
    private static String url="jdbc:mysql://localhost:3306/jsp";
    private static String user="root";
    private static String password="1234";
    private static String driver="com.mysql.cj.jdbc.Driver";
    
    
    public static Connection getCon(){
         try {
             Class.forName(driver);
             con = DriverManager.getConnection(url, user, password);
         } catch (ClassNotFoundException | SQLException ex) {
             Logger.getLogger(DbUtil.class.getName()).log(Level.SEVERE, null, ex);
         }
    
    return con;
    }
    
}
