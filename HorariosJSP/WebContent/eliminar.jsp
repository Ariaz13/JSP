<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*"%>
<jsp:useBean id="u" class="paquete.Horario"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar materia</title>
</head>
<body>
	<%  
	SabanaDAO.eliminar(u);  
	response.sendRedirect("sabana.jsp");  
	%>
</body>
</html>