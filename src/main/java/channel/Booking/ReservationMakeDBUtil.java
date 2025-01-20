package channel.Booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import channel.Booking.ReservationDetails;
import channel.DBConnect.DBConnect;

public class ReservationMakeDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean MakeReservation(String doctorName, String specialization, String hospital, String day,
			String time, String patientName, String phoneNumber) {

		boolean isSuccess = false;

		// Insert data to the database from user

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "Insert into reservationdetails values(0,'" + doctorName + "','" + specialization + "','" + hospital
					+ "','" + day + "','" + time + "','" + patientName + "','" + phoneNumber + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static List<ReservationDetails> getResDetails(String patientName, String phoneNumber) {

		ArrayList<ReservationDetails> RES = new ArrayList<>();

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from reservationdetails where PatientName ='" + patientName + "' and PhoneNumber = '" + phoneNumber
					+ "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int ReservationID = rs.getInt(1);
				String DoctorName = rs.getString(2);
				String Specialization = rs.getString(3);
				String Hospital = rs.getString(4);
				String Day = rs.getString(5);
				String Time = rs.getString(6);
				String PatientName = rs.getString(7);
				String PhoneNumber = rs.getString(8);
				

				ReservationDetails R = new ReservationDetails(ReservationID, DoctorName, Specialization, Hospital, Day,
						Time, PatientName, PhoneNumber);
				RES.add(R);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return RES;
	}

}
