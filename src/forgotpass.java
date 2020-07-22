

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class forgotpass
 */
@WebServlet("/forgotpass")
public class forgotpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotpass() {
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
		
		String remail = request.getParameter("email");
		new dataquery(); 
        String i=dataquery.forgot_password(remail);
        System.out.println(i);
        //request.setAttribute("i",i);
        if(i.equals("y")){
        	//System.out.println("loop enter");
        	request.setAttribute("Emailid", remail);
        	request.getRequestDispatcher("/mail.jsp").forward(request,response);
       	 }
        else
        {
        	System.out.println("Check your email id again,Or you don't have any account!");
        }
        }

	}


