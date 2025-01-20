package channel.Booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import channel.Booking.ReservationDetails;
import channel.Booking.UpdateReservationDBUtil;

@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String reservationID = request.getParameter("reservationID");
		String doctorName = request.getParameter("doctorName");
		String specialization = request.getParameter("specialization");
		String hospital = request.getParameter("hospital");
		String day = request.getParameter("day");
		String time = request.getParameter("time");
		String patientName = request.getParameter("patientName");
		String phoneNumber = request.getParameter("phoneNumber");

		boolean isTrue;

		isTrue = UpdateReservationDBUtil.UpdateReservation(reservationID, doctorName, specialization, hospital, day, time, patientName,
				phoneNumber);

		if (isTrue == true) {

			List<ReservationDetails> ResDetails = UpdateReservationDBUtil.getResDetails(patientName, phoneNumber);
			request.setAttribute("ResDetails", ResDetails);

			RequestDispatcher dis = request.getRequestDispatcher("ReservationCart.jsp");
			dis.forward(request, response);
		} else {

			List<ReservationDetails> ResDetails = UpdateReservationDBUtil.getResDetails(patientName, phoneNumber);
			request.setAttribute("ResDetails", ResDetails);

			RequestDispatcher dis = request.getRequestDispatcher("UpdateReservation.jsp");
			dis.forward(request, response);
		}

	}

}
