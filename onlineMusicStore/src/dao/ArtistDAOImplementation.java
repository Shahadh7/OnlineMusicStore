package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Artist;
import utils.DbConnectionUtil;

public class ArtistDAOImplementation implements ArtistDAO{

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	@Override
	public List<Artist> get() {
	
		//Create references variable
		
		List<Artist> list = null;
		Artist artist = null;
		
		try {
			
			list = new ArrayList<Artist>();
			String sql = "SELECT * FROM artist";
			connection = utils.DbConnectionUtil.dbconnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			
			//process the result set
			
			while(resultSet.next()) {
				artist = new Artist();
				artist.setId(resultSet.getInt("artist_id"));
				artist.setName(resultSet.getString("artist_name"));
				artist.setGenre(resultSet.getString("artist_genre"));
				artist.setSex(resultSet.getString("artist_sex"));
				artist.setNoOfSongs(resultSet.getInt("artist_no_of_songs"));
				
				// add artist to the list 
				list.add(artist);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
