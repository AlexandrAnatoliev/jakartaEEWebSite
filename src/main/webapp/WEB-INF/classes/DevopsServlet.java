import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**Class to return website devops page*/ 
public class DevopsServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setAttribute("servletName", "devopsServlet");
			getServletConfig().getServletContext().getRequestDispatcher("/jsps/devops/index.jsp").forward(request, response);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
