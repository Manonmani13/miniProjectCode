<html>
<body background="mo.jpg">
<%@ page import="java.sql.*"%>
<%@ page  import="com.mysql.jdbc.Driver"%>
<%@ page import= "java.sql.Connection" %>
<%@ page import= "java.sql.DriverManager" %>
<%@ page  import="java.sql.SQLException" %>
<%
String userid = request.getParameter("uname");    
String pwd = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test10",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
if (rs.next()) {
session.setAttribute("userid", userid);
response.sendRedirect("compa.html");

} else {
out.println("Invalid password <a href='index.jsp'>try again</a>");
}
%>
</body>
</html>