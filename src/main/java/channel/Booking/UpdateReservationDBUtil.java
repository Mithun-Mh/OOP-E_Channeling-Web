package channel.Booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import channel.Booking.ReservationDetails;
import channel.DBConnect.DBConnect;

public class UpdateReservationDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<ReservationDetails> getResDetails(String patientName, String phoneNumber) {

		ArrayList<ReservationDetails> RES = new ArrayList<>();

		// Get data from Database after the Update database

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

	public static boolean UpdateReservation(String reservationID, String doctorName, String specialization, String hospital, String day,
			String time, String patientName, String phoneNumber) {

		// Update the database

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update reservationdetails set DoctorName='" + doctorName + "', Specialization='" + specialization
					+ "', Hospital='" + hospital + "',Day='" + day + "',Time='" + time + "',PatientName='" + patientName + "', PhoneNumber='" + phoneNumber + "'"
					+ "where reservationID ='" + reservationID + "'";
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

}
