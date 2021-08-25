package examples;

import myUtil.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class multiPara
 */
@WebServlet("/multiPara")
public class multiPara extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		String[] items;
		items = request.getParameterValues("item");
		out.print("���õ� �׸��� ");
		try {
			for (int i = 0; i < items.length; i++) {
				out.print(" : " + HanConv.toKor(items[i]));
			}
			out.println("�Դϴ�.");
		} catch (Exception e) {
			out.println("�����ϴ�.");
		}
	}
}
