package ptithcm.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import ptithcm.entity.PlaneEntity;


@Transactional
@Controller
@RequestMapping("/admin/")
public class PlaneController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value = "plane", method = RequestMethod.POST)
	public String insert(HttpServletRequest request, ModelMap model, @ModelAttribute("plane") PlaneEntity plane) {
		Integer temp = this.insertPlane(plane);
		if(temp != 0) {
			model.addAttribute("message","Thêm mới thành công");
			plane.setAirline(null);
			plane.setAirport(null);
			plane.setDepartFrom(null);
			plane.setDestination(null);
			plane.setFlighttime(null);
			plane.setIdplane(null);
		}else {
			model.addAttribute("message","Thêm mới thất bại");
		}
		List<PlaneEntity> planes = this.getPlanes();
		model.addAttribute("plane", planes);
		return "admin/index";
	}
	
	public Integer insertPlane(PlaneEntity plane) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(plane);
			t.commit();			
		}
		catch (Exception e) {
			t.rollback();
			return 0;			
		}
		finally {
			session.close();
		}
		return 1;
	}
	
	@RequestMapping(value = "plane/{idplane}.htm", params = "linkDelete")
	public String deleteRecord (HttpServletRequest request, ModelMap model, @ModelAttribute("plane") PlaneEntity plane,
			@PathVariable("idplane") String idplane) {
		Integer temp = this.deleteRecord(this.getPlane(idplane));
		List<PlaneEntity> planes = this.getPlanes();
		model.addAttribute("planes", planes);	
		if(temp != 0) {
			model.addAttribute("message","Delete thành công");
		}
		else {
			model.addAttribute("message", "Delete không thành công");
		}
		return "admin/index";
	}
	public Integer deleteRecord (PlaneEntity plane) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.delete(plane);
			t.commit();
		}
		catch (Exception e){
			t.rollback();
			return 0;
		}
		finally{
			session.close();
		}
		return 1;
	}
	
	public static Date temp_date;
	public static String temp_id;
	@RequestMapping(value = "plane/{idplane}", params = "linkEdit" )
	public String editPlane (HttpServletRequest request, ModelMap model, @ModelAttribute("plane") PlaneEntity plane, 
			@PathVariable("idplane") String idplane) {
		temp_id = idplane;
		temp_date = this.getPlane(idplane).getFlighttime();
		List<PlaneEntity> planes = this.getPlanes();
		model.addAttribute("planes", planes);
		model.addAttribute("plane", this.getPlane(idplane));
		return "admin/index";
	}

	@RequestMapping(value = "plane", params = "btnupdate")
	public String edit_Record(HttpServletRequest request, ModelMap model, 
			@ModelAttribute("plane") PlaneEntity plane) {
		plane.setFlighttime(temp_date);
		plane.setIdplane(temp_id);
		Integer temp = this.updatePlane(plane);
		if( temp != 0) {
			model.addAttribute("message", "Cập nhật thành công");
			plane.setAirline(null);
			plane.setAirport(null);
			plane.setDepartFrom(null);
			plane.setDestination(null);
			plane.setFlighttime(null);
			plane.setIdplane(null);
		}
		else {
			model.addAttribute("message", "Cập nhật không thành công");
		}
		List<PlaneEntity> planes = this.getPlanes();
		model.addAttribute("planes", planes);
		return "admin/index";
	}
	
	public Integer updatePlane(PlaneEntity plane) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.update(plane);
			t.commit();
		}
		catch (Exception e) {
			t.rollback();
			return 0;
		}
		finally {
			session.close();
		}
		return 1;
	}
	
	
	public PlaneEntity getPlane (String idplane) {
		Session session = factory.getCurrentSession();
		String hql = "FROM PlaneEntity where idplane =:idplane";
		Query query = session.createQuery(hql);
		query.setParameter("idplane", idplane);
		PlaneEntity list = (PlaneEntity) query.list().get(0);
		return list;
	}
	
	public List<PlaneEntity> getPlanes(){
		Session session = factory.getCurrentSession();
		String hql = "FROM PlaneEntity";
		Query query = session.createQuery(hql);
		List<PlaneEntity> list = query.list();
		return list;
	}
	
}
