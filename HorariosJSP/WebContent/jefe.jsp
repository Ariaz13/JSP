<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		HttpSession sesion = request.getSession(); 
		String usuario;
		String rol;
		
		if(sesion.getAttribute("user")!=null && sesion.getAttribute("rol")!=null){
			usuario = sesion.getAttribute("user").toString(); 
			rol = sesion.getAttribute("rol").toString();
			out.print("<a href='login.jsp?cerrar=true'>Cerrar sesion</a>");
		}else{
			out.print("<script>location.replace('login.jsp');</script>");
		}
	%>
	
	<h1>JEFE DE CARRERA</h1>
	<h3>Menú Principal</h3>
	<div id="menu">
		<a href="materias.jsp">MATERIAS</a>        |
		<a href="sabana.jsp">SABANA</a>        |     
		<a href="reportes.jsp">REPORTES</a>
	</div>
</body>
</html>