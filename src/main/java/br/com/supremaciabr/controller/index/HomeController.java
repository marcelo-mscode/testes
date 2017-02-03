package br.com.supremaciabr.controller.index;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.supremaciabr.daos.VideoDAO;

@Controller
@Transactional
public class HomeController {
	
	
	@Autowired VideoDAO videoDAO;
	
	
	@RequestMapping("/")
	public ModelAndView index(){
		ModelAndView MV = new ModelAndView("index/index");
		MV.addObject("videos", videoDAO.listaVideos());
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
