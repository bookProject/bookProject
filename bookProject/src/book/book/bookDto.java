package book.book;

public class bookDto {
	private String no, title, description, pubDate, coverLargeUrl, publisher, author, translator;
	private int categoryId, priceStandard, priceEbook;
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPubDate() {
		return pubDate;
	}
	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}
	public String getCoverLargeUrl() {
		return coverLargeUrl;
	}
	public void setCoverLargeUrl(String coverLargeUrl) {
		this.coverLargeUrl = coverLargeUrl;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTranslator() {
		return translator;
	}
	public void setTranslator(String translator) {
		this.translator = translator;
	}
	public int getPriceStandard() {
		return priceStandard;
	}
	public void setPriceStandard(int priceStandard) {
		this.priceStandard = priceStandard;
	}
	public int getPriceEbook() {
		return priceEbook;
	}
	public void setPriceEbook(int priceEbook) {
		this.priceEbook = priceEbook;
	}
}
