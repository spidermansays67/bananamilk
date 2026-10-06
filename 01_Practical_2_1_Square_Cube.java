import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Pract13")
public class Pract13Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Hardcoded input
        int n = 5;

        int sqr = n * n;
        int cube = n * n * n;

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("Square of " + n + " = " + sqr);
        out.println("<br>");
        out.println("Cube of " + n + " = " + cube);
    }
}
