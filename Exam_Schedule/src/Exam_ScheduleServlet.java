import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portal.Exam_Schedule;
import portal.Exam_ScheduleDao;

@WebServlet("/Exam_ScheduleServlet")
public class Exam_ScheduleServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String Course = request.getParameter("Course");
		String Semester = request.getParameter("Semester");
		String Start_Date = request.getParameter("Start_Date");
		String End_Date = request.getParameter("End_Date");
		Exam_Schedule obj=new Exam_Schedule();
		obj.setCourse(Course);
		obj.setSemester(Semester);
		obj.setStart_Date(Start_Date);
		obj.setEnd_Date(End_Date);

		int n =Exam_ScheduleDao.save(obj);
		if(Semester.isEmpty()||Course.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("Exam_Schedule.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			req.include(request, response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("Exam_Schedule1.jsp");
			req.forward(request, response);
		}

	}
}