

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class volunteer
 */
@WebServlet("/compvolunteerregister")
public class compvolunteerregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public compvolunteerregister() {
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
		// TODO Auto-generated method stub
		String compname=request.getParameter("vname");
		String comid=request.getParameter("vid");
		String volcomid=request.getParameter("vcid");
		String comemail=request.getParameter("vemail");
		String comaddress=request.getParameter("textarea1");
		
		String comcontact=request.getParameter("vcontact");
		
		
		new dataquery();
		String i= dataquery.volreg(compname,comid,volcomid,comemail,comaddress,comcontact);
		request.setAttribute("i", i);
		if(i=="y")
		{
			request.getRequestDispatcher("/companyui.jsp").forward(request,response);
		}
		else
			request.getRequestDispatcher("/volregister.jsp").forward(request, response);
		
	}

}
