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
@WebServlet("/Register")
public class registrationcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String FNAME =request.getParameter("FNAME");
		String LNAME =request.getParameter("LNAME");
		String EMAIL =request.getParameter("EMAIL");
		String PHONE=request.getParameter("PHONE");
		String UNAME =request.getParameter("UNAME");
		String PASS =request.getParameter("PASS");
		RequestDispatcher dis=null;
		Connection con=null;

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","12345");
				PreparedStatement pst=con.prepareStatement("insert into users(FNAME,LNAME,EMAIL,PHONE,UNAME,PASS) VALUES(?,?,?,?,?,?)");
				pst.setString(1, FNAME);
				pst.setString(2, LNAME);
				pst.setString(3, EMAIL);
				pst.setString(4, PHONE);
				pst.setString(5, UNAME);
				pst.setString(6, PASS);
				int rowCount=pst.executeUpdate();
				dis=request.getRequestDispatcher("registersuccess.html");
				if(rowCount > 0)
				{
					request.setAttribute("Status", "Sucess");
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
