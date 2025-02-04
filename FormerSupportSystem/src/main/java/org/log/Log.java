package org.log;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 * Servlet implementation class Log
 */
@WebServlet("/Log")
public class Log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Log() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("pls use the POST methode to login.");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Successfully Logined");
		
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Connection con;
        String dbuser = "null";
        String dbpassword = "null";
        
		try {
		
            
            Class.forName("com.mysql.cj.jdbc.Driver");
           con =DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata","root","");
           
           String query = "SELECT * from users where username='"+username+"' and password='"+password+"'";
           
           PreparedStatement statement = con.prepareStatement(query);
           ResultSet executeQuery = statement.executeQuery();
           
           while(executeQuery.next()) {
        	   dbuser = executeQuery.getString("username");
        	   dbpassword = executeQuery.getString("password");
           }
           
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		if(username.equals(dbuser) && password.equals(dbpassword)) {
			System.out.println("valid credentials..!");
			
			request.setAttribute("dbuser", username);
			request.getRequestDispatcher("HomePage.jsp").forward(request,response);
			
		}else {
			System.out.println("Invalid credentials..!");
			request.getRequestDispatcher("ErrorPage.jsp").forward(request,response);

		}
		

	}

}
