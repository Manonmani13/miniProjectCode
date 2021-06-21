<html>
<body background="mo.jog">
<%@page import="com.javatpoint.dao.UserDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("adduser-sucess.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>
</body>
</html>