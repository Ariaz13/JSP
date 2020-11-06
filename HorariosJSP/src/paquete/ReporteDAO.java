package paquete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReporteDAO {
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
	
	// Ver Reporte
		public static List<ReporteP> getAllReporte(int idprofesor) throws SQLException {
			List<ReporteP> list = new ArrayList<ReporteP>();
			Connection con = getConnection();
			String sql = "SELECT horario.idprofesor, profesor.nombre, horario.clave_horario, horario.clave_materia, " + 
					"materias.materia, horario.grupo, horario.salon, horario.no_alum, materias.clave_carrera, " +
					"materias.semestre, horario.lunes, horario.martes, horario.miercoles, horario.jueves, " + 
					"horario.viernes, materias.h_teoricas, materias.h_practicas, materias.creditos " + 
					"FROM horario INNER JOIN profesor ON horario.idprofesor = profesor.idprofesor " + 
					"INNER JOIN materias ON horario.clave_materia = materias.clave_materia WHERE horario.idprofesor = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, idprofesor);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ReporteP p = new ReporteP();
				p.setIdprofesor(rs.getInt("idprofesor"));
				p.setNombre(rs.getString("nombre"));
				p.setClave_horario(rs.getInt("clave_horario"));
				p.setClave_materia(rs.getString("clave_materia"));
				p.setMateria(rs.getString("materia"));
				p.setGrupo(rs.getString("grupo"));
				p.setSalon(rs.getString("salon"));
				p.setNo_alum(rs.getInt("no_alum"));
				p.setClave_carrera(rs.getString("clave_carrera"));
				p.setSemestre(rs.getInt("semestre"));
				p.setLunes(rs.getString("lunes"));
				p.setMartes(rs.getString("martes"));
				p.setMiercoles(rs.getString("miercoles"));
				p.setJueves(rs.getString("jueves"));
				p.setViernes(rs.getString("viernes"));
				p.setH_teoricas(rs.getInt("h_teoricas"));
				p.setH_practicas(rs.getInt("h_practicas"));
				p.setCreditos(rs.getInt("creditos"));

				list.add(p);
			}

			return list;
		}
}
