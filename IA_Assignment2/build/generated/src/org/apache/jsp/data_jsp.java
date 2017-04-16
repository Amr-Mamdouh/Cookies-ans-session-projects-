package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Register.DB;

public final class data_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#00BFFF\">\n");
      out.write("    <center>\n");
      out.write("        <h1><font size=\"30\">your courses is:</h1>\n");
      out.write("       \n");
      out.write("       ");

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
          
       
      out.write("\n");
      out.write("           \n");
      out.write("           \n");
      out.write("       <form action=\"register.jsp\">\n");
      out.write("           <input type=\"submit\"  value=\"Home page\">\n");
      out.write("           \n");
      out.write("       </form>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
