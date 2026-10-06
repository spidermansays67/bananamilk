<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Even Odd Example</title>
</head>
<body>
    <h1>Even Odd Example</h1>
    <%
        // Hardcoded input instead of request.getParameter()
        int n = 5;

        if (n % 2 == 0)
            out.print(n + " is even");
        else
            out.print(n + " is odd");
    %>
</body>
</html>
