package paquete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {
	String driver;
	String url;
	String uss;
	String pass;
	
	public Conexion() {
		driver = "com.mysql.jdbc.Driver";
		url = "jdbc:mysql://localhost:3306/horarios"; 
		uss = "root";
		pass = "root";
	}
	
	public int loguear(String us, String contra) {
		Connection conn;
		PreparedStatement pst;
		ResultSet rs;
		int rol = 0;
		String sql = "select rol from profesor where idprofesor =" + us + " and contrasena ='" + contra + "'";
		try {
			Class.forName(this.driver);
			conn = DriverManager.getConnection(this.url,this.uss,this.pass);
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				rol = rs.getInt(1);
			}
			conn.close();
		}catch(ClassNotFoundException | SQLException e) {
		}
		return rol;
	}  
}
