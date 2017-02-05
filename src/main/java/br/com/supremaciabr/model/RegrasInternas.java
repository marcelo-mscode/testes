package br.com.supremaciabr.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RegrasInternas {
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idRegras;
	private String titulo;
	private String descricao;
	
	
	public Integer getIdRegras() {
		return idRegras;
	}
	public void setIdRegras(Integer idRegras) {
		this.idRegras = idRegras;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
