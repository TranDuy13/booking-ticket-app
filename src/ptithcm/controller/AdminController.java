package ptithcm.controller;


import java.util.Date;
import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.AdminEntity;
@Controller
@RequestMapping("/admin/")
@Transactional
public class AdminController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("index")

	public String index(ModelMap model) {
		if(LoginController.admin.getUsername()==null) {
			return "login/login";
		}
		Session session = factory.getCurrentSession();
		String hql = "FROM AdminEntity";
		Query query = session.createQuery(hql);
		List<AdminEntity> list = query.list();
		model.addAttribute("staffs", list);
		return "admin/index";
	}
}
