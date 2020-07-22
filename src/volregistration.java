import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet implementation class redirection1
 */
@WebServlet("/volregistration")
public class volregistration extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 String Fname = request.getParameter("firstname");    
         String Lname = request.getParameter("lastname");  
         String Mobno = request.getParameter("phno");  
         String Address = request.getParameter("addr"); 
         String Emailid = request.getParameter("email");
         String type = request.getParameter("type");
         String Skillset = request.getParameter("skillset");
         
         String username = request.getParameter("username");
         System.out.println(username);
        // String password = request.getParameter("password");
         //System.out.println(password);
         request.setAttribute("Emailid", Emailid);
         
         /*HttpSession sess = request.getSession(); 
         sess.setAttribute("username", username);
         sess.setAttribute("password", password);
         */
         
         new dataquery(); 
         int i=dataquery.register_vol(Fname,Lname,Mobno,Address,Emailid,type,Skillset,username);
         request.setAttribute("i",i);
         if(i!=0){
        	 try{
     			new dataquery();
     			dataquery.sendmail(Emailid);
     			System.out.println("mail sent");
     			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
     			rd.forward(request, response);
     			}
     			catch(Exception e)
     			{
     				System.out.println(e);
     			}
         }
         else
         request.getRequestDispatcher("/generalregister.jsp").forward(request, response);

     
}
}


