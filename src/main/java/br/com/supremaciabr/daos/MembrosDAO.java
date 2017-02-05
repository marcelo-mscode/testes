package br.com.supremaciabr.daos;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.supremaciabr.model.Membros;


@Repository
@Transactional
public class MembrosDAO {
	
	@PersistenceContext private EntityManager manager;
	
	public Membros listaMembros(){
		try {
			Query  r = manager.createQuery("from Membros").setMaxResults(1);
			Membros membros = (Membros) r.getSingleResult();
			return membros;
		} catch (Exception e) {
			e.getStackTrace();
			return null;
		}
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
