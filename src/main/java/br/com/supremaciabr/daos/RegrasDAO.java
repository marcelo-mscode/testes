package br.com.supremaciabr.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.swing.JOptionPane;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.supremaciabr.model.Regras;


@Repository
@Transactional
public class RegrasDAO {
	
	@PersistenceContext private EntityManager manager;
	
	
	
	public List<Regras> listaRegras(){
		TypedQuery<Regras> regras = manager.createQuery("SELECT r from Regras", Regras.class)/*.setMaxResults(3)*/;
		return regras.getResultList();
	}

	public List<Regras> listaRegrasTodas(){
		TypedQuery<Regras> regras = manager.createQuery("SELECT r from Regras", Regras.class);
		return regras.getResultList();
	}

	public List<Regras> listaRegrasUltimos(){
		TypedQuery<Regras> regras = manager.createQuery("SELECT r from Regras where idRegras > 3", Regras.class);
		return regras.getResultList();
	}
	
	
	public void criaRegra(Regras regra){
		try {
			manager.persist(regra);
		} catch (Exception e) {
			e.getStackTrace();
		}
	}

	public void editaRegra(Regras regra){
		try {
			manager.merge(regra);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Erro ao editar regra:" +e);
		}
	}

	public void removeRegra(Integer idRegra) {
		try {
			Regras regra = manager.find(Regras.class, idRegra);
			manager.remove(regra);
		} catch (Exception e) {
			
		}
		
	}
	
	
	
	

}
