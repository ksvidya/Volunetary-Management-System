

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class changepass
 */
@WebServlet("/changepass")
public class changepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String email = request.getParameter("email");    

		String cpassword = request.getParameter("cpassword");    
		String npassword = request.getParameter("npassword");  
		String n1password = request.getParameter("n1password");  
System.out.println(cpassword);
System.out.println(npassword);
System.out.println(n1password);

		//Statement st = (Statement) con.createStatement();
		new dataquery(); 
        int i=dataquery.change_pass(cpassword,npassword,n1password,email);
        if(i==1)
        {
        	request.setAttribute("alertMsg", "Password changed successfully");
        	RequestDispatcher rd=request.getRequestDispatcher("/changepass.jsp");
        	rd.include(request, response);
        }
		// TODO Auto-generated method stub
	}

}
