import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portal.Student;
import portal.StudentDao;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String Student_Name = request.getParameter("Student_Name");
		String Password = request.getParameter("Password");
		String Email = request.getParameter("Email");
		String Address = request.getParameter("Address");
		String Contact_no=request.getParameter("Contact_no");
		String Registration_Date = request.getParameter("Registration_Date");
		String Guardian_Name = request.getParameter("Guardian_Name");
		String Mop = request.getParameter("Mop");
		String Course = request.getParameter("Course");
		Student obj=new Student();
		obj.setStudent_Name(Student_Name);
		obj.setPassword(Password);
		obj.setEmail(Email);
		obj.setAddress(Address);
		obj.setContact_no(Contact_no);
		obj.setRegistration_Date(Registration_Date);
		obj.setGuardian_Name(Guardian_Name);
		obj.setMop(Mop);
		obj.setCourse(Course);

		int n =StudentDao.save(obj);
		if(Student_Name.isEmpty()||Password.isEmpty()||Email.isEmpty()||Contact_no.isEmpty()
				||Address.isEmpty()||Guardian_Name.isEmpty()||Mop.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("Student.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			req.include(request, response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("Student1.jsp");
			req.forward(request, response);
		}

	}
}