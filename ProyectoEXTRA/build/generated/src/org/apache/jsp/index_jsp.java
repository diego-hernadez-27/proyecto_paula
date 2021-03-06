package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Iniciar Sesion</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/estilos.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("        <form action=\"iniciar\" method=\"post\" id=\"forminicio\">\n");
      out.write("                <img src=\"./img/Sistema.png\" class=\"logoSis\">\n");
      out.write("            <br>\n");
      out.write("            <div class=\"form\">\n");
      out.write("            <h1>Iniciar Sesion</h1>\n");
      out.write("            <div class=\"grupo\">\n");
      out.write("                <input type=\"text\" name=\"usuario\" pattern= \"{1,25}\" id=\"txtusuario\" required><span class=\"barra\"></span>\n");
      out.write("                <label for=\"\">Nombre de usuario</label>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"grupo\">\n");
      out.write("                <input type=\"password\" name=\"pass\" pattern= \"{1,25}\" id=\"txtpass\" required><span class=\"barra\"></span>\n");
      out.write("                <label for=\"\">Contrase??a</label>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <button type=\"submit\" value=\"Registrarme\" id=\"btnregistrar\">Iniciar Sesi??n</button>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <center>??No tienes una cuenta?<a href=\"registro.jsp\">Registrarme</a></center>\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </form>\n");
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
