<%-- 
    Document   : Page1
    Created on : Oct 22, 2016, 12:31:06 PM
    Author     : amrfo_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#00BFFF">
    <center>
        <h1><font size="50">New Registration</font> </h1>
        <table border="2">
            <td>
        <p><font size="5"> to register in course,fill in this fields <br> then,click on the Register button </font></p>
        
             
        <form action="assignment2" method="Post" >
            <table border="1">
                <tr>
                    <td><font size="4">Student ID :&nbsp&nbsp&nbsp&nbsp&nbsp</font></td>
                    <td>
                        <input type="text" name="SID">
                    </td>
                </tr>
                
                <tr>
                
                
                    <td>
                        <font size="4">Student Name:&nbsp</font></td>
                    <td>
                        <input type="text" name="SName">
                    </td>
                </tr>
                
                 <tr>
                
               
                    <td>
                        <font size="4">Course  Name:&nbsp</font></td>
                    <td>
                        <input type="text" name="CName">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Register" name="Register">
        </form>
        </td>
        </table>
        </center>
    </body>
</html>
