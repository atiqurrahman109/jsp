/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.employee;
import util.DbUtil;

/**
 *
 * @author User
 */
public class EmployeeDao {
   static employee e=new employee();
    static PreparedStatement ps;
    
   static ResultSet rs;
    static String sql="";
    
    
    public static List<employee> getAllemployees(){
    List<employee> employees=new ArrayList<>();
    
    sql=" select* from student";
    
       try {
           ps=DbUtil.getCon().prepareStatement(sql);
           
           rs = ps.executeQuery();
           while(rs.next()){
           employee e= new employee(
           
           rs.getInt("id"),
           rs.getString("name"),
           rs.getString("designation"),
           rs.getString("salary")
                   
           
           
           );
           
           employees.add(e);
           
           rs.close();
           ps.close();
           DbUtil.getCon().close();
           
           }
       } catch (SQLException ex) {
           Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
       }
       return employees;
   
    }
    
    
    
    public static int saveEmployee(employee e){
    int status=0;
        
    sql="insert into employee(name,designation,salary)"
            + "values(?,?,?)";
    
        try {
            ps=DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, e.getName());
            ps.setString(2, e.getDesignation());
            ps.setString(3, e.getSalary());
            
           status= ps.executeUpdate();
           ps.close();
           DbUtil.getCon().close();
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
            
            
            
    }
    
}
