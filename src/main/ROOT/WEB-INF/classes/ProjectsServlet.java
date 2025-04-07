import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletResponse;

/** Class to return website projects page */
public class ProjectsServlet extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) {

    try {
      request.setAttribute("servletName", "projectsServlet");
      getServletConfig().getServletContext().getRequestDispatcher("/jsps/projects/index.jsp").forward(request,
          response);
    } catch (Exception ex) {
      ex.printStackTrace();
    }
  }
}
