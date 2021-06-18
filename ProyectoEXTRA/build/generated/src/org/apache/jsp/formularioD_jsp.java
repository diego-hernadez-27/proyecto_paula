package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class formularioD_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section>\n");
      out.write("                <form action=\"FormConecD.jsp\" method=\"POST\" name=\"form\" id=\"Form\">\n");
      out.write("                    <div id=\"diabetes\">\n");
      out.write("                        <fieldset>\n");
      out.write("                            <legend><h2 style=\"color:black\">DIABETES</h2></legend>\n");
      out.write("                            <br>\n");
      out.write("                             <legend><h2 style=\"color:black\">Sintomas</h2></legend>\n");
      out.write("                            <div id=\"aumento_sed\">\n");
      out.write("                              \n");
      out.write("                                <p>¿Ha tenido la necesidad de ingerir liquidos constantemente?</p>\n");
      out.write("                                <input type=\"radio\" name =\"p1D\" value=\"Si\" required>Sí<br>\n");
      out.write("                                <!-- 3pts -->\n");
      out.write("                                <input type=\"radio\" name =\"p1D\" value=\"No\"> No<br>\n");
      out.write("                                <!-- 2pts -->\n");
      out.write("                                 <input type=\"radio\" name =\"p1D\" value=\"Ocasiones\">En algunas ocasiones<br>\n");
      out.write("                                <!-- 1pts -->\n");
      out.write("                            </div>\n");
      out.write("                            <div>\n");
      out.write("                                <br>\n");
      out.write("                                <p>¿Ha tenido la necesidad de orinar muy amenudo?</p>\n");
      out.write("                                <input type=\"radio\" name =\"p2D\" value=\"Si\" required>Sí<br>\n");
      out.write("                                <!-- 3pts -->\n");
      out.write("                                <input type=\"radio\" name =\"p2D\" value=\"No\"> No<br>\n");
      out.write("                                <!-- 2pts -->\n");
      out.write("                                 <input type=\"radio\" name =\"p2D\" value=\"Ocasiones\">En algunas ocasiones<br>\n");
      out.write("                                <!-- 1pts -->\n");
      out.write("                            </div>\n");
      out.write("                            <div>\n");
      out.write("                                <br>\n");
      out.write("                                <p>¿Tiene la necesidad de comer constantemente en porciones grandes?</p>\n");
      out.write("                                <input type=\"radio\" name =\"p3D\" value=\"Si\" required>Sí<br>\n");
      out.write("                                <!-- 3pts -->\n");
      out.write("                                <input type=\"radio\" name =\"p3D\" value=\"No\"> No<br>\n");
      out.write("                                <!-- 2pts -->\n");
      out.write("                                 <input type=\"radio\" name =\"p3D\" value=\"Ocasiones\">En algunas ocasiones<br>\n");
      out.write("                                <!-- 1pts -->\n");
      out.write("                            </div>\n");
      out.write("                            <div>\n");
      out.write("                                <br>\n");
      out.write("                                <p>¿Ha notado disminución de  su peso radicalmente?</p>\n");
      out.write("                                <input type=\"radio\" name =\"p4D\" value=\"Si\" required>Sí<br>\n");
      out.write("                                <!-- 3pts -->\n");
      out.write("                                <input type=\"radio\" name =\"p4D\" value=\"No\"> No<br>\n");
      out.write("                                <!-- 2pts -->\n");
      out.write("                            </div>\n");
      out.write("                            <div>\n");
      out.write("                                <br>\n");
      out.write("                                <p>¿Ha percado tener cambios de humor?</p>\n");
      out.write("                                <input type=\"radio\" name =\"p5D\" value=\"Si\" required>Sí<br>\n");
      out.write("                                <!-- 3pts -->\n");
      out.write("                                <input type=\"radio\" name =\"p5D\" value=\"No\"> No<br>\n");
      out.write("                                <!-- 2pts -->\n");
      out.write("                                 <input type=\"radio\" name =\"p5D\" value=\"Ocasiones\">En algunas ocasiones<br>\n");
      out.write("                                <!-- 1pts -->\n");
      out.write("                            </div>\n");
      out.write("                            <div>\n");
      out.write("                                <br>\n");
      out.write("                                <p>¿Se ha percatado de tener fátiga o debilidad?</p>\n");
      out.write("                                <input type=\"radio\" name =\"p6D\" value=\"Si\" required>Sí<br>\n");
      out.write("                                <!-- 3pts -->\n");
      out.write("                                <input type=\"radio\" name =\"p6D\" value=\"No\"> No<br>\n");
      out.write("                                <!-- 2pts -->\n");
      out.write("                                 <input type=\"radio\" name =\"p6D\" value=\"Ocasiones\">En algunas ocasiones<br>\n");
      out.write("                                <!-- 1pts -->\n");
      out.write("                            </div>\n");
      out.write("                            <div>\n");
      out.write("                                <br>\n");
      out.write("                                <p>¿Suele tener la visión borrosa?</p>\n");
      out.write("                                <input type=\"radio\" name =\"p7D\" value=\"Si\" required>Sí<br>\n");
      out.write("                                <!-- 3pts -->\n");
      out.write("                                <input type=\"radio\" name =\"p7D\" value=\"No\"> No<br>\n");
      out.write("                                <!-- 2pts -->\n");
      out.write("                                 <input type=\"radio\" name =\"p7D\" value=\"Ocasiones\">En algunas ocasiones<br>\n");
      out.write("                                <!-- 1pts -->\n");
      out.write("                            </div>\n");
      out.write("                             <br><br>\n");
      out.write("                             <legend><h2 style=\"color:black\">Causas</h2></legend>\n");
      out.write("                             <div>\n");
      out.write("                                 <h4>Genética</h4>\n");
      out.write("                                 <h4>Exposición a virus y otros factores ambientales</h4>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </fieldset>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <input type=\"submit\" value=\"Enviar\">\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("       </section>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
