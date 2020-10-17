<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Horarios</title>
</head>
<body>
	<div id="menu">
		<a href="materias.jsp">MATERIAS</a> | <a href="sabana.jsp">SABANA</a>
		| <a href="reportes.jsp">REPORTES</a>
	</div>
	<%
		HttpSession sesion = request.getSession();
		String usuario;
		String rol;

	if (sesion.getAttribute("user") != null && sesion.getAttribute("rol") != null) {
		usuario = sesion.getAttribute("user").toString();
		rol = sesion.getAttribute("rol").toString();
		out.print("<a href='login.jsp?cerrar=true'>Cerrar sesion</a>");
	} else {
		out.print("<script>location.replace('login.jsp');</script>");
	}
	%>

	<form action="guardar.jsp" method="post">

		<table width="35%" border="0">
			<tr>
				<td><label for="materia">Materia:</label></td>
				<td><select name="clave_materia" id="clave_materia">
						<option value="ACF0901">CÁLCULO DIFERENCIAL</option>
						<option value="AED1285">FUNDAMENTOS DE PROGRAMACIÓN</option>
						<option value="AEF1041">MATEMÁTICAS DISCRETAS</option>
						<option value="SCH1024">TALLER DE ADMINISTRACIÓN</option>
						<option value="ACC0906">FUNDAMENTOS DE INVESTIGACIÓN</option>
						<option value="ACA0907">TALLER DE ÉTICA</option>
						<option value="ACF0902">CÁLCULO INTEGRAL</option>
						<option value="ACF0903">ÁLGEBRA LINEAL</option>
						<option value="AED1286">PROGRAMACIÓN ORIENTADA A OBJETOS</option>
						<option value="AEC1008">CONTABILIDAD FINANCIERA</option>
						<option value="AEC1058">QUÍMICA</option>
						<option value="AEF1052">PROBABILIDAD Y ESTADÍSTICA</option>
						<option value="ACF0904">CÁLCULO VECTORIAL</option>
						<option value="AED1026">ESTRUCTURA DE DATOS</option>
						<option value="SCF1006">FÍSICA GENERAL</option>
						<option value="SCC1013">INVESTIGACIÓN DE OPERACIONES</option>
						<option value="SCC1005">CULTURA EMPRESARIAL</option>
						<option value="ACD0908">DESARROLLO SUSTENTABLE</option>
						<option value="ACF0905">ECUACIONES DIFERENCIALES</option>
						<option value="SCD1027">TÓPICOS AVANZADOS DE PROGRAMACIÓN</option>
						<option value="SCD1018">PRINCIPIOS ELÉCTRICOS Y APLICACIONES DIGITALES</option>
						<option value="AEF1031">FUNDAMENTOS DE BASE DE DATOS</option>
						<option value="SCD1022">SIMULACIÓN</option>
						<option value="SCC1017">MÉTODOS NUMÉRICOS</option>
						<option value="SCD1003">ARQUITECTURA DE COMPUTADORAS</option>
						<option value="SCA1025">TALLER DE BASE DE DATOS</option>
						<option value="SCC1010">GRAFICACIÓN</option>
						<option value="AEC1034">FUNDAMENTOS DE TELECOMUNICACIONES</option>
						<option value="SCC1007">FUNDAMENTOS DE INGENIERÍA DE SOFTWARE</option>
						<option value="AEC1061">SISTEMAS OPERATIVOS</option>
						<option value="SCC1014">LENGUAJES DE INTERFAZ</option>
						<option value="SCB1001">ADMINISTRACIÓN DE BASE DE DATOS</option>
						<option value="SCD1021">REDES DE COMPUTADORAS</option>
						<option value="SCA1026">TALLER DE SISTEMAS OPERATIVOS</option>
						<option value="SCD1011">INGENIERÍA DE SOFTWARE</option>
						<option value="SCD1015">LENGUAJES Y AUTÓMATAS I</option>
						<option value="SCC1023">SISTEMAS PROGRAMABLES</option>
						<option value="DAD1401">BASES DE DATOS AVANZADAS</option>
						<option value="SCD1004">CONMUTACIÓN Y ENRUTAMIENTO EN REDES DE DATOS</option>
						<option value="SCG1009">GESTIÓN DE PROYECTOS DE SOFTWARE</option>
						<option value="SCD1016">LENGUAJES Y AUTÓMATAS II</option>
						<option value="ACA0909">TALLER DE INVESTIGACIÓN I</option>
						<option value="SCA1002">ADMINISTRACIÓN DE REDES</option>
						<option value="ACA0910">TALLER DE INVESTIGACIÓN II</option>
						<option value="SCC1019">PROGRAMACIÓN LÓGICA Y FUNCIONAL</option>
						<option value="AEB1055">PROGRAMACIÓN WEB</option>
						<option value="DAD1402">DESARROLLO DE APLICACIONES EMPRESARIALES</option>
						<option value="SCC1012">INTELIGENCIA ARTIFICIAL</option>
						<option value="DAD1403">PROGRAMACIÓN WEB AVANZADA</option>
						<option value="DAD1404">ARQUITECTURA DE APLICACIONES EMPRESARIALES</option>
						<option value="DAB1405">DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="profesor">Profesor:</label></td>
		      	<td><select name="idprofesor" id="idprofesor">
				      	<option value=""></option>
				        <option value=24541>DR. CARPIO VALADEZ JUAN MARTIN</option>
						<option value=24528>DR. MOSIÑO JUAN FRANCISCO</option>
						<option value=24545>DR. SANTIAGO MONTERO RAÚL</option>
						<option value=24546>DR. ZAMUDIO RODRIGUEZ VICTOR MANUEL</option>
						<option value=24539>DRA BALTAZAR FLORES MARIA DEL ROSARIO</option>
						<option value=24551>ING CASTILLO MARTÍNEZ PATRICIA MARIA</option>
						<option value=24548>ING GALLEGOS MUÑOZ LUIS ROBERTO</option>
						<option value=24549>ING GARCIA ORNELAS DOMINGO</option>
						<option value=24502>ING HERNÁNDEZ RODRÍGUEZ JOSÉ FERNANDO</option>
						<option value=24529>ING MORALES REYES OSCAR ANDRES</option>
						<option value=24544>ING PEÑA LÓPEZ MIGUEL ÁNGEL</option>
						<option value=24508>ING SAUCEDO TORRES MARÍA MINERVA</option>
						<option value=24517>ING VIGUERAS MONTAÑO IVAN</option>
						<option value=24506>ING. AGUILA REYES ANTONIO</option>
						<option value=24547>ING. AGUILERA CRUZ JUAN CARLOS</option>
						<option value=24542>ING. ARELLANO VERA MARIA DE LOS ANGELES</option>
						<option value=24504>ING. BERMUDEZ GUADALUPE EFRAIN</option>
						<option value=24505>ING. CARPIO FLORES JOSE GERARDO</option>
						<option value=24509>ING. GALVAN JARAMILLO PAOLA VIRGINIA</option>
						<option value=24553>ING. GAMIÑO GUERRERO ADOLFO</option>
						<option value=24518>ING. GARCIA TRUJILLO ALEJANDRO</option>
						<option value=24536>ING. GASCA GONZALEZ JOSE ALFREDO</option>
						<option value=24523>ING. GODINEZ CABRERA HECTOR FEDERICO</option>
						<option value=24514>ING. GUEVARA RANGEL LAURA PATRICIA</option>
						<option value=24524>ING. GUIZAR RUIZ JUAN IGNACIO</option>
						<option value=24507>ING. GUTIERREZ AYALA LUIS EDUARDO</option>
						<option value=24543>ING. HERNANDEZ CARRANZA ANGELICA BENITA</option>
						<option value=24540>ING. JUAREZ GUERRA LAURA</option>
						<option value=24537>ING. LEVY ROJAS CARLOS RAFAEL</option>
						<option value=24556>ING. MANZANARES CUADROS JAVIER IVAN</option>
						<option value=24516>ING. MARIN GONZALEZ EUGENIO CONRADO</option>
						<option value=24512>ING. MARTINEZ AGUILAR ANA COLUMBA ZURITA</option>
						<option value=24513>ING. MARTINEZ ARIAS JOSE ELIAS</option>
						<option value=24559>ING. MARTINEZ PRADO EDNA MILITZA</option>
						<option value=24503>ING. MARTINEZ TREJO DENY</option>
						<option value=24519>ING. MEDINA LÓPEZ DENISSE</option>
						<option value=24555>ING. MURILLO RUIZ JUAN PABLO</option>
						<option value=24527>ING. ORNELAS RODRIGUEZ MANUEL</option>
						<option value=24538>ING. PEREZ PINTOR EDUARDO JOSE</option>
						<option value=24510>ING. RODRIGUEZ RENTERIA JOSE ALEJANDRO</option>
						<option value=24525>ING. RUIZ GAYTAN LUZ DEL CARMEN</option>
						<option value=24501>ING. SAEZ DE NANCLARES RODRIGUEZ RUTH</option>
						<option value=24550>ING. SANDOVAL SOLIS MA. CONCEPCION</option>
						<option value=24526>ING. SILVA TOVAR CIRINO</option>
						<option value=24558>ING. SUAREZ Y GOMEZ JOSE LUIS FERNANDO</option>
						<option value=24554>ING. TAPIA IBARRA MA. VERONICA</option>
						<option value=24521>ING. TRUJILLO CORONA RUBEN</option>
						<option value=24532>LIC RODRÍGUEZ MUÑOZ GUSTAVO ADOLFO</option>
						<option value=24552>LIC TRUJILLO CASTELLANOS CARLOS ALBERTO</option>
						<option value=24520>LIC. CASTELLANOS NOLASCO ELIZABETH</option>
						<option value=24534>LIC. LUGO PEDROZA DAVID EVERARDO</option>
						<option value=24515>LIC. MORENO REAL ROXANA NOEMI</option>
						<option value=24533>LIC. ORTIZ GAUCIN ANGELICA MARIA</option>
						<option value=24535>LIC. PUGA SOBERANES HECTOR JOSE</option>
						<option value=24511>LIC. RAMIREZ ALVAREZ IRMA DE JESUS</option>
						<option value=24557>M.C. LINO RAMIREZ CARLOS</option>
						<option value=24522>M.C. ROCHA SANCHEZ MARTHA ALICIA</option>
						<option value=24530>MTRA PÉREZ FLORES ANGÉLICA JOSEFINA</option>
						<option value=24531>MTRA SÁNCHEZ CANO MA. CONCEPCIÓN ROCÍO</option>
		      </select></td>
			</tr>
			<tr>
				<td><label for="grupo">Grupo:</label></td>
				<td><select name="grupo" id="grupo">
					<option value="A">A</option>
					<option value="B">B</option>
					<option value="C">C</option>
					<option value="D">D</option>
					<option value="E">E</option>
					<option value="F">F</option>
				</select></td>
			</tr>
			<tr>
				<td width="13%"><label for="no_alum">Num. Alumnos: </label></td>
				<td width="87%"><input type="text" name="no_alum" id="no_alum"></td>
			</tr>
			<tr>
				<td><label for="salon">Aula:</label></td>
				<td><select name="salon" id="salon">
					<option value=""></option>
					<option value="C-D1">C-D1</option>
					<option value="C-D11">C-D11</option>
					<option value="C-D12">C-D12</option>
					<option value="C-D13">C-D13</option>
					<option value="C-D14">C-D14</option>
					<option value="C-D15">C-D15</option>
					<option value="C-D2">C-D2</option>
					<option value="C-D3">C-D3</option>
					<option value="C-D4">C-D4</option>
					<option value="C-D5">C-D5</option>
					<option value="C-D6">C-D6</option>
					<option value="C-D7">C-D7</option>
					<option value="C-D8">C-D8</option>
					<option value="C-D9">C-D9</option>
					<option value="C-F5">C-F5</option>
					<option value="C-F6">C-F6</option>
					<option value="C-F7">C-F7</option>
					<option value="C-F8">C-F8</option>
					<option value="C-LC1">C-LC1</option>
					<option value="C-LC2">C-LC2</option>
					<option value="C-LC3">C-LC3</option>
					<option value="C-LC4">C-LC4</option>
					<option value="C-SC1">C-SC1</option>
					<option value="C-X1">C-X1</option>
					<option value="C-X2">C-X2</option>
					<option value="C-X3">C-X3</option>
					<option value="C-X5">C-X5</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="lunes">Lunes:</label></td>
				<td><select name="lunes" id="lunes">
					<option value=""></option>
					<option value="07:00-08:40">07:00-08:40</option>
					<option value="08:45-10:25">08:45-10:25</option>
					<option value="10:30-12:10">10:30-12:10</option>
					<option value="12:15-13:55">12:15-13:55</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="martes">Martes:</label></td>
				<td><select name="martes" id="martes">
				<option value=""></option>
				<option value="07:00-08:40">07:00-08:40</option>
				<option value="08:45-10:25">08:45-10:25</option>
				<option value="10:30-12:10">10:30-12:10</option>
				<option value="12:15-13:55">12:15-13:55</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="miercoles">Miercoles:</label></td>
				<td><select name="miercoles" id="miercoles">
				<option value=""></option>
				<option value="07:00-08:40">07:00-08:40</option>
				<option value="08:45-10:25">08:45-10:25</option>
				<option value="10:30-12:10">10:30-12:10</option>
				<option value="12:15-13:55">12:15-13:55</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="jueves">Jueves:</label></td>
				<td><select name="jueves" id="jueves">
				<option value=""></option>
				<option value="07:00-08:40">07:00-08:40</option>
				<option value="08:45-10:25">08:45-10:25</option>
				<option value="10:30-12:10">10:30-12:10</option>
				<option value="12:15-13:55">12:15-13:55</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="viernes">Viernes:</label></td>
				<td><select name="viernes" id="viernes">
				<option value=""></option>
				<option value="07:00-07:50">07:00-07:50</option>
				<option value="07:50-08:40">07:50-08:40</option>
				<option value="08:45-09:35">08:45-09:35</option>
				<option value="09:35-10:25">09:35-10:25</option>
				<option value="10:30-11:20">10:30-11:20</option>
				<option value="11:20-12:10">11:20-12:10</option>
				<option value="12:15-13:05">12:15-13:05</option>
				<option value="13:05-13:55">13:05-13:55</option>
				</select></td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="Registrar"/></td></tr>
		</table>
	</form>

</body>
</html>