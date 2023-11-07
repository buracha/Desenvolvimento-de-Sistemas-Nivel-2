package br.com.viagem.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.viagem.dao.ClienteDAO;
import br.com.viagem.model.Cliente;



@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id_cliente = Integer.parseInt(req.getParameter("id_cliente"));
		
		
		try {
			ClienteDAO cDAO = new ClienteDAO();
			Cliente client = cDAO.buscarCliente(id_cliente);
			
			req.setAttribute("client", client);
			
			RequestDispatcher rd = req.getRequestDispatcher("atualizar.jsp");
			rd.forward(req, res);
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		try {
			Cliente client = new Cliente();		
			client.setNome(req.getParameter("nome"));
			client.setCpf(Integer.parseInt(req.getParameter("cpf")));
			client.setTelefone(Integer.parseInt(req.getParameter("telefone")));
			client.setEmail(req.getParameter("email"));
			client.setSenha(req.getParameter("senha"));
			
			
			ClienteDAO cDAO = new ClienteDAO();
			cDAO.atualizarCliente(client);
			
			res.sendRedirect("ReadController");
		} catch (Exception e) {
			
		}
		
		
		
		
	}

}
