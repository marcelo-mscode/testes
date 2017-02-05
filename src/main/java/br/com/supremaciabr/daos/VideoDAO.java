package br.com.supremaciabr.daos;

import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.swing.JOptionPane;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.supremaciabr.conf.UtilitariaDatas;
import br.com.supremaciabr.model.Videos;


@Repository
@Transactional
public class VideoDAO {

	@PersistenceContext private EntityManager manager;
	@Autowired UtilitariaDatas utilDatas;
	
	
	public List<Videos> listaVideos(){
		TypedQuery<Videos> videos = manager.createQuery("from Videos order by idVideos desc", Videos.class).setMaxResults(3);
		return videos.getResultList();
	}
	
	
	public void salvaVideo(Videos videos){
		try {
			videos.setPostadoEm(Calendar.getInstance().getTime());
			manager.persist(videos);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Deu erro: "+e);
		}
	}
	
}
