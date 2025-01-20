package channel.Timetable;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import channel.DBConnect.DBConnect;
import channel.Timetable.DocList;


public class TimeTableDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<DocList> getTimetable(){
		
		ArrayList<DocList> td= new ArrayList<>();
		
		try {
			while(rs.next()) {
				int id = rs.getInt(1);
				String doctorId = rs.getString(2);
				String doctorName = rs.getString(3);
				String specialization = rs.getString(4);
				String hospital = rs.getString(5);
				String day = rs.getString(6);
				String time = rs.getString(7);
				
			
				DocList c = new DocList(id,doctorId,doctorName,specialization,hospital,day,time);
				td.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return td;
		
		
	}

	public static boolean validate(String from, String to, String day){
		
		
		//validate
		
		try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from timetable where fromT ='"+from+"' and toT='"+to+"' and dayT='"+day+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static List<DocList> getSearchTimetable(String from, String to, String day) {
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from timetable where fromT ='"+from+"' and toT='"+to+"' and dayT='"+day+"'";
			rs = stmt.executeQuery(sql);
			
	
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		
		return getTimetable();	
	
	}
	

	public static boolean DoctorInsert(String DoctorId, String DoctorName, String Specialization, String Hospital, String Day, String Time) {		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Insert into doctordetails values (0,'"+DoctorId+"','"+DoctorName+"','"+Specialization+"','"+Hospital+"','"+Day+"','"+Time+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	public static boolean DoctorUpdate(String Id, String DoctorId, String DoctorName, String Specialization, String Hospital, String Day, String Time) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update doctordetails set DoctorId='"+DoctorId+"',DoctorName='"+DoctorName+"',Specialization='"+Specialization+"',Hospital='"+Hospital+"',Day='"+Day+"',Time='"+Time+"' where Id='"+Id+"'";
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}

	public static List<DocList> getUpdateDetails(String ID) {
		
		int convertedID = Integer.parseInt(ID);
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctordetails where Id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
	
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		return getTimetable();	
	
	}
	
	public static boolean DocDetailsDelete(String id) {
    	
    	int convertedID = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from doctordetails where Id='"+convertedID+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }

	
	
}
