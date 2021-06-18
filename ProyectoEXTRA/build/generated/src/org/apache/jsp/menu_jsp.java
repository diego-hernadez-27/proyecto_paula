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
      out.write("         <link rel=\"stylesheet\" href=\"./css/menu.css\">\n");
      out.write("    <link\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css\"\n");
      out.write("      integrity=\"sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==\"\n");
      out.write("      crossorigin=\"anonymous\"\n");
      out.write("    />\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/paginaprincipal.css\">\n");
      out.write("    <script src=\"./js/Cordenadas.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"./js/Todo.js\" type=\"text/javascript\"></script>\n");
      out.write("    \n");
      out.write("    <header class=\"header\">\n");
      out.write("      <a href=\"#\" class=\"logo\">MedicalAssist</a>\n");
      out.write("      <nav>\n");
      out.write("          \n");
      out.write("        <ul class=\"menu-items\">\n");
      out.write("          <li><a href=\"#\" class=\"menu-item\">Bienvenido ");
 out.println(usuario);
      out.write("</a></li>\n");
      out.write("          <li class=\"dropdown\">\n");
      out.write("            <a href=\"perfil.jsp\" class=\"menu-item\">Perfil</a>\n");
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
      out.write("                      La COVID-19 afecta de distintas maneras en función de cada persona. La mayoría de las personas que se contagian presentan síntomas de intensidad leve o moderada, y se recuperan sin necesidad de hospitalización.\n");
      out.write("                  </p>\n");
      out.write("                  <a href=\"formulario.jsp\" class=\"read-more\">Realizar test</a>\n");
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
      out.write("                      La diabetes es una enfermedad en la que los niveles de glucosa (azúcar) de la sangre están muy altos. La glucosa proviene de los alimentos que consume. La insulina es una hormona que ayuda a que la glucosa entre a las células para suministrarles energía.\n");
      out.write("                  </p>\n");
      out.write("                  <a href=\"formularioD.jsp\" class=\"read-more\">Realizar test</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col\">\n");
      out.write("                  <a href=\"#\" class=\"img-wrapper\"\n");
      out.write("                    ><span class=\"img\"\n");
      out.write("                      ><img\n");
      out.write("                        src=\"https://picsum.photos/400?random=4\"\n");
      out.write("                        alt=\"Random Image\" /></span\n");
      out.write("                  ></a>\n");
      out.write("                  <h2>HIPERTENSION ARTERIAL</h2>\n");
      out.write("                  <p>\n");
      out.write("                      La hipertensión arterial es una enfermedad crónica en la que aumenta la presión con la que el corazón bombea sangre a las arterias, para que circule por todo el cuerpo.\n");
      out.write("                  </p>\n");
      out.write("                  <a href=\"formularioHIPER.jsp\" class=\"read-more\">Realizar test</a>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"/ProyectoEXTRA/cerrarsesionservlet\" class=\"menu-item\">Cerrar Sesión</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("    </header>\n");
      out.write("    <article>\n");
      out.write("      <section>\n");
      out.write("\n");
      out.write("          <p align=\"center\">heee aqui un mapa mundial que va a contener las enfermedades mas comunes de los paises asi como graficas de porcentajes de esas mismas enfermedades</p>\n");
      out.write("          <p align=\"center\"> pulse el pais que quiere revisar </p>\n");
      out.write("          <br>\n");
      out.write("          <br>\n");
      out.write("\n");
      out.write("              <div id=\"holder_1000\" style=\"position:relative\"></div>\n");
      out.write("\n");
      out.write("              \n");
      out.write("          \n");
      out.write("\n");
      out.write("              <script type=\"text/javascript\">        \n");
      out.write("              var current = null;\n");
      out.write("              var map = {};\n");
      out.write("              var m = {};\t\t\t\t\n");
      out.write("              var map = {};\n");
      out.write("              let num = 0;\n");
      out.write("              var svgHeight = 400;\n");
      out.write("              var svgWidth = 1000;\n");
      out.write("              var preserveAspectRatio=\"xMinYMin slice\";\n");
      out.write("              var R = Raphael(\"holder_1000\", \"100%\", \"100%\");\n");
      out.write("                      \n");
      out.write("              R.setViewBox(0, 0, svgWidth, svgHeight, true);\n");
      out.write("              \n");
      out.write("              render_map(R,map,num);\n");
      out.write("                  \n");
      out.write("              for (var state in map) {\t\t\t\t\t\t\t        \n");
      out.write("                  map[state].color = Raphael.getColor();\n");
      out.write("                  (function (st, state) {\n");
      out.write("                  st[0].onmouseover = () => {\n");
      out.write("                      R.safari();\n");
      out.write("                      current = state;\n");
      out.write("                  };\n");
      out.write("                  st[0].onmouseout = () => {\n");
      out.write("                      R.safari();\n");
      out.write("                  };\n");
      out.write("                  st[0].onclick = () => {\n");
      out.write("                      alert(state);\n");
      out.write("                  };\n");
      out.write("                  })(map[state], state);\n");
      out.write("              }       \n");
      out.write("              let render = num => {\n");
      out.write("                  render_map(R,map,num);\n");
      out.write("              \n");
      out.write("              };\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              </script>\n");
      out.write("\n");
      out.write("      </section>\n");
      out.write("\n");
      out.write("      \n");
      out.write("</article>\n");
      out.write("          \n");
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
