package br.com.supremaciabr.daos;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.swing.JOptionPane;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;
import br.com.supremaciabr.model.Regimento;


@Repository
@Transactional
public class RegrasDAO {
	
	@PersistenceContext private EntityManager manager;
	
	
	
	public List<Regimento> listaRegras(){
		TypedQuery<Regimento> regras = manager.createQuery("from Regimento ORDER BY idRegimento", Regimento.class).setMaxResults(3);
		return regras.getResultList();
	}

	public List<Regimento> listaRegrasTodas(){
		TypedQuery<Regimento> regras = manager.createQuery("from Regimento ORDER BY idRegimento", Regimento.class);
		return regras.getResultList();
	}

	public List<Regimento> listaRegrasUltimos(){
		TypedQuery<Regimento> regras = manager.createQuery("from Regimento where idRegimento > 3", Regimento.class);
		return regras.getResultList();
	}
	
	
	public void criaRegra(Regimento regra){
			manager.persist(regra);
	}

	public void editaRegra(Regimento regra){
		try {
			manager.merge(regra);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Erro ao editar regra:" +e);
		}
	}

	public void removeRegra(Integer idRegra) {
		try {
			Regimento regra = manager.find(Regimento.class, idRegra);
			manager.remove(regra);
		} catch (Exception e) {
			
		}
		
	}
	
	
	
	

}
