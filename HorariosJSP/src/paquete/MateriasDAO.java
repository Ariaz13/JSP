package paquete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MateriasDAO {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://db:3306/horarios", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	// Ver materias
		public static List<Materias> getAllMaterias() throws SQLException {
			List<Materias> list = new ArrayList<Materias>();
			Connection con = getConnection();
			String sql = "SELECT * FROM materias ORDER BY semestre";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Materias m = new Materias();
				m.setClave_materia(rs.getString("clave_materia"));
				m.setClave_carrera(rs.getString("clave_carrera"));
				m.setMateria(rs.getString("materia"));
				m.setCarrera(rs.getString("carrera"));
				m.setPeriodo(rs.getString("periodo"));
				m.setTurno(rs.getString("turno"));
				m.setSemestre(rs.getInt("semestre"));
				m.setCreditos(rs.getInt("creditos"));
				m.setH_teoricas(rs.getInt("h_teoricas"));
				m.setH_practicas(rs.getInt("h_practicas"));
				list.add(m);
			}

			return list;
		}
}
