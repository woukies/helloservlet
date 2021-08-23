package examples;

import myUtil.HanConv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QueryString
 */
@WebServlet("/QueryString")
public class QueryString extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		String id = "", name = "", vclass = "", phone1 = "", phone2 = "", phone3 = "";
		id = request.getParameter("id");
		name = request.getParameter("name");
		vclass = request.getParameter("class");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");

		out.println("<html><head></head><body>");
		out.println("당신이 입력한 정보(get 방식) 입니다.<br>");
		out.println("아 이 디: <b>" + id + "</b><br>");
		out.println(" 이  름 : <b>" + HanConv.toKor(name) + "</b><br>");
		out.println(" 구  분 : <b>" + HanConv.toKor(vclass) + "</b><br>");
		out.println("전화번호: <b>" + phone1 + "-" + phone2 + "-" + phone3 + "</b><br>");
		out.println("<a href='javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
	}

}
