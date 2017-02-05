package br.com.supremaciabr.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Hierarquia {
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idhierarquia;
	private String titulo;
	private String descricao;
	
	public Integer getIdhierarquia() {
		return idhierarquia;
	}
	public void setIdhierarquia(Integer idhierarquia) {
		this.idhierarquia = idhierarquia;
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
