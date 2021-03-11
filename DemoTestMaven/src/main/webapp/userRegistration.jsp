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
String UserName = request.getParameter("UserName");    
String Pwd = request.getParameter("Pwd");
String FName = request.getParameter("FName");
String LName = request.getParameter("LName");
String Email = request.getParameter("Email");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Mevan", "root", "root");
Statement st = con.createStatement();
int i = st.executeUpdate("insert into USER(FName, LName, Email, UserName, Pwd, Reg_Date) values ('" + First_Name + "','" 
		
+ Last_Name + "','" + Email + "','" + User_Name + "','" + Password + "', CURDATE())");
if (i > 0) {
        response.sendRedirect("Success.jsp");     
    } else {
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>