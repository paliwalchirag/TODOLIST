package springproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import springproject.model.User;
import springproject.service.UserService;

@Controller
public class IndexController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/home")
	public String home() {
		return "hindex";
	}
	
//	@RequestMapping(path="/tablee" ,method=RequestMethod.POST)
//	public String tablee(@ModelAttribute User user,Model model) {
//		this.userService.createUser(user);
//		List<User> users=userService.getAll(user);
//		model.addAttribute("users",users);
//		return "todolist";
//	}
	
	@RequestMapping(path="/tablee",method=RequestMethod.POST)
	public RedirectView worklist(@ModelAttribute User user,HttpServletRequest request) {
		this.userService.createUser(user);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/dashboard");
		return redirectView;
	}
	
	@RequestMapping("/dashboard")
	public String todolists(@ModelAttribute User user,Model model) {
		List<User> users=userService.getAll(user);
		model.addAttribute("users",users);
		return "todolist";
	}
	
	//delete handler
	@RequestMapping("/delete/{userId}")
	public RedirectView deleteUser(@PathVariable("userId") int userId,HttpServletRequest request) {
		this.userService.userDelete(userId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/dashboard");
		return redirectView;
	}
	
	@RequestMapping("/update/{userId}")
	public String editData(@PathVariable("userId") int userId,Model modele) {
		User u = this.userService.getUser(userId);
		modele.addAttribute("us",u);
		return "updateform";
	}

}
