package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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


    HttpSession objsesion = request.getSession(false);
    
    String usuario = (String)objsesion.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Menu principal</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <link\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css\"\n");
      out.write("      integrity=\"sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==\"\n");
      out.write("      crossorigin=\"anonymous\"\n");
      out.write("    />\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/paginaprincipal.css\">\n");
      out.write("    <header class=\"header\">\n");
      out.write("      <a href=\"#\" class=\"logo\">MedicalAssist</a>\n");
      out.write("      <nav>\n");
      out.write("          \n");
      out.write("        <ul class=\"menu-items\">\n");
      out.write("          <li><a href=\"#\" class=\"menu-item\">Inicio</a></li>\n");
      out.write("          <li class=\"dropdown\">\n");
      out.write("            <a href=\"#\" class=\"menu-item\">HOLA ");
 out.println(usuario);
      out.write("</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#\" class=\"menu-item\">Ver perfil</a>\n");
      out.write("            <div class=\"mega-menu\">\n");
      out.write("              <div class=\"content\">\n");
      out.write("                <div class=\"col\">\n");
      out.write("                  <section>\n");
      out.write("                    <h2>Featured 1</h2>\n");
      out.write("                    <a href=\"#\" class=\"img-wrapper\"\n");
      out.write("                      ><span class=\"img\"\n");
      out.write("                        ><img\n");
      out.write("                          src=\"https://picsum.photos/400?random=1\"\n");
      out.write("                          alt=\"Random Image\" /></span\n");
      out.write("                    ></a>\n");
      out.write("                    <p>Lorem ipsum dolor sit amet.</p>\n");
      out.write("                  </section>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col\">\n");
      out.write("                  <section>\n");
      out.write("                    <h2>Featured 2</h2>\n");
      out.write("                    <ul class=\"mega-links\">\n");
      out.write("                      <li><a href=\"#\">Item 1</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 2</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 3</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 4</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 5</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                  </section>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col\">\n");
      out.write("                  <section>\n");
      out.write("                    <h2>Featured 3</h2>\n");
      out.write("                    <ul class=\"mega-links\">\n");
      out.write("                      <li><a href=\"#\">Item 1</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 2</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 3</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 4</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 5</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                  </section>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col\">\n");
      out.write("                  <section>\n");
      out.write("                    <h2>Featured 4</h2>\n");
      out.write("                    <ul class=\"mega-links\">\n");
      out.write("                      <li><a href=\"#\">Item 1</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 2</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 3</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 4</a></li>\n");
      out.write("                      <li><a href=\"#\">Item 5</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                  </section>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#\" class=\"menu-item\">Realizar test</a>\n");
      out.write("            <div class=\"mega-menu blog\">\n");
      out.write("              <div class=\"content\">\n");
      out.write("                <div class=\"col\">\n");
      out.write("                  <a href=\"#\" class=\"img-wrapper\"\n");
      out.write("                    ><span class=\"img\"\n");
      out.write("                      ><img\n");
      out.write("                        src=\"https://picsum.photos/400?random=2\"\n");
      out.write("                        alt=\"Random Image\" /></span\n");
      out.write("                  ></a>\n");
      out.write("                  <h2>COVID</h2>\n");
      out.write("                  <p>\n");
      out.write("                      INFORMACION DE LA ENFERMEDAD\n");
      out.write("                  </p>\n");
      out.write("                  <a href=\"#\" class=\"read-more\">read more...</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col\">\n");
      out.write("                  <a href=\"#\" class=\"img-wrapper\"\n");
      out.write("                    ><span class=\"img\"\n");
      out.write("                      ><img\n");
      out.write("                        src=\"https://picsum.photos/400?random=3\"\n");
      out.write("                        alt=\"Random Image\" /></span\n");
      out.write("                  ></a>\n");
      out.write("                  <h2>DIABETES</h2>\n");
      out.write("                  <p>\n");
      out.write("                      INFORMACION DE LA ENFERMEDAD\n");
      out.write("                  </p>\n");
      out.write("                  <a href=\"#\" class=\"read-more\">read more...</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col\">\n");
      out.write("                  <a href=\"#\" class=\"img-wrapper\"\n");
      out.write("                    ><span class=\"img\"\n");
      out.write("                      ><img\n");
      out.write("                        src=\"https://picsum.photos/400?random=4\"\n");
      out.write("                        alt=\"Random Image\" /></span\n");
      out.write("                  ></a>\n");
      out.write("                  <h2>CONJUNTIVIS</h2>\n");
      out.write("                  <p>\n");
      out.write("                      INFORMACION DE LA ENFERMEDAD\n");
      out.write("                  </p>\n");
      out.write("                  <a href=\"#\" class=\"read-more\">read more...</a>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"/ProyectoEXTRA/cerrarsesionservlet\" class=\"menu-item\">Cerrar Sesión</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("    </header>\n");
      out.write("    <section class=\"section\">\n");
      out.write("      <h1>Mega Menu and Multi-Level Dropdown Menu</h1>\n");
      out.write("    </section>\n");
      out.write("  \n");
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
