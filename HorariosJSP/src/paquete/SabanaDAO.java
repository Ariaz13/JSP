package paquete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SabanaDAO {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/horarios", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	// Alta horario
	public static int alta(Horario h) throws SQLException {
		int status = 0;
		Connection con = getConnection();
		String sql = "INSERT INTO horario (clave_materia, idprofesor, grupo, no_alum, salon, lunes, martes, miercoles, jueves, viernes) VALUES (?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, h.getClave_materia());
		ps.setInt(2, h.getIdprofesor());
		ps.setString(3, h.getGrupo());
		ps.setInt(4, h.getNo_alum());
		ps.setString(5, h.getSalon());
		ps.setString(6, h.getLunes());
		ps.setString(7, h.getMartes());
		ps.setString(8, h.getMiercoles());
		ps.setString(9, h.getJueves());
		ps.setString(10, h.getViernes());
		status = ps.executeUpdate();

		return status;
	}

	// Ver sabana
	public static List<Sabana> getAllSabana() throws SQLException {
		List<Sabana> list = new ArrayList<Sabana>();
		Connection con = getConnection();
		String sql = "SELECT horario.clave_horario, horario.clave_materia, materias.clave_carrera, materias.materia, materias.carrera, profesor.nombre, materias.periodo, materias.turno, horario.grupo, horario.no_alum, materias.semestre, materias.creditos, horario.salon, horario.lunes, horario.martes, horario.miercoles, horario.jueves, horario.viernes FROM horario INNER JOIN materias ON horario.clave_materia = materias.clave_materia INNER JOIN profesor ON horario.idprofesor = profesor.idprofesor";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Sabana s = new Sabana();
			s.setClave_horario(rs.getInt("clave_horario"));
			s.setClave_materia(rs.getString("clave_materia"));
			s.setClave_carrera(rs.getString("clave_carrera"));
			s.setMateria(rs.getString("materia"));
			s.setCarrera(rs.getString("carrera"));
			s.setNombre(rs.getString("nombre"));
			s.setPeriodo(rs.getString("periodo"));
			s.setTurno(rs.getString("turno"));
			s.setGrupo(rs.getString("grupo"));
			s.setNo_alum(rs.getInt("no_alum"));
			s.setSemestre(rs.getInt("semestre"));
			s.setCreditos(rs.getInt("creditos"));
			s.setSalon(rs.getString("salon"));
			s.setLunes(rs.getString("lunes"));
			s.setMartes(rs.getString("martes"));
			s.setMiercoles(rs.getString("miercoles"));
			s.setJueves(rs.getString("jueves"));
			s.setViernes(rs.getString("viernes"));

			list.add(s);
		}

		return list;
	}
	
	public static Horario getRecordById(int id) throws SQLException {
		Horario s = null;
		Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from horario where clave_horario=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery(); 
        while(rs.next()) {
        	s= new Horario();
        	s.setClave_horario(rs.getInt("clave_horario"));
			s.setClave_materia(rs.getString("clave_materia"));
			s.setIdprofesor(rs.getInt("idprofesor"));
			s.setGrupo(rs.getString("grupo"));
			s.setNo_alum(rs.getInt("no_alum"));
			s.setSalon(rs.getString("salon"));
			s.setLunes(rs.getString("lunes"));
			s.setMartes(rs.getString("martes"));
			s.setMiercoles(rs.getString("miercoles"));
			s.setJueves(rs.getString("jueves"));
			s.setViernes(rs.getString("viernes"));
        }
        
        return s;
	}

	// Editar horario
	public static int editar(Horario h) throws SQLException {
		int status = 0;
		Connection con = getConnection();
		String sql = "UPDATE horario SET clave_materia=?, idprofesor=?, grupo=?, no_alum=?, salon=?, lunes=?, martes=?, miercoles=?, jueves=?, viernes=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, h.getClave_materia());
		ps.setInt(2, h.getIdprofesor());
		ps.setString(3, h.getGrupo());
		ps.setInt(4, h.getNo_alum());
		ps.setString(5, h.getSalon());
		ps.setString(6, h.getLunes());
		ps.setString(7, h.getMartes());
		ps.setString(8, h.getMiercoles());
		ps.setString(9, h.getJueves());
		ps.setString(10, h.getViernes());
		status = ps.executeUpdate();

		return status;
	}

	// Eliminar horario
	public static int eliminar(Horario h) throws SQLException {
		int status = 0;
		Connection con = getConnection();
		String sql = "DELETE FROM horario WHERE clave_horario=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, h.getClave_horario());
		status = ps.executeUpdate();
		return status;
	}
}
