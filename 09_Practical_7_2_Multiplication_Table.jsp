<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Multiplication Table</title>
</head>
<body>
    <h1>Multiplication Table</h1>
    <%
        // Hardcoded input instead of request.getParameter()
        int n = 5;

        out.print("<br>Multiplication Table");

        for (int i = 1; i <= 10; i++) {
            int m = n * i;
            out.print("<br>" + n + " * " + i + " = " + m);
        }
    %>
</body>
</html>
