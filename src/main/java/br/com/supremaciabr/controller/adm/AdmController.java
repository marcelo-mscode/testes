package br.com.supremaciabr.controller.adm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.supremaciabr.daos.RegrasDAO;
import br.com.supremaciabr.daos.VideoDAO;
import br.com.supremaciabr.model.Regras;
import br.com.supremaciabr.model.Videos;

@Controller
public class AdmController {
	
	
	@Autowired VideoDAO videoDAO;
	@Autowired RegrasDAO regrasDAO;
	
	
	@RequestMapping("balanosman")
	public ModelAndView balanosman(){
		ModelAndView MV = new ModelAndView("adm/adm");
		
		MV.addObject("ultimoVideo", videoDAO.listaUltimosVideo());
		MV.addObject("regras", regrasDAO.listaRegrasTodas());
		return MV;
	}
	
	/*@RequestMapping("cadastraVideo")
	public String cadastraVideo(Videos videos){
		videoDAO.salvaVideo(videos);
		return "redirect:balanosman";
	}
	@RequestMapping("editaVideo")
	public String editaVideo(Videos videos){
		videoDAO.editaVideo(videos);
		return "redirect:balanosman";
	}
	@RequestMapping("removeVideo")
	public String removeVideo(Integer idVideo){
		videoDAO.removeVideo(idVideo);
		return "redirect:balanosman";
	}*/
	
}
