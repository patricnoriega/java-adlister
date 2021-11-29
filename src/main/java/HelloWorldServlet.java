import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    private int hitCount;

    public void init() {
        hitCount = 0;
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        String nameQuery = req.getParameter("name");
        String searchQuery = req.getParameter("q");
        String title = "Total Number of Hits";
        String count = req.getParameter("count");
        PrintWriter out = res.getWriter();
        hitCount++;

        if (nameQuery != null) {
            out.println("<h1>Hello, " + nameQuery + "!</h1>");
        }

        if (nameQuery == null) {
            out.println("<h1>Hello, World!</h1>");
        }

        if (searchQuery != null) {
            out.println("<p>Here are your results for " + searchQuery + "</p>");
        }
        out.println(
                        "<h2 align = \"center\">" + title + "</h2>\n" +
                        "<h3 align = \"center\">" + hitCount + "</h3>\n");
    }
}

