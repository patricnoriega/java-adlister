import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ViewColor", urlPatterns = "/viewcolor")
public class ViewColorServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {

    }
}