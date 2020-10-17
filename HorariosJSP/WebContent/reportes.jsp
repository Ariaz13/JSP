<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reportes</title>
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
	
	<h1>REPORTES DE MAESTROS:</h1>
	<form class="form-inline">
		<label for="profesor">Profesor:</label>
      	<select name="profesor" id="profesor">
	      	<option value=""></option>
	        <option value="24541">DR. CARPIO VALADEZ JUAN MARTIN</option>
			<option value="24528">DR. MOSIÑO JUAN FRANCISCO</option>
			<option value="24545">DR. SANTIAGO MONTERO RAÚL</option>
			<option value="24546">DR. ZAMUDIO RODRIGUEZ VICTOR MANUEL</option>
			<option value="24539">DRA BALTAZAR FLORES MARIA DEL ROSARIO</option>
			<option value="24551">ING CASTILLO MARTÍNEZ PATRICIA MARIA</option>
			<option value="24548">ING GALLEGOS MUÑOZ LUIS ROBERTO</option>
			<option value="24549">ING GARCIA ORNELAS DOMINGO</option>
			<option value="24502">ING HERNÁNDEZ RODRÍGUEZ JOSÉ FERNANDO</option>
			<option value="24529">ING MORALES REYES OSCAR ANDRES</option>
			<option value="24544">ING PEÑA LÓPEZ MIGUEL ÁNGEL</option>
			<option value="24508">ING SAUCEDO TORRES MARÍA MINERVA</option>
			<option value="24517">ING VIGUERAS MONTAÑO IVAN</option>
			<option value="24506">ING. AGUILA REYES ANTONIO</option>
			<option value="24547">ING. AGUILERA CRUZ JUAN CARLOS</option>
			<option value="24542">ING. ARELLANO VERA MARIA DE LOS ANGELES</option>
			<option value="24504">ING. BERMUDEZ GUADALUPE EFRAIN</option>
			<option value="24505">ING. CARPIO FLORES JOSE GERARDO</option>
			<option value="24509">ING. GALVAN JARAMILLO PAOLA VIRGINIA</option>
			<option value="24553">ING. GAMIÑO GUERRERO ADOLFO</option>
			<option value="24518">ING. GARCIA TRUJILLO ALEJANDRO</option>
			<option value="24536">ING. GASCA GONZALEZ JOSE ALFREDO</option>
			<option value="24523">ING. GODINEZ CABRERA HECTOR FEDERICO</option>
			<option value="24514">ING. GUEVARA RANGEL LAURA PATRICIA</option>
			<option value="24524">ING. GUIZAR RUIZ JUAN IGNACIO</option>
			<option value="24507">ING. GUTIERREZ AYALA LUIS EDUARDO</option>
			<option value="24543">ING. HERNANDEZ CARRANZA ANGELICA BENITA</option>
			<option value="24540">ING. JUAREZ GUERRA LAURA</option>
			<option value="24537">ING. LEVY ROJAS CARLOS RAFAEL</option>
			<option value="24556">ING. MANZANARES CUADROS JAVIER IVAN</option>
			<option value="24516">ING. MARIN GONZALEZ EUGENIO CONRADO</option>
			<option value="24512">ING. MARTINEZ AGUILAR ANA COLUMBA ZURITA</option>
			<option value="24513">ING. MARTINEZ ARIAS JOSE ELIAS</option>
			<option value="24559">ING. MARTINEZ PRADO EDNA MILITZA</option>
			<option value="24503">ING. MARTINEZ TREJO DENY</option>
			<option value="24519">ING. MEDINA LÓPEZ DENISSE</option>
			<option value="24555">ING. MURILLO RUIZ JUAN PABLO</option>
			<option value="24527">ING. ORNELAS RODRIGUEZ MANUEL</option>
			<option value="24538">ING. PEREZ PINTOR EDUARDO JOSE</option>
			<option value="24510">ING. RODRIGUEZ RENTERIA JOSE ALEJANDRO</option>
			<option value="24525">ING. RUIZ GAYTAN LUZ DEL CARMEN</option>
			<option value="24501">ING. SAEZ DE NANCLARES RODRIGUEZ RUTH</option>
			<option value="24550">ING. SANDOVAL SOLIS MA. CONCEPCION</option>
			<option value="24526">ING. SILVA TOVAR CIRINO</option>
			<option value="24558">ING. SUAREZ Y GOMEZ JOSE LUIS FERNANDO</option>
			<option value="24554">ING. TAPIA IBARRA MA. VERONICA</option>
			<option value="24521">ING. TRUJILLO CORONA RUBEN</option>
			<option value="24532">LIC RODRÍGUEZ MUÑOZ GUSTAVO ADOLFO</option>
			<option value="24552">LIC TRUJILLO CASTELLANOS CARLOS ALBERTO</option>
			<option value="24520">LIC. CASTELLANOS NOLASCO ELIZABETH</option>
			<option value="24534">LIC. LUGO PEDROZA DAVID EVERARDO</option>
			<option value="24515">LIC. MORENO REAL ROXANA NOEMI</option>
			<option value="24533">LIC. ORTIZ GAUCIN ANGELICA MARIA</option>
			<option value="24535">LIC. PUGA SOBERANES HECTOR JOSE</option>
			<option value="24511">LIC. RAMIREZ ALVAREZ IRMA DE JESUS</option>
			<option value="24557">M.C. LINO RAMIREZ CARLOS</option>
			<option value="24522">M.C. ROCHA SANCHEZ MARTHA ALICIA</option>
			<option value="24530">MTRA PÉREZ FLORES ANGÉLICA JOSEFINA</option>
			<option value="24531">MTRA SÁNCHEZ CANO MA. CONCEPCIÓN ROCÍO</option>
      </select>
      <input type="submit" name="accion" value="Buscar" class="btn btn-outline-success"/>
      <%
      
	      if(request.getParameter("profesor")!= null){
	    	  	String prof = request.getParameter("profesor");
	  			System.out.println(prof);
	  			List<ReporteP> list = ReporteDAO.getAllReporte(Integer.parseInt(prof));  
	  			request.setAttribute("list",list);
	      }else{}	
	%>
	</form>
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