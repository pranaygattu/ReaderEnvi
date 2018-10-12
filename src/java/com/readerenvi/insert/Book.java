package com.readerenvi.insert;

import java.io.InputStream;
import java.sql.Blob;

    public class Book {
	private int id;
	private String BookId;
	private String BookName;
	private String AuthorName;
	public InputStream photo;
	private String Category;
        private String Branch;
        
	public int getid() {
		return id;
	}
	public void setid(int id) {
		this.id = id;
	}
	public String getBookId(){
		return BookId;
	}
	public void setBookId(String BookId){
		this.BookId = BookId;
	}
	public String getBookName() {
		return BookName;
	}
	public void setBookName(String BookName) {
		this.BookName = BookName;
	}
	public String getAuthorName() {
		return AuthorName;
	}
	public void setAuthorName(String AuthorName) {
		this.AuthorName = AuthorName;
	}
	public InputStream getPhoto() {
		return photo;
	}
	public void setPhoto(InputStream photo) {
		this.photo = photo;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String Category) {
		this.Category = Category;
	}
        public String getBranch(){
            return Branch;
        }
        public void setBranch(String Branch){
            this.Branch= Branch;
        }
	
}
