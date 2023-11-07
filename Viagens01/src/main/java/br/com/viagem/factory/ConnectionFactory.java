package br.com.viagem.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private static final String URL = "jdbc:mysql://localhost:3306/viagens";
	private static final String USUARIO = "root";
	private static final String SENHA = "";

	public static Connection conectar() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Encontrado!");
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

		try {

			Connection connection = DriverManager.getConnection(URL, USUARIO, SENHA);
			System.out.println("Conectado!");
			return connection;

		} catch (SQLException e) {

			System.out.println(e.getMessage());
			return null;
		}
	}
}
