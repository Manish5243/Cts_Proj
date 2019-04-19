package portal;

import java.sql.*;

import portal.Exam_Schedule;
import portal.Exam_ScheduleDao;

public class Exam_ScheduleDao {
	
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		}
		catch(Exception e)
		{System.out.println(e);}
		return con;
	}

	public static int save(Exam_Schedule obj)
	{
		int status=0;
		try{
			Connection con=Exam_ScheduleDao.getConnection();
			PreparedStatement ps=con.prepareStatement ("insert into Exam_Schedule "+" (Course,Semester,Start_Date,End_Date) values (?,?,?,?)");
			ps.setString(1, obj.getCourse());
			ps.setString(2, obj.getSemester());
			ps.setString(3, obj.getStart_Date());
			ps.setString(4, obj.getEnd_Date());
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception ex){ex.printStackTrace();}
		return status;
	}

}
