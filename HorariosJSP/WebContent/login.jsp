<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page session="true" %>
<%@ page import="paquete.Conexion" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>APLICACI�N WEB CON JSP</h1>
		<h4>Iniciar sesi�n</h4>
		<form action="login.jsp" method="post">
			<label>Nombre de Usuario: </label>
		    <input type="text" name="usuario" id="usuario">
		    <br><br>
			<label>Contrase�a: </label>
		    <input type="password" name="contrasena" id="contrasena">
		    <br><br><br>
		    <input type="submit" value="Ingresar" name="ingresar" >
		</form>
		<%
			Conexion c = new Conexion();
		
			if(request.getParameter("ingresar")!=null){
				String nombre = request.getParameter("usuario");
				String contra = request.getParameter("contrasena");
				
				HttpSession sesion = request.getSession();
				
				switch(c.loguear(nombre, contra)){
					case 1:
						sesion.setAttribute("user", nombre);
						sesion.setAttribute("rol", 1);
						response.sendRedirect("jefe.jsp");
						break;
					case 2:
						sesion.setAttribute("user", nombre);
						sesion.setAttribute("rol", 2);
						response.sendRedirect("maestro.jsp");
						break;
					default:
						out.write("Usuario o contrase�a invalido!");
						break;
				}
			}
			
			if(request.getParameter("cerrar")!=null){
				session.invalidate();
			}
		%>
</body>
</html>