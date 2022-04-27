package feedbackpack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import contactpack.ContactDao;
import contactpack.Contactmember;

/**
 * Servlet implementation class Feedback
 */
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
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
String contact_nom=request.getParameter("contact_nom");
		
		String contact_email=request.getParameter("contact_email");
		
		String contact_sujet=request.getParameter("contact_sujet");
		String contact_message=request.getParameter("contact_message");
		RequestDispatcher rd=request.getRequestDispatcher("adminhome.jsp");  
		
        rd.forward(request, response);  
		System.out.println("sasiiii");
		Feedbackpojo fmember=new Feedbackpojo(contact_nom,  contact_email, contact_sujet,contact_message);
		FeedbackDao rDao=new FeedbackDao();
		String result=rDao.insert(fmember);
		response.getWriter().print(result);
	}

}
