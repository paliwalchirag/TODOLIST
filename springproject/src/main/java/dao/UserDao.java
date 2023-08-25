package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import springproject.model.User;

@Repository
public class UserDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void saveUser(User user) {
		this.hibernateTemplate.saveOrUpdate(user);
		
	}
	
	
	public List<User> getUser(User user){
		List<User> users = this.hibernateTemplate.loadAll(User.class);
		return users;
	}
	
	@Transactional
	public void deleteUser(int id) {
		User u=this.hibernateTemplate.load(User.class, id);
		this.hibernateTemplate.delete(u);
	}
	
	
	public User single(int id) {
		return this.hibernateTemplate.get(User.class, id);
	}
	
	

}
