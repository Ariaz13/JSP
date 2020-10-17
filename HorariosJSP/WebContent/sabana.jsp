<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sabana</title>
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
	<h1>SABANA DE MATERIAS:</h1>
		<%  
		List<Sabana> list = SabanaDAO.getAllSabana();
		request.setAttribute("list",list);  
		%>  
			<br><br>
		<h2><a href="horarios.jsp">Nueva Clase</a></h2>
			<br><br>
		<table border="1" width="90%">  
			<tr>
				<th>Clave Horario</th>
				<th>Clave Materia</th>
				<th>Clave Carrera</th>  
				<th>Materia</th>
				<th>Carrera</th>
				<th>Maestro</th>
				<th>Periodo</th>
				<th>Turno</th>
				<th>Grupo</th>
				<th>Num. Alumnos</th>
				<th>Semestre</th>
				<th>Creditos</th>
				<th>Salon</th>
				<th>Lunes</th>
				<th>Martes</th>
				<th>Miercoles</th>
				<th>Jueves</th>
				<th>Viernes</th>
				<th>Editar</th>
				<th>Eliminar</th>
			</tr>  
			<c:forEach items="${list}" var="s">  
				<tr>
					<td>${s.getClave_horario()}</td>
					<td>${s.getClave_materia()}</td>
					<td>${s.getClave_carrera()}</td>
					<td>${s.getMateria()}</td>
					<td>${s.getCarrera()}</td>
					<td>${s.getNombre()}</td>
					<td>${s.getPeriodo()}</td>
					<td>${s.getTurno()}</td>
					<td>${s.getGrupo()}</td>
					<td>${s.getNo_alum()}</td>
					<td>${s.getSemestre()}</td>
					<td>${s.getCreditos()}</td>
					<td>${s.getSalon()}</td>
					<td>${s.getLunes()}</td>
					<td>${s.getMartes()}</td>
					<td>${s.getMiercoles()}</td>
					<td>${s.getJueves()}</td>
					<td>${s.getViernes()}</td>
					<td><a href="editar.jsp?id=${s.getClave_horario()}">Editar</a></td>  
					<td><a href="eliminar.jsp?id=${s.getClave_horario()}">Eliminar</a></td>
				</tr>  
			</c:forEach>  
		</table>
</body>
</html>