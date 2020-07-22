
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class registration
 */
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public registration() {
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
		String clgname=request.getParameter("coname");
		String clgid=request.getParameter("coid");
		String clgmail=request.getParameter("coemail");
		String clginfo=request.getParameter("coinfo");
		String password=request.getParameter("password");
		String i=new dataquery().register_clg(clgname,clgid,clgmail,clginfo,password);
		request.setAttribute("i", i);
		if(i=="y")
		{
			new dataquery().sendmail1(clgid,password,clgmail);
			System.out.println("mail sent");
		request.getRequestDispatcher("/event1.jsp").forward(request,response);
		
		}
		else
			request.getRequestDispatcher("/index.jsp").forward(request,response);
			

}
}
