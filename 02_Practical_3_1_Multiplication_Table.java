import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Pract31")
public class Pract31 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Hardcoded input
        int num = 5;

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        for (int i = 1; i <= 10; i++) {
            out.println(num + " x " + i + " = " + (num * i) + "<br>");
        }
    }
}
