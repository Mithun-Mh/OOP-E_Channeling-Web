package channel.Timetable;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminTimetableUpdateServlet")
public class AdminTimetableUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Id = request.getParameter("Id");
		String DoctorId = request.getParameter("doctorId");
		String DoctorName = request.getParameter("doctorName");
		String Specialization = request.getParameter("specialization");
		String Hospital = request.getParameter("hospital");
		String Day = request.getParameter("day");
		String Time = request.getParameter("time");
		
		boolean isTrue;
		
		isTrue = TimeTableDBUtil.DoctorUpdate(Id, DoctorId,  DoctorName,  Specialization,  Hospital,  Day,  Time);
		
		if(isTrue == true) {
			
			List<DocList> timeDetails = TimeTableDBUtil.getUpdateDetails(Id);
			request.setAttribute("timeDetails", timeDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TimeTable.jsp");
			dis.forward(request, response);
		}
		else {
			List<DocList> timeDetails = TimeTableDBUtil.getUpdateDetails(Id);
			request.setAttribute("timeDetails", timeDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminTimetableUpdate.jsp");
			dis.forward(request, response);
		}

	}
}
