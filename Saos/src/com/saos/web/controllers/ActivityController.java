package com.saos.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

@Controller
public class ActivityController {

	//create activity
	@RequestMapping(value = "/createActivity", method = RequestMethod.GET)
	public String createActivity(ModelMap model) {
		Activity activity = new Activity();
		model.addAttribute("activity", activity);
		return "createActivity";
	}
	
	
	//get activity details
	@RequestMapping(value ="/createActivity", method = RequestMethod.POST)
	public String getActivity(@ModelAttribute("SpringWeb")Activity activity, ModelMap model)
	{
		model.addAttribute("title", activity.getTitle());
		model.addAttribute("description", activity.getDescription());
		model.addAttribute("location", activity.getLocation());
		model.addAttribute("start", activity.getStart());
		model.addAttribute("end",activity.getEnd());
		model.addAttribute("rsvp", activity.getRsvp());
		model.addAttribute("cost", activity.getCost());
		model.addAttribute("capacity", activity.getCapacity());
		return "submittedActivity";
	}
	
//	@InitBinder
//	public void initBinder(WebDataBinder binder) {
//	    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
//	    dateFormat.setLenient(false);
//	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
//	}
}
