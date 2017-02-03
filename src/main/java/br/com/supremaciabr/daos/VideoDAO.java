package br.com.supremaciabr.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.com.supremaciabr.model.Videos;


@Repository
public class VideoDAO {

	@PersistenceContext private EntityManager manager;
	
	
	public List<Videos> listaVideos(){
		TypedQuery<Videos> videos = manager.createQuery("from Videos", Videos.class);
		return videos.getResultList();
	}
	
	
}
