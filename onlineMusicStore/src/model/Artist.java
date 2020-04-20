package model;

public class Artist {
	
	
	//define the fields
	
	private Integer id;
	
	private String name;
	
	private String sex;
	
	private String genre;
	
	private Integer noOfSongs;

	
	// getters and setters for Artist
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Integer getNoOfSongs() {
		return noOfSongs;
	}

	public void setNoOfSongs(Integer noOfSongs) {
		this.noOfSongs = noOfSongs;
	}
	
	
	// toString method for Artist

	@Override
	public String toString() {
		return "Artist [id=" + id + ", name=" + name + ", sex=" + sex + ", genre=" + genre + ", noOfSongs=" + noOfSongs
				+ "]";
	}
	
	
	

}
