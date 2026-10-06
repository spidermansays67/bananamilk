<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Prime Numbers</title>
</head>
<body>
    <h1>Prime Numbers</h1>

    <%
        // Hardcoded values instead of request.getParameter()
        int m = 10;
        int n = 30;

        if (m > n) {
    %>
        <jsp:forward page="Error.jsp"/>
    <%
        } else {
            for (int i = m; i <= n; i++) {
                int flag = 0;

                if (i < 2) {
                    flag = 1;
                } else {
                    for (int j = 2; j < i; j++) {
                        if (i % j == 0) {
                            flag = 1;
                            break;
                        }
                    }
                }

                if (flag == 0) {
                    out.print(i + " ");
                }
            }
        }
    %>
</body>
</html>
