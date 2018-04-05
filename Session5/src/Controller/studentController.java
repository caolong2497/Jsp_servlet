package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

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
		String type=request.getParameter("type");
		if("update".equals(type)){
			Student student=studentdao.getStudentByID(studentid);
			request.setAttribute("student", student);
			request.getRequestDispatcher("updatesv").forward(request, response);
			return;
		}
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
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String type=request.getParameter("type");
		boolean sex=false;
		if(gender=="1"){
			sex=true;
		}
		String birthday =request.getParameter("birthday");
		if(birthday==""){
			birthday="19000101";
		}
		Date bday=null;
		try {
			bday = new SimpleDateFormat("yyyy-MM-dd").parse(birthday);
		} catch (ParseException e) {
			System.out.println("convert ngay that bai");
		}
		String address=request.getParameter("address");
		String className= request.getParameter("className");
		
		Student sv=new Student(id, name, sex, bday, address, className);
		studentDao studentdao=new DAO.studentDao();
		if("update".equals(type)){
			if(studentdao.updateStudent(sv)){
				request.setAttribute("infor","update thanh cong");
			}else{
				request.setAttribute("infor","update that bai");
			}
		}else{
			if(studentdao.createStudent(sv)){
				request.setAttribute("infor","create thanh cong");
			}else{
				request.setAttribute("infor","create that bai");
			}
		}
		request.getRequestDispatcher("information").forward(request, response);
	}

}
