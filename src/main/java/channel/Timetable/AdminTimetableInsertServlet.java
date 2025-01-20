package channel.Timetable;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminTimetableInsertServlet")
public class AdminTimetableInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String DoctorId = request.getParameter("doctorId");
		String DoctorName = request.getParameter("doctorName");
		String Specialization = request.getParameter("specialization");
		String Hospital = request.getParameter("hospital");
		String Day = request.getParameter("day");
		String Time = request.getParameter("time");
		
		
		boolean isTrue;
				
		isTrue = TimeTableDBUtil.DoctorInsert(DoctorId,  DoctorName,  Specialization,  Hospital,  Day,  Time);
				
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("TimeTable.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
