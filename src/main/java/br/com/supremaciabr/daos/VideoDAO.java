package br.com.supremaciabr.daos;

import java.text.SimpleDateFormat;
import java.util.Date;
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

	public List<Videos> listaUltimosVideo(){
		TypedQuery<Videos> videos = manager.createQuery("from Videos order by idVideos desc", Videos.class);
		return videos.getResultList();
	}
	
	
	public void salvaVideo(Videos videos){
		try {
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date data = new java.sql.Date(format.parse(videos.getPostadoEmTrans()).getTime());
			
			videos.setPostadoEm(data);
			manager.persist(videos);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Deu erro em salvar video: "+e);
		}
	}
	
	public void editaVideo(Videos videos){
		try {
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date data = new java.sql.Date(format.parse(videos.getPostadoEmTrans()).getTime());
			
			videos.setPostadoEm(data);
			manager.merge(videos);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Deu erro em Editar Video: "+e);
		}
	}
	
	public void removeVideo(Integer idVideos){
		try {
			Videos video =	manager.find(Videos.class, idVideos);
			manager.remove(video);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Deu erro ao apagar Video: "+e);
		}
	}
	
}
