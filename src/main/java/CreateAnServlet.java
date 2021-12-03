import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CreateAnServlet", urlPatterns = "/ads/create")
public class CreateAnServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/ads/create.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        long id = 123;
        long userId = 321;
        Ad userAd = new Ad(id, userId, title, description);

        DaoFactory.getAdsDao().insert(userAd);
        response.sendRedirect("/ads");
    }
}
