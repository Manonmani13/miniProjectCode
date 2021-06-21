
<html>
<body background="mo.jpg">
<%@ page import ="java.sql.*" %>

<%

String user = request.getParameter("uname");   

String pwd = request.getParameter("pass");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String adharno=request.getParameter("adharno");
String conformpass=request.getParameter("conformpass");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test10",
"root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into members(first_name, last_name, email, uname,adharno, pass,conformpass,regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" +adharno+"','"+ pwd +"','"+conformpass+ "', CURDATE())");
if(!pwd.equals(conformpass))
{
    response.sendRedirect("my.jsp");
}
else if (i > 0) {
response.sendRedirect("regsuccess.jsp");
} else {
response.sendRedirect("index.jsp");
}

%>
</body>
</html>