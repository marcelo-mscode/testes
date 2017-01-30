package br.com.supremaciabr.controller.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public ModelAndView index(){
		ModelAndView MV = new ModelAndView("index/404");
		return MV;
	}
	
	@RequestMapping("/hieraquia")
	public ModelAndView hieraquia(){
		ModelAndView MV = new ModelAndView("treinamento/treinamento");
		return MV;
	}

	@RequestMapping("/regimeinterno")
	public ModelAndView regimeinterno(){
		ModelAndView MV = new ModelAndView("regime/regimeinterno");
		return MV;
	}
	
	
	
}
