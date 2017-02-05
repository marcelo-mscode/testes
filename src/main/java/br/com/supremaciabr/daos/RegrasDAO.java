package br.com.supremaciabr.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.swing.JOptionPane;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.supremaciabr.model.Regimento;
import br.com.supremaciabr.model.RegrasInternas;


@Repository
@Transactional
public class RegrasDAO {
	
	@PersistenceContext private EntityManager manager;
	
	
	
	public List<Regimento> listaRegras(){
		TypedQuery<Regimento> regras = manager.createQuery("from Regimento", Regimento.class).setMaxResults(3);
		return regras.getResultList();
	}

	public List<Regimento> listaRegrasTodas(){
		TypedQuery<Regimento> regras = manager.createQuery("from Regimento", Regimento.class);
		return regras.getResultList();
	}

	public List<RegrasInternas> listaRegrasUltimos(){
		TypedQuery<RegrasInternas> regras = manager.createQuery("RegrasInternas where idRegras > 3", RegrasInternas.class);
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
