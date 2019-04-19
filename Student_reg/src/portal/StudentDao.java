package portal;
import java.sql.*;

import portal.Student;
import portal.StudentDao;

public class StudentDao 
{
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

	public static int save(Student obj)
	{
		int status=0;
		try{
			Connection con=StudentDao.getConnection();
			PreparedStatement ps=con.prepareStatement ("insert into Students_Info "+" (Student_Name,Password,Email,Address,Contact_no,Registration_Date, Guardian_Name, Mop,Course ) values (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, obj.getStudent_Name());
			ps.setString(2, obj.getPassword());
			ps.setString(3, obj.getEmail());
			ps.setString(4, obj.getAddress());
			ps.setString(5, obj.getContact_no());
			ps.setString(6, obj.getRegistration_Date());
			ps.setString(7, obj.getGuardian_Name());
			ps.setString(8, obj.getMop());
			ps.setString(9, obj.getCourse());
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception ex){ex.printStackTrace();}
		return status;
	}
}