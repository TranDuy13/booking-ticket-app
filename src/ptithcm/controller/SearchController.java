package ptithcm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.PlaneEntity;
import ptithcm.entity.TicketEntity;

@Controller
@Transactional
public class SearchController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "searchTicket", method = RequestMethod.POST)
	public String getPl(HttpServletRequest request, ModelMap model, @ModelAttribute("ticketsss") TicketEntity ticket) {
		String des = request.getParameter("destination");
		String dep = request.getParameter("departFrom");
		Boolean type = true;
		System.out.println(des);
		Boolean stt = true;
		List<TicketEntity> list = this.getPlanes(des, dep, type, stt);
		int n = list.size();
        for (int i = 1; i < n; i++) {
				if(list.get(0).getPlane().getIdplane().equals(list.get(i).getPlane().getIdplane())){
					
					list.remove(i);
					--n;
					--i;
				}	
       
        }	
        Date date = new Date();
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String  strDate = formatter.format(date);
        model.addAttribute("a", strDate);
        
	
		model.addAttribute("ticketsss", list);
			
		return "search/search";
	}

	@RequestMapping(value = "searchTicket", method = RequestMethod.GET)
	public String getPl() {
		return "search/search";
	}

	public List<TicketEntity> getPlanes(String destination, String departFrom, Boolean typeticket, Boolean stt) {
		Session session = factory.getCurrentSession();
		String hql = "From TicketEntity P where P.typeticket = :typeticket and P.stt = :stt and P.plane.destination = :destination "
				+ "and P.plane.departFrom = :departFrom";
		Query query = session.createQuery(hql);
		query.setParameter("destination", destination);
		query.setParameter("departFrom", departFrom);
		query.setParameter("typeticket", typeticket);
		query.setParameter("stt", stt);
		List<TicketEntity> list = query.list();
		return list;

	}
}
