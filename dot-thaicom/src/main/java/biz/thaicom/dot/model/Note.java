package biz.thaicom.dot.model;

public class Note {
	private Integer id;
	
	private String description;
	
	private String title;

	
	
	public Note(Integer id, String title, String description) {
		super();
		this.id = id;
		this.description = description;
		this.title = title;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
