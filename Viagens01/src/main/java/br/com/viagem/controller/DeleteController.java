package br.com.viagem.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.viagem.dao.ClienteDAO;




@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id_cliente"));
		
		try {
			ClienteDAO cDAO = new ClienteDAO();
			cDAO.deletarCliente(id);
			
			res.sendRedirect("ReadController");
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		
	}

}
