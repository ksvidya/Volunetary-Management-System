

import java.io.IOException;
import java.io.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class myservlet1
 */
@WebServlet("/companyregister")
public class companyregister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public companyregister() {
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
		// TODO Auto-generated method stub
		String comidkey="";
		String compname=request.getParameter("cname");
		String comid=request.getParameter("cid");
		String comemail=request.getParameter("cmail");
		String comaddress=request.getParameter("textarea1");
		
		String comcontact=request.getParameter("ccontact");
		
		
		
	
		      /*HttpSession session = request.getSession(true);	    
	          session.setAttribute(comidkey,comid); */
	          
		//System.out.println(comemail);
		
		new dataquery();
		String i= dataquery.login(compname,comid,comemail,comaddress,comcontact);
		//System.out.println("i"+i);
		request.setAttribute("i", i);
		//System.out.println("i1"+i);
		if(i=="y")
		{
			try{
			new dataquery();
			dataquery.sendmail(comemail);
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
			request.getRequestDispatcher("/companyregister.jsp").forward(request, response);
		

	}
}
