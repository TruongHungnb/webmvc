package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("\n");
      out.write("        <title>Login </title>\n");
      out.write("        <meta content=\"\" name=\"description\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href=\"https://fonts.gstatic.com\" rel=\"preconnect\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Vendor CSS Files -->\n");
      out.write("        <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/quill/quill.snow.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/quill/quill.bubble.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/remixicon/remixicon.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/simple-datatables/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Template Main CSS File -->\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- =======================================================\n");
      out.write("        * Template Name: NiceAdmin - v2.2.0\n");
      out.write("        * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/\n");
      out.write("        * Author: BootstrapMade.com\n");
      out.write("        * License: https://bootstrapmade.com/license/\n");
      out.write("        ======================================================== -->\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("    <main>\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <section class=\"section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row justify-content-center\">\n");
      out.write("                        <div class=\"col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"d-flex justify-content-center py-4\">\n");
      out.write("                                <!--<a href=\"home.jsp\" class=\"logo d-flex align-items-center w-auto\">-->\n");
      out.write("                                <!--<img src=\"assets/img/logo.png\" alt=\"\">-->\n");
      out.write("                                <h1>\n");
      out.write("                                    <span class=\"d-none d-lg-block\">Quản Lý Bóng Đá</span>\n");
      out.write("                                </h1>\n");
      out.write("                                <!--</a>-->\n");
      out.write("                            </div><!-- End Logo -->\n");
      out.write("\n");
      out.write("                            <div class=\"card mb-3\">\n");
      out.write("\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("\n");
      out.write("                                    <div class=\"pt-4 pb-2\">\n");
      out.write("                                        <h5 class=\"card-title text-center pb-0 fs-4\">Đăng Nhập</h5>\n");
      out.write("                                    </div>\n");
      out.write("<!--                                    <div class=\"alert alert-danger\" role=\"alert\">\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                    </div>-->\n");
      out.write("                                    <form class=\"row g-3 needs-validation\" action=\"login\" novalidate>\n");
      out.write("\n");
      out.write("                                        <div class=\"col-12\">\n");
      out.write("                                            <label for=\"yourUsername\" class=\"form-label\">Tên đăng nhập</label>\n");
      out.write("                                            <div class=\"input-group has-validation\">\n");
      out.write("                                                <input type=\"text\" name=\"user\" class=\"form-control\" id=\"yourUsername\" required>\n");
      out.write("                                                <div class=\"invalid-feedback\">Vui lòng nhập tên đăng nhâp.</div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"col-12\">\n");
      out.write("                                            <label for=\"yourPassword\" class=\"form-label\">Mật khẩu</label>\n");
      out.write("                                            <input type=\"password\" name=\"pass\" class=\"form-control\" id=\"yourPassword\" required>\n");
      out.write("                                            <div class=\"invalid-feedback\">Vui lòng nhập mật khẩu</div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <p class=\"text-danger\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                        <div class=\"col-12\">\n");
      out.write("                                            <div class=\"form-check\">\n");
      out.write("                                                <input class=\"form-check-input\" type=\"checkbox\" name=\"remember\" value=\"true\" id=\"rememberMe\">\n");
      out.write("                                                <label class=\"form-check-label\" for=\"rememberMe\">Ghi nhớ</label>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-12\">\n");
      out.write("                                            <button class=\"btn btn-primary w-100\" type=\"submit\">Đăng nhập</button>\n");
      out.write("                                        </div>\n");
      out.write("                                        <!--                    <div class=\"col-12\">\n");
      out.write("                                                              <p class=\"small mb-0\">Don't have account? <a href=\"pages-register.html\">Create an account</a></p>\n");
      out.write("                                                            </div>-->\n");
      out.write("                                    </form>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </section>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </main><!-- End #main -->\n");
      out.write("\n");
      out.write("    <a href=\"#\" class=\"back-to-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n");
      out.write("\n");
      out.write("    <!-- Vendor JS Files -->\n");
      out.write("    <script src=\"assets/vendor/apexcharts/apexcharts.min.js\"></script>\n");
      out.write("    <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"assets/vendor/chart.js/chart.min.js\"></script>\n");
      out.write("    <script src=\"assets/vendor/echarts/echarts.min.js\"></script>\n");
      out.write("    <script src=\"assets/vendor/quill/quill.min.js\"></script>\n");
      out.write("    <script src=\"assets/vendor/simple-datatables/simple-datatables.js\"></script>\n");
      out.write("    <script src=\"assets/vendor/tinymce/tinymce.min.js\"></script>\n");
      out.write("    <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Template Main JS File -->\n");
      out.write("    <script src=\"assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
