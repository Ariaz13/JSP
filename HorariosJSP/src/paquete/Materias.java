package paquete;

public class Materias {
	private String clave_materia;
	private String clave_carrera;
	private String materia;
	private String carrera;
	private String periodo;
	private String turno;
	private int semestre;
	private int creditos;
	private int h_teoricas;
	private int h_practicas;
	
	public String getClave_materia() {
		return clave_materia;
	}
	public void setClave_materia(String clave_materia) {
		this.clave_materia = clave_materia;
	}
	public String getClave_carrera() {
		return clave_carrera;
	}
	public void setClave_carrera(String clave_carrera) {
		this.clave_carrera = clave_carrera;
	}
	public String getMateria() {
		return materia;
	}
	public void setMateria(String materia) {
		this.materia = materia;
	}
	public String getCarrera() {
		return carrera;
	}
	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}
	public String getPeriodo() {
		return periodo;
	}
	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}
	public String getTurno() {
		return turno;
	}
	public void setTurno(String turno) {
		this.turno = turno;
	}
	public int getSemestre() {
		return semestre;
	}
	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}
	public int getCreditos() {
		return creditos;
	}
	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}
	public int getH_teoricas() {
		return h_teoricas;
	}
	public void setH_teoricas(int h_teoricas) {
		this.h_teoricas = h_teoricas;
	}
	public int getH_practicas() {
		return h_practicas;
	}
	public void setH_practicas(int h_practicas) {
		this.h_practicas = h_practicas;
	}
}
