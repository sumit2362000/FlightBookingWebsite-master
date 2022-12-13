package booking;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registrationservlet
 */
@WebServlet("/passenger")
public class seatbookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String FID =request.getParameter("FID");
		String SEATNO =request.getParameter("SEATNO");
		String FNAME =request.getParameter("FNAME");
		String LNAME =request.getParameter("LNAME");
		String EMAIL =request.getParameter("EMAIL");
		String PHONE=request.getParameter("PHONE");
		String ADHARNO =request.getParameter("ADHARNO");
		String FARE =request.getParameter("FARE");
		RequestDispatcher dis=null;
		Connection con=null;

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","12345");
				PreparedStatement pst=con.prepareStatement("insert into travelers(FID,SEATNO,FNAME,LNAME,EMAIL,PHONE,ADHARNO,FARE) VALUES(?,?,?,?,?,?,?,?)");
				pst.setString(1, FID);
				pst.setString(2, SEATNO);
				pst.setString(3, FNAME);
				pst.setString(4, LNAME);
				pst.setString(5, EMAIL);
				pst.setString(6, PHONE);
				pst.setString(7, ADHARNO);
				pst.setString(8, FARE);
				int rowCount=pst.executeUpdate();
				
				if(rowCount > 0)
				{
					request.setAttribute("Status", "Sucess");
					dis=request.getRequestDispatcher("payment.jsp");
				}
				else {
					request.setAttribute("Status", "Failed");
				}
                dis.forward(request, response);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally
			{
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

	}}
