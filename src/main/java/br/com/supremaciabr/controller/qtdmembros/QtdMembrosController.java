package br.com.supremaciabr.controller.qtdmembros;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.supremaciabr.daos.MembrosDAO;
import br.com.supremaciabr.model.Membros;


@Controller
public class QtdMembrosController {
	
	
	@Autowired MembrosDAO membroDao;
	
	@RequestMapping("cadastraQtdMembros")
	public String cadastraQtdMembros(Membros membros){
		membroDao.criaMembros(membros);
		return "redirect:balanosman";
	}

	@RequestMapping("editaQtdMembros")
	public String editaQtdMembros(Membros membros){
		membroDao.editaQtdMembros(membros);
		return "redirect:balanosman";
	}
	
	
	//editaQtdMembros
	
}
