package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConexionDB {
	private Connection conexion;
	private Statement st;
	static String user="";
	static String password="";

	public Statement conectar() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conexion = DriverManager.getConnection(server, user, password);
			st = conexion.createStatement();
			return st;
		}
		catch(Exception e) {
			System.out.println("Imposible realizar conexion con la BD");	 
			e.printStackTrace();
		}
		return st;
	}

	public void cerrarConexion(ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			}
			catch(Exception e) {
				System.out.println("No es posible cerrar la conexion");
			}
		}
	}

	public void cerrar(java.sql.Statement stmt) {
		if(stmt != null) {
			try {
				stmt.close();
			}
			catch(Exception e) {

			}
		}
	}

	public void destruir() {
		if(conexion != null) {
			try {
				conexion.close();
			}
			catch(Exception e) {

			}
		}
	}

}