package channel.Booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import channel.DBConnect.DBConnect;
import channel.Timetable.DocList;

public class BookingDBUtill {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<DocList> validate(String DR_NAME, String SPECIALIZATION, String HOSPITAL) {

		ArrayList<DocList> trj = new ArrayList<>();
		// Validate search train for given data

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "select * from doctordetails where DoctorName='" + DR_NAME + "' or Specialization='" + SPECIALIZATION
	                + "' or Hospital='" + HOSPITAL + "'";

			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int ID = rs.getInt(1);
				String DoctorId = rs.getString(2);
				String DoctorName = rs.getString(3);
				String Specialization = rs.getString(4);
				String Hospital = rs.getString(5);
				String Day = rs.getString(6);
				String Time = rs.getString(7);
			
				
				DocList j = new DocList(ID, DoctorId, DoctorName, Specialization, Hospital, Day,Time);

				trj.add(j);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return trj;

	}

}
