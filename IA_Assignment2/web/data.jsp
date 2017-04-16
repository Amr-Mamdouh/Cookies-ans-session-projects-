<%-- 
    Document   : data
    Created on : Oct 22, 2016, 12:57:56 PM
    Author     : amrfo_000
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Register.DB"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#00BFFF">
    <center>
        <h1><font size="30">your courses is:</h1>
       
       <%
           String  x=request.getParameter("MYID");
            int id=Integer.valueOf(x);
            int c=1;
          DB d=new DB();
          d.db();
          ResultSet res=d.Select(id);
          if(res==null)
              out.println("<p>their is no courses for this id</p>");
          else {
              out.println("<table border=1>");
              while(res.next())
              { out.println("<tr>");
              String S=res.getString("Course_Name");
              if(!S.equals(""))
              {String s2="<td> <font size=5>"+String.valueOf(c)+"<td/>";
                  String s="<td> <font size=5>"+res.getString("Course_Name")+"<td/>";
                  out.println(s2);
                  out.println(s);
                  c++;
              }
                  out.println("</tr>");
              }
            out.println("</table>");

          }
          
       %>
           
           
       <form action="register.jsp">
           <input type="submit"  value="Home page">
           
       </form>
    </center>
    </body>
</html>
