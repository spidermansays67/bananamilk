import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Pract41")
public class Pract41 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Hardcoded input from the handwritten practical
        int m = 3;
        int n = 3;

        int mult;
        int sum = 0;

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        for (int i = 1; i <= n; i++) {
            mult = 1;

            for (int j = 1; j <= i; j++) {
                mult = mult * m;
            }

            sum = sum + mult;
            out.println(m + "^" + i + " = " + mult + "<br>");
        }

        out.println("<br>The Result is : " + sum);
    }
}
