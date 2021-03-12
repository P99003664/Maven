<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String UName = request.getParameter("UName");    
String Pwd = request.getParameter("Pwd");
String FName = request.getParameter("FName");
String LName = request.getParameter("LName");
String Email = request.getParameter("Email");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
Statement st = con.createStatement();
int i = st.executeUpdate("insert into login(FName, LName, Email, UName, Pwd, Reg_Date) values ('" + FName + "','" 
		
+ LName + "','" + Email + "','" + UName + "','" + Pwd + "', CURDATE())");
if (i > 0) {
        response.sendRedirect("success.jsp");     
    } else {
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>