<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Factorial Example</title>
</head>
<body>
    <h1>Factorial Example</h1>
    <%
        // Hardcoded input instead of request.getParameter()
        int n = 5;
        int fact = 1;

        for (int i = 1; i <= n; i++)
            fact = fact * i;

        out.print("<br>factorial of " + n + " is " + fact);
    %>
</body>
</html>
