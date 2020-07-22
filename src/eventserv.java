

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class eventserv
 */
@WebServlet("/eventserv")
public class eventserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public eventserv() {
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
		String title=request.getParameter("title");
		String compname=request.getParameter("namecom");
		String comid=request.getParameter("idcom");
		String comdescp=request.getParameter("desp");
		String noofcol=request.getParameter("noofcol");
		String noofstud=request.getParameter("noofstd");
		
		
		new dataquery();
		String i= dataquery.events(title,compname,comid,comdescp,noofcol,noofstud);
		request.setAttribute("i", i);
		if(i=="y")
		{
			request.getRequestDispatcher("/success.jsp").forward(request,response);
		}
		
		
	}

}
