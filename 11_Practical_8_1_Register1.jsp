<%@ page import="java.sql.*" %>

<%!
    Connection con;
    PreparedStatement ps;

    public void jspInit() {
        try {
            // Configure these values for the database used in the lab.
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/tycs",
                "root",
                "root"
            );

            String query = "INSERT INTO Dept VALUES (?, ?, ?)";
            ps = con.prepareStatement(query);

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
%>

<%
    // Hardcoded input based on the PDF practical.
    int deptNo = 101;
    String deptName = "Computer Science";
    String location = "Mumbai";

    try {
        ps.setInt(1, deptNo);
        ps.setString(2, deptName);
        ps.setString(3, location);
        ps.executeUpdate();

        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM Dept");
%>

<html>
<body>
    <h2>Department Details</h2>

    <table border="1">
        <tr>
            <th>Dept No</th>
            <th>Dept Name</th>
            <th>Location</th>
        </tr>

        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getObject(1) %></td>
            <td><%= rs.getObject(2) %></td>
            <td><%= rs.getObject(3) %></td>
        </tr>
        <%
            }
            rs.close();
            st.close();
        %>
    </table>
</body>
</html>

<%
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>

<%!
    public void jspDestroy() {
        try {
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
%>
