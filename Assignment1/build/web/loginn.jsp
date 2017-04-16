<%-- 
    Document   : loginn
    Created on : Oct 19, 2016, 10:50:23 AM
    Author     : amrfo_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            Welcome to  IA  Assignment #1
        </h1>
        <!--style>
table, th, td {
    border: 1px solid black;
    
}
</style-->
          <table border="1">
              <form action="Page1.jsp" method="Get">
          
            <tr>
            <td>
        Enter aMaxmum
        </td>
        <td>
        <input type="Number" id="mxnum" name="mx">
        </td>
            
        </tr>
        <tr>
        <td colspan="2">
        
        <input type="submit"   value="Show Table"   >
        
        </td>
            </tr>
           
        </form>
               </table>
<!--
        <form action="Page1.jsp">
        <button type="submit" >Show Table</button>
        </form>
-->
    </body>
</html>
