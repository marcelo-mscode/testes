package br.com.supremaciabr.videos;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.supremaciabr.daos.VideoDAO;
import br.com.supremaciabr.model.Videos;

@Controller
public class VideosController {
	
	
	@Autowired VideoDAO videoDAO;
	
	
	@RequestMapping("balanosman")
	public ModelAndView balanosman(){
		ModelAndView MV = new ModelAndView("adm/adm");
		return MV;
	}
	
	@RequestMapping("cadastraVideo")
	public String cadastraVideo(Videos videos){
		
		videoDAO.salvaVideo(videos);
		
		System.out.println("Salvou !!!");
		
		
		return "redirect:balanosman";
	}
	
	
	
	
	
}
