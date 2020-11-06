<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="paquete.Conexion, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/default.css">
<style>
form, h3 {
  text-align: center;
}</style>
</head>
<body>
<h3>
<% 
	Connection con;
	try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://db:3306/horarios", "root", "root");
	out.write("Conexion exitosa");
	}catch(Exception e){out.write("/n Problema: " + e.toString());}
%>
</h3>
</body>
</html>