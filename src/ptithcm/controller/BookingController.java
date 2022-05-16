package ptithcm.controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class BookingController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "booking", method = RequestMethod.GET)
	public String showForm() {
		return "booking/booking";
	}
}
