<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Materias</title>
</head>
<body>
<div id="menu">
		<a href="materias.jsp">MATERIAS</a>        |
		<a href="sabana.jsp">SABANA</a>        |     
		<a href="reportes.jsp">REPORTES</a>
	</div>
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
	<h1>MATERIAS ISC:</h1>
		<%  
		List<Materias> list = MateriasDAO.getAllMaterias();
		request.setAttribute("list",list);  
		%>  
		
		<table border="1" width="90%">  
			<tr>
				<th>Clave Materia</th>
				<th>Clave Carrera</th>  
				<th>Materia</th>
				<th>Carrera</th>
				<th>Periodo</th>
				<th>Turno</th>
				<th>Semestre</th>
				<th>Creditos</th>
				<th>Horas Teoricas</th>
				<th>Horas Practicas</th>
			</tr>  
			<c:forEach items="${list}" var="s">  
				<tr>
					<td>${s.getClave_materia()}</td>
					<td>${s.getClave_carrera()}</td>
					<td>${s.getMateria()}</td>
					<td>${s.getCarrera()}</td>
					<td>${s.getPeriodo()}</td>
					<td>${s.getTurno()}</td>
					<td>${s.getSemestre()}</td>
					<td>${s.getCreditos()}</td>
					<td>${s.getH_teoricas()}</td>
					<td>${s.getH_practicas()}</td>
				</tr>  
			</c:forEach>  
		</table>
</body>
</html>