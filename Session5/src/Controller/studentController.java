package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.studentDao;
import Entities.Student;

/**
 * Servlet implementation class studentController
 */
@WebServlet("/studentController")
public class studentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		studentDao studentdao=new studentDao();
		
		String studentid = request.getParameter("id");
		if(studentid==null||studentid==""){
			ArrayList<Student> listStudent=studentdao.getAllStudent();
			request.setAttribute("listStudent", listStudent);
			request.getRequestDispatcher("dssinhvien").forward(request, response);
		}else{
			Student student=studentdao.getStudentByID(studentid);
			request.setAttribute("student", student);
			request.getRequestDispatcher("detailsv").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
