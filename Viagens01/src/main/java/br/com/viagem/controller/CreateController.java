package br.com.viagem.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.viagem.dao.ClienteDAO;
import br.com.viagem.model.Cliente;




@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Cliente client = new Cliente();
		
		client.setNome(req.getParameter("nome"));
		client.setCpf(Integer.parseInt(req.getParameter("cpf")));
		client.setTelefone(Integer.parseInt(req.getParameter("telefone")));
		client.setEmail(req.getParameter("email"));
		client.setSenha(req.getParameter("senha"));
		
		try {
			ClienteDAO clienteDAO = new ClienteDAO();
			clienteDAO.criarCliente(client);
			
			
			res.sendRedirect("ReadController");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
	}

}
