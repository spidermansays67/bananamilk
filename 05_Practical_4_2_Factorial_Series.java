import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Pract42")
public class Pract42 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Hardcoded input from the handwritten practical
        int n = 5;

        double add = 0;
        double fact;

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        for (int i = 1; i <= n; i++) {

            fact = 1;

            for (int j = 1; j <= i; j++) {
                fact = fact * j;
            }

            double div = 1.0 / fact;
            add = add + div;
        }

        out.println("Series is : " + add);
    }
}
