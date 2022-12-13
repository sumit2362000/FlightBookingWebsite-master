package booking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminloginservletfile
 */
@WebServlet("/adminlogin")
public class adminloginservletfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String UNAME=request.getParameter("UNAME");
		String PASS=request.getParameter("PASS");
		HttpSession sn=request.getSession();
		RequestDispatcher dis=null;
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking?useSSL=false","root","12345");
		PreparedStatement pst=con.prepareStatement("select * from admins where UNAME=? and PASS=?");
		pst.setString(1, UNAME);
		pst.setString(2, PASS);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
			sn.setAttribute("UNAME", rs.getString("UNAME"));
			dis=request.getRequestDispatcher("Adminloginhome.jsp");
		}
		else {
			sn.setAttribute("Status", "failed");
			dis=request.getRequestDispatcher("adminfail.jsp");
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
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
	}
	


