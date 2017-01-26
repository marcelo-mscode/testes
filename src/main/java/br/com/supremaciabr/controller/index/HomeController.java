package br.com.supremaciabr.controller.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public ModelAndView index(){
		ModelAndView MV = new ModelAndView("index/index");
		System.out.println("Carregando Produtos.");
		return MV;
	}
	
	
	@RequestMapping("/hieraquia")
	public ModelAndView hieraquia(String teste){
		ModelAndView MV = new ModelAndView("treinamento/treinamento");
		System.out.println("Treinamento: "+teste);
		return MV;
	}
	
	
	
}
