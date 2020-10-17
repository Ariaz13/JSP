<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REPORTE</title>
</head>
<body>
<%
		HttpSession sesion = request.getSession(); 
		String usuario="";
		String rol;
		
		if(sesion.getAttribute("user")!=null && sesion.getAttribute("rol")!=null){
			usuario = sesion.getAttribute("user").toString(); 
			rol = sesion.getAttribute("rol").toString();
			out.print("<a href='login.jsp?cerrar=true'>Cerrar sesion</a>");
		}else{
			out.print("<script>location.replace('login.jsp');</script>");
		}
		%>
		<h1>REPORTE:</h1>
		<%
		String usu = sesion.getAttribute("user").toString();
		request.setAttribute("usuario", usu);
		List<ReporteP> list = ReporteDAO.getAllReporte(Integer.parseInt(usu));  
		request.setAttribute("list",list); 
		%>
		<br>
			<br>
			<table border=1>
				<tr>
					<td>Nombre: </td>
					<td>${list[0].getNombre()}</td>
				</tr>
			</table>
			<br><br>
			<table border=1>
				<tr>
					<td>Clave Horario</td>
					<td>Clave Materia</td>
					<td>Materia</td>
					<td>Grupo</td>
					<td>Salon</td>
					<td>Alumnos</td>
					<td>Clave Carrera</td>
					<td>Semestre</td>
					<td>Lunes</td>
					<td>Martes</td>
					<td>Miercoles</td>
					<td>Jueves</td>
					<td>Viernes</td>
					<td>HT</td>
					<td>HP</td>
					<td>Creditos</td>
				</tr>
				<c:forEach items="${list}" var="report">
					 	<tr>
					 		<td>${report.getClave_horario()}</td>
					 		<td>${report.getClave_materia()}</td>
					 		<td>${report.getMateria()}</td>
					 		<td>${report.getGrupo()}</td>
					 		<td>${report.getSalon()}</td>
					 		<td>${report.getNo_alum()}</td>
					 		<td>${report.getClave_carrera()}</td>
					 		<td>${report.getSemestre()}</td>
					 		<td>${report.getLunes()}</td>
					 		<td>${report.getMartes()}</td>
					 		<td>${report.getMiercoles()}</td>
					 		<td>${report.getJueves()}</td>
					 		<td>${report.getViernes()}</td>
					 		<td>${report.getH_teoricas()}</td>
					 		<td>${report.getH_practicas()}</td>
					 		<td>${report.getCreditos()}</td>
					 	</tr>
				 	</c:forEach>
			</table>
</body>
</html>