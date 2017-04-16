<%-- 
    Document   : intro
    Created on : Dec 20, 2016, 12:59:51 AM
    Author     : amrfo_000
--%>

<%@page import="app.Manager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           Cookie cookie[]=request.getCookies();
           int con=cookie.length,c=0;
           if(con==0)
           {
               out.print("Here3");
               response.sendRedirect("register.jsp");
               
           }
           for (int i=0;i<cookie.length;i++)
           {
               
               if(cookie[i].getName().equals("MyCurrentSession"))
               {
                   out.print("Found cuurent");  
                   
                   String id=cookie[i].getValue();
                   if(application.getAttribute("SessionManager")==null)
                   {
                       
                       out.print("No manager");
                       Manager manager=new Manager();
                       application.setAttribute("SessionManager",manager);
                       response.sendRedirect("register.jsp");
                   }
                   else 
                   {
                       out.print("find manager");
                       
                       Manager manager=(Manager)application.getAttribute("SessionManager");
                       HttpSession session1=manager.getsession(id);
                       if(session1==null)
                       {
                           response.sendRedirect("register.jsp");
                       }
                       else
                       {
                           response.sendRedirect("show.jsp");
                       }
                   }
               }
               else {c++;}
           }
           
           if(c==con)
           {
               
               out.print("No current , No Manager");
               Manager manager=new Manager();
               application.setAttribute("SessionManager",manager);
               out.print("Here2");
               response.sendRedirect("register.jsp");
           }
       %>
    </body>
</html>
