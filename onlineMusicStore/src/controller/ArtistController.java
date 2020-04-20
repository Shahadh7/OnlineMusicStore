package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArtistDAO;
import dao.ArtistDAOImplementation;
import model.Artist;


@WebServlet("/ArtistController")
public class ArtistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	ArtistDAO artistDAO = null;
	
	public ArtistController(){
		artistDAO = new ArtistDAOImplementation();
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// call DAO method to get the list of Artist
		List<Artist> list = artistDAO.get();
		
		// Add artist to request object
		request.setAttribute("list",list);
		
		// get the request dispatchar
		RequestDispatcher dispatcher = request.getRequestDispatcher("/artistMain.jsp");
		
		// forward the request and response object
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
