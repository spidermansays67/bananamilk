JSP / SERVLET PRACTICALS
========================

This folder contains:
1. The servlet programs transcribed from the handwritten pages.
2. The JSP practicals based on the logic in TYCS_JSP_Practicals_2025.pdf.
3. Input through request.getParameter() / HTML forms has been removed where requested.
4. Inputs are hardcoded inside the programs.

HANDWRITTEN PRACTICALS
----------------------
2.1  Square and Cube: n = 5
3.1  Multiplication Table: num = 5
3.2  Summation: n = 5
4.1  Power Series: m = 3, n = 3
4.2  Factorial Series: n = 5

PDF PRACTICALS
--------------
6.1  Current date and time
6.2  Even/Odd: n = 5
7.1  Factorial: n = 5
7.2  Multiplication Table: n = 5
8.1  Department registration: deptNo = 101,
     deptName = "Computer Science", location = "Mumbai"
8.2  Prime numbers: m = 10, n = 30

IMPORTANT
---------
Practical 8.1 requires a JDBC driver and a database/table.
The original PDF uses the old JDBC-ODBC bridge. That bridge is obsolete
and is not available in modern Java, so this version uses the MySQL JDBC
driver as a practical modern replacement while preserving the same
PreparedStatement / jspInit() / jspDestroy() logic.

For 8.1, create a database named "tycs" and a table:
CREATE TABLE Dept (
    DeptNo INT,
    DeptName VARCHAR(100),
    Location VARCHAR(100)
);

Update the MySQL username/password in Register1.jsp if necessary.

The PDF source covers Practical 6.1 through 8.2 on pages 1-8.
