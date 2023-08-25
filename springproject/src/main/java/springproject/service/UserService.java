package springproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import springproject.model.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public void createUser(User user) {
		this.userDao.saveUser(user);
	}
	
	public List<User> getAll(User user){
		return this.userDao.getUser(user);
	}
	
	public void userDelete(int id) {
		this.userDao.deleteUser(id);
	}
	
	public User getUser(int id) {
		return this.userDao.single(id);
	}

}
