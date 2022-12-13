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

/**
 * Servlet implementation class transactions
 */
@WebServlet("/payment")
public class transactions extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String CARDNAME =request.getParameter("CARDNAME");
		String CARDNO =request.getParameter("CARDNO");
		String AMOUNT =request.getParameter("AMOUNT");
		RequestDispatcher dis=null;
		Connection con=null;

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","12345");
				PreparedStatement pst=con.prepareStatement("insert into transactions(CARDNAME,CARDNO,AMOUNT) VALUES(?,?,?)");
				pst.setString(1, CARDNAME);
				pst.setString(2, CARDNO);
				pst.setString(3, AMOUNT);
				int rowCount=pst.executeUpdate();
				dis=request.getRequestDispatcher("FID.jsp");
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

	}

}
