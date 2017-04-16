<%-- 
    Document   : Page1
    Created on : Oct 9, 2016, 10:08:30 PM
    Author     : amrfo_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <h1>Thanks for using Assignment #1</h1>
    <body>
               <!--style>
table, th, td {
    border: 1px solid black;
    
}
</style-->
        <table>
            <tr>
                <td>
 <% 
            String  x=request.getParameter("mx");
            int X=Integer.valueOf(x);
            out.print("<table border=2>");
           for(int i=1;i<=X;i++)
           {out.print("<tr>");
               for(int j=0;j<i;j++)
               {
                   out.print("<td BGCOLOR=Blue> <font color=white> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp*&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</font>        </td>");
               }
               for(int j=0;j<(X-i);j++)
                   out.print("<td>              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    </td>");
               out.print("</tr>");
           }
           for(int i=X-1;i>0;i--)
           {out.print("<tr>");
               for(int j=0;j<i;j++)
               {
                   out.print("<td BGCOLOR=Blue> <font color=white> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp*&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</font>        </td>");
               }
               for(int j=0;j<(X-i);j++)
                   out.print("<td>    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp             </td>");
               out.print("</tr>");
           }
           
            out.print("</table>");
            %> 
                </td>
            </tr>
        </table>
                <form action="index.html">
                            <button type="submit" >Back</button>

                </form>
    </body>
    
</html>
