package channel.Timetable;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminTimetableDeleteServlet")
public class AdminTimetableDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Id");
		boolean isTrue;
		
		isTrue = TimeTableDBUtil.DocDetailsDelete(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("TimeTable.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<DocList> timeDetails = TimeTableDBUtil.getUpdateDetails(id);
			request.setAttribute("timeDetails", timeDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminTimetableDelete.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}
}
