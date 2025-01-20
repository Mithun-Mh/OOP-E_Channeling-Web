package channel.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/online_e_channeling_system";
	private static String username = "root";
	private static String password = "123456789";
	private static Connection con;

	public static Connection getConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			System.out.println("DB not Success");
		}
		return con;
	}

}

