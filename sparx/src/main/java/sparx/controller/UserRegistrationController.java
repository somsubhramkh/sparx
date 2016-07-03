package sparx.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sparx.model.User;
import sparx.service.EmailService;
import sparx.service.UserService;

@Controller
public class UserRegistrationController {

	private UserService userService;
	
	@Autowired
	private EmailService emailService;
	
	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService ps) {
		this.userService = ps;
	}
	
	@RequestMapping("/Register")
	public ModelAndView index(Model m) {
		m.addAttribute("user", new User());
		ModelAndView model = new ModelAndView("Register");
		return model;
	}
	
	
	@RequestMapping(value = "/Register/add",method=RequestMethod.POST)
	public String addUser(Model model,@Valid @ModelAttribute("user") User u, BindingResult result, HttpServletRequest request) {

		
			
		String filename = null;
		byte[] bytes;
		if (!u.getProfilePicture().isEmpty()) {

			try {
				
				bytes = u.getProfilePicture().getBytes();
				u.setEnabled(true);
				u.setRole("ROLE_USER");
				userService.addUser(u);
				System.out.println("Data Inserted");
				String path = request.getSession().getServletContext().getRealPath("/resources/img/" + u.getUserId() + ".jpg");
				System.out.println("Path = " + path);
				System.out.println("File name = " + u.getProfilePicture().getOriginalFilename());
				File f = new File(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		
		if(result.hasErrors())
			return "Register";
	
		try{
			
			emailService.send(u, "Your Sparx Account Activation", "Welcome to Sparx!!!!!");
			}catch(MessagingException mse)
			{
				mse.printStackTrace();
			}
			
		return "redirect:/";
		
	
		//}
	
	
	}
}