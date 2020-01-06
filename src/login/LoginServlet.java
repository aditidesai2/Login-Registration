package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "root");
			PreparedStatement ps = con.prepareStatement("select * from customer where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				pw.println("Login Successful");
				RequestDispatcher rd = request.getRequestDispatcher("dis");
				rd.forward(request, response);
			}

			else {

				pw.println("Login unsuccessful");
				RequestDispatcher rd = request.getRequestDispatcher("login.html");
				rd.include(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
