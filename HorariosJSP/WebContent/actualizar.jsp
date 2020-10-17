<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*"%>  
<jsp:useBean id="h" class="paquete.Horario"></jsp:useBean>  
<jsp:setProperty property="*" name="h"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%  
			int i = SabanaDAO.editar(h);
			response.sendRedirect("sabana.jsp");  
		%>  
</body>
</html>