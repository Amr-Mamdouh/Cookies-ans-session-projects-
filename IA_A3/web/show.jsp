<%-- 
    Document   : show
    Created on : Dec 20, 2016, 1:10:58 AM
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
            String id="";
            Cookie cookie[]=request.getCookies();
            for(int i =0;i<cookie.length;i++)
            {
                if(cookie[i].getName().equals("MyCurrentSession"))
                {
                  id=cookie[i].getValue();
                }
            }
            Manager manager=(Manager)application.getAttribute("SessionManager");
            HttpSession session1=manager.getsession(id);
            String name=session1.getAttribute("UName").toString();
            out.println("Name:"+name);
        out.println("Active Size:"+String.valueOf(manager.getsize()));
        %>
        <form action="deleteSession" method="Post">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>
