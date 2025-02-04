package org.signup;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		
		Connection con;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	        con =DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata","root","");
	        
	        String query = "INSERT INTO  users (username,email,password,confirmpassword)values(?,?,?,?)";
	        
	        PreparedStatement statement = con.prepareStatement(query);
	        statement.setString(1,username);
	        statement.setString(2,email);
	        statement.setString(3,password);
	        statement.setString(4, confirmpassword);
	        statement.executeUpdate();
	        
	        con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		request.getRequestDispatcher("LoginPage.jsp").forward(request,response);
	}

}
