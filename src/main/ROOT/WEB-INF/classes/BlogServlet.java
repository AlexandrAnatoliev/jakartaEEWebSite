import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**Class to return website blog page*/ 
public class BlogServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setAttribute("servletName", "blogServlet");
			getServletConfig().getServletContext().getRequestDispatcher("/jsps/blog/index.jsp").forward(request, response);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
