package br.com.viagem.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.viagem.dao.ClienteDAO;
import br.com.viagem.model.Cliente;



@WebServlet("/ReadController")
public class ReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		try {
			ClienteDAO cDAO = new ClienteDAO();
			List<Cliente> clients = cDAO.listarClientes();
			req.setAttribute("clients", clients);
			
			RequestDispatcher rd = req.getRequestDispatcher("clientes.jsp");
			rd.forward(req, res);

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

}
