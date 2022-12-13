package booking;

import java.io.IOException;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addflightsservlet
 */
@WebServlet("/Add flight")
public class addflightsservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String FID =request.getParameter("FID");
		String FROM_PLACE =request.getParameter("FROM_PLACE");
		String TO_PLACE =request.getParameter("TO_PLACE");
		String DATE=request.getParameter("DATE");
		String FARE =request.getParameter("FARE");
		String SEATS =request.getParameter("SEATS");
		String BOARDING_TIME =request.getParameter("BOARDING_TIME");
		RequestDispatcher dis=null;
		Connection con=null;
		HttpSession sn=request.getSession();
		int rowCount=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","12345");
			PreparedStatement pst=con.prepareStatement("insert into flight_details(FID,FROM_PLACE,TO_PLACE,DATE,FARE,SEATS,BOARDING_TIME) VALUES(?,?,?,?,?,?,?)");
			pst.setString(1, FID);
			pst.setString(2, FROM_PLACE);
			pst.setString(3, TO_PLACE);
			pst.setString(4, DATE);
			pst.setString(5, FARE);
			pst.setString(6, SEATS);
			pst.setString(7, BOARDING_TIME);
			rowCount=pst.executeUpdate();
			System.out.println(rowCount);
			if(rowCount > 0)
			{
				dis=request.getRequestDispatcher("flightadded.jsp");
			}
			else {
				dis=request.getRequestDispatcher("flightaddfail.jsp");
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
