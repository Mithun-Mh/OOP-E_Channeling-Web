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
import channel.Booking.ReservationMakeDBUtil;

@WebServlet("/ReservationMakeServlet")
public class ReservationMakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String doctorName = request.getParameter("doctorName");
		String specialization = request.getParameter("specialization");
		String hospital = request.getParameter("hospital");
		String day = request.getParameter("day");
		String time = request.getParameter("time");
		String patientName = request.getParameter("patientName");
		String phoneNumber = request.getParameter("phoneNumber");
		
		

		boolean isTrue;

		isTrue = ReservationMakeDBUtil.MakeReservation(doctorName, specialization, hospital, day, time, patientName,
				phoneNumber);

		if (isTrue == true) {

			List<ReservationDetails> ResDetails = ReservationMakeDBUtil.getResDetails(patientName, phoneNumber);
			request.setAttribute("ResDetails", ResDetails);

			RequestDispatcher dis = request.getRequestDispatcher("ReservationCart.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("ReservationMake.jsp");
			dis2.forward(request, response);
		}

	}

}
