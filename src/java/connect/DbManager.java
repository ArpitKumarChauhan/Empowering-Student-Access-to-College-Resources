/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author kumar
 */
public class DbManager 
{
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    public DbManager()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gpc","root","");
        }
        catch(ClassNotFoundException | SQLException ex)
        {
            
        }
        
    }  
    public boolean insertUpdateDelete(String query)
    {
        try
        {
          ps=con.prepareStatement(query);
          if(ps.executeUpdate()>0)
          {
              return true;
          }
          else
          {
              return false;
          }
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        return false;
        }
    }
    public ResultSet selectQuery(String query)
    {
        try
        {
        ps=con.prepareStatement(query);
        rs=ps.executeQuery();
        }
        catch(SQLException ex)
        {
            
        }
        return rs;
    }  
    public String getDate()
    {
        Date dt=new Date();
        SimpleDateFormat df=new SimpleDateFormat("EEE, (dd MMMM,yyyy), hh:mm aa");
        
        return df.format(dt);
    }
}