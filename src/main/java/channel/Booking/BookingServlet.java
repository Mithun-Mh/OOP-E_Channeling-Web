package channel.Booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import channel.Booking.BookingDBUtill;
import channel.Timetable.DocList;

@WebServlet("/TicketBookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String DR_NAME = request.getParameter("DR_NAME");
		String SPECIALIZATION = request.getParameter("SPECIALIZATION");
		String HOSPITAL = request.getParameter("HOSPITAL");

		try {
			List<DocList> jouDetails = BookingDBUtill.validate(DR_NAME, SPECIALIZATION, HOSPITAL);
			request.setAttribute("jouDetails", jouDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("SearchResult.jsp");
		dis.forward(request, response);

	}

}
