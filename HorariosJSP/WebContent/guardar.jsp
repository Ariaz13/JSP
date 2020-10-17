<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.SabanaDAO"%>  
<jsp:useBean id="h" class="paquete.Horario"></jsp:useBean>  
<jsp:setProperty property="*" name="h"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar un horario</title>
</head>
<body>
	<%  
			int i=SabanaDAO.alta(h);  
			if(i>0){  
			response.sendRedirect("exito.jsp");  
			}else{  
			response.sendRedirect("error.jsp");  
			}  
		%>  
</body>
</html>