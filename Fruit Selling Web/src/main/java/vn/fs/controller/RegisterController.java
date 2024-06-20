package vn.fs.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.fs.entities.Role;
import vn.fs.entities.User;
import vn.fs.repository.UserRepository;
import vn.fs.service.SendMailService;

@Controller
public class RegisterController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	SendMailService sendMailService;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	HttpSession session;

	@GetMapping("/register")
	public ModelAndView registerForm(ModelMap model) {
		model.addAttribute("user", new User());
		return new ModelAndView("web/register", model);
	}

	@PostMapping("/register")
	public String register(ModelMap model, @Validated @ModelAttribute("user") User dto, BindingResult result,
			@RequestParam("password") String password) {
		if (result.hasErrors()) {
			return "web/register";
		}
		if (!checkEmail(dto.getEmail())) {
			model.addAttribute("error", "This email has been registered!");
			return "web/register";
		}
		session.removeAttribute("otp");
		int random_otp = (int) Math.floor(Math.random() * (999999 - 100000 + 1) + 100000);
		session.setAttribute("otp", random_otp);
		String body = "<div>\r\n" + "<h3>Your OTP verification code is: <span style=\"color:#119744; font-weight: bold;\">"
				+ random_otp + "</span></h3>\r\n" + "</div><p style=\"font-family: Arial, sans-serif; font-weight: 700; color: grey;\">"
						+ "This is a system mail, please do not reply!</p>";
		sendMailService.queue(dto.getEmail(), "Sign up for an account", body);

		model.addAttribute("user", dto);
		model.addAttribute("message", "OTP verification code has been sent to email \"" + dto.getEmail() + "\", please check your inbox!");

		return "/web/confirmOtpRegister";
	}

	@PostMapping("/confirmOtpRegister")
	public ModelAndView confirmRegister(ModelMap model, @ModelAttribute("user") User dto,
			@RequestParam("password") String password, @RequestParam("otp") String otp) {
		if (otp.equals(String.valueOf(session.getAttribute("otp")))) {
			dto.setPassword(bCryptPasswordEncoder.encode(password));
			dto.setRegisterDate(new Date());
			dto.setStatus(true);
			dto.setAvatar("user.png");
			dto.setRoles(Arrays.asList(new Role("ROLE_USER")));
			userRepository.save(dto);

			session.removeAttribute("otp");
			model.addAttribute("message", "Sign up successfully");
			return new ModelAndView("web/login");
		}

		model.addAttribute("user", dto);
		model.addAttribute("error", "OTP verification code is incorrect, please try again!");
		return new ModelAndView("web/confirmOtpRegister", model);
	}

	// check email
	public boolean checkEmail(String email) {
		List<User> list = userRepository.findAll();
		for (User c : list) {
			if (c.getEmail().equalsIgnoreCase(email)) {
				return false;
			}
		}
		return true;
	}

}
