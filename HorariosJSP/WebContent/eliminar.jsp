<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.SabanaDAO"%>
<jsp:useBean id="h" class="paquete.Horario"></jsp:useBean>  
<jsp:setProperty property="*" name="h"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar materia</title>
</head>
<body>
	<%  
		SabanaDAO.eliminar(h);  
		response.sendRedirect("sabana.jsp");  
	%>
</body>
</html>