/**
 * 
 */
package com.project.GroupF.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.GroupF.Beans.LoginBean;
import com.project.GroupF.Dao.LoginDao;

/**
 * @author Shilpy Nanda
 *
 */

@Controller
public class LoginController {
	
	@Autowired
	LoginDao loginDao;// will inject dao from xml file
	
	@RequestMapping("/LoginBean")
	public String showform(Model m) {
		m.addAttribute("command", new LoginBean());
		return "index";
	}
	
	//Employee
	@RequestMapping(value = "/clientDetails", method = RequestMethod.POST)
	public String loginEmployee(@ModelAttribute("loginBean") LoginBean loginBean) {
		if (loginDao.LoginEmployee(loginBean)) {
			
			return "clientDetails";
		} else {
			return "redirect:/LoginBean";
		}
	}
	

	//Client
	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	public String loginClient(@ModelAttribute("loginBean") LoginBean loginBean) {
		if (loginDao.LoginClient(loginBean)) {
			
			return "dashboard";
		} else {
			return "redirect:/LoginBean";
		}
	}
}
