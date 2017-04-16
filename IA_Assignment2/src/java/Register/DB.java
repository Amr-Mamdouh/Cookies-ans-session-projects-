package Register;


import java.sql.DriverManager;
import java.sql.*;
import java.util.Calendar;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author amrfo_000
 */
public class DB {
    
    boolean active=false;
       private static Connection cdb=null;
      static Statement mystmnt=null;
     
    public static void db()
    {  
     try {
            // The newInstance() call is a work around for some
            // broken Java implementations

          Class.forName("com.mysql.jdbc.Driver");
           cdb = DriverManager.getConnection("jdbc:mysql://localhost:3306/ass2"
							, "root","root");       
                     mystmnt=cdb.createStatement();
                  ResultSet myres=mystmnt.executeQuery("select *  FROM registration");
while(myres.next()){
                  System.out.println(myres.getString("Student_Name"));
                   System.out.println(myres.getString("Course_Name"));
                   System.out.println(myres.getString("Student_ID"));
                  System.out.println(myres.getString("Year"));

}
        } catch (Exception ex) {
            // handle the error
            System.err.println("Error");
        }
    
      
    }
    public void Insert(String name,String ID,String course)
    {
        try {
            int id=Integer.valueOf(ID);
            int year=Calendar.getInstance().get(Calendar.YEAR);
            System.err.println("Year"+year);
            String sl="insert into registration (Student_Name,Student_ID,Course_Name,year) values ('"+name+"',"+id+",'"+course+"',"+year+");";
            
            mystmnt.executeUpdate(sl);
            System.out.println("Insert Process");
        } catch (Exception e) {
            System.err.println("Errror ");
        }
    }
    public ResultSet Select(int id)
    {
        try {
           
String sl="select Course_Name from registration where Student_ID="+id+";";            
           ResultSet myres= mystmnt.executeQuery(sl);
            System.out.println("Select Process Process");
            return myres;
        } catch (Exception e) {
            System.err.println("Errror ");
            return null;
        }
    }
   // public static  void main(String []args)
     
}
