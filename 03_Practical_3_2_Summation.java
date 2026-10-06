import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Pract32")
public class Pract32 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Hardcoded input
        int n = 5;

        int sum = 0;
        int i = 1;

        while (i <= n) {
            sum = sum + i;
            i++;
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("Summation of " + n + " = " + sum);
    }
}
