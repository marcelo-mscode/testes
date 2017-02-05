package br.com.supremaciabr.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.swing.JOptionPane;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.supremaciabr.model.Membros;
import br.com.supremaciabr.model.Regimento;


@Repository
@Transactional
public class MembrosDAO {
	
	@PersistenceContext private EntityManager manager;
	
	public Membros listaMembros(){
		TypedQuery<Membros> regras = manager.createQuery("from Membros", Membros.class).setMaxResults(1);
		return regras.getSingleResult();
	}
	
	public void criaMembros(Membros membro){
		manager.persist(membro);
	}
	
	public void editaQtdMembros(Membros membros) {
		try {
			manager.merge(membros);
		} catch (Exception e) {

		}
	}
	
	

}
