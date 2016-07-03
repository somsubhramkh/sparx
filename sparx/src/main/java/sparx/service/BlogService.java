package sparx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sparx.dao.BlogDAO;
import sparx.model.Blog;



@Service
public class BlogService {

	@Autowired
	private BlogDAO blogDAO;

	public void setBlogDAO(BlogDAO u) {
		this.blogDAO = u;
	}

	@Transactional
	public void addBlog(Blog b) {
		blogDAO.addBlog(b);
	}

	
	@Transactional
	public List<Blog> listBlogs() {
		return blogDAO.listBlogs();
	}

}
