import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Class to return website home page
 *
 * @version 0.2.2
 * @author AlexandrAnatoliev
 */
public class HomeServlet extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) {
    try {
      request.setAttribute("servletName", "homeServlet");
      getServletConfig().getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    } catch (Exception ex) {
      ex.printStackTrace();
    }
  }
}
