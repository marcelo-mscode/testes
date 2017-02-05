package br.com.supremaciabr.videos;

import java.util.List;

import javax.swing.JOptionPane;

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
		
		MV.addObject("ultimoVideo", videoDAO.listaUltimosVideo());
		
		return MV;
	}
	
	@RequestMapping("cadastraVideo")
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
	}
	
	
	
}
