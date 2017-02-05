package br.com.supremaciabr.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Membros {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idMembros;
	private Integer lider;
	private Integer comissarios;
	private Integer tenetens;
	private Integer representantes;
	private Integer capangas;

	
	public Integer getLider() {
		return lider;
	}
	public void setLider(Integer lider) {
		this.lider = lider;
	}
	public Integer getIdMembros() {
		return idMembros;
	}
	public void setIdMembros(Integer idMembros) {
		this.idMembros = idMembros;
	}
	public Integer getComissarios() {
		return comissarios;
	}
	public void setComissarios(Integer comissarios) {
		this.comissarios = comissarios;
	}
	public Integer getTenetens() {
		return tenetens;
	}
	public void setTenetens(Integer tenetens) {
		this.tenetens = tenetens;
	}
	public Integer getRepresentantes() {
		return representantes;
	}
	public void setRepresentantes(Integer representantes) {
		this.representantes = representantes;
	}
	public Integer getCapangas() {
		return capangas;
	}
	public void setCapangas(Integer capangas) {
		this.capangas = capangas;
	}
	
}
