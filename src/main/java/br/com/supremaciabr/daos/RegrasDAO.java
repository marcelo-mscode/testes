package br.com.supremaciabr.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.swing.JOptionPane;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.supremaciabr.model.RegrasInternas;


@Repository
@Transactional
public class RegrasDAO {
	
	@PersistenceContext private EntityManager manager;
	
	
	
	public List<RegrasInternas> listaRegras(){
		TypedQuery<RegrasInternas> regras = manager.createQuery("from Regimento", RegrasInternas.class).setMaxResults(3);
		return regras.getResultList();
	}

	public List<RegrasInternas> listaRegrasTodas(){
		TypedQuery<RegrasInternas> regras = manager.createQuery("from Regimento", RegrasInternas.class);
		return regras.getResultList();
	}

	public List<RegrasInternas> listaRegrasUltimos(){
		TypedQuery<RegrasInternas> regras = manager.createQuery("RegrasInternas where idRegras > 3", RegrasInternas.class);
		return regras.getResultList();
	}
	
	
	public void criaRegra(RegrasInternas regra){
		try {
			manager.persist(regra);
		} catch (Exception e) {
			e.getStackTrace();
		}
	}

	public void editaRegra(RegrasInternas regra){
		try {
			manager.merge(regra);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Erro ao editar regra:" +e);
		}
	}

	public void removeRegra(Integer idRegra) {
		try {
			RegrasInternas regra = manager.find(RegrasInternas.class, idRegra);
			manager.remove(regra);
		} catch (Exception e) {
			
		}
		
	}
	
	
	
	

}
