package br.com.supremaciabr.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Regimento {

	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idRegimento;
	private String titulo;
	private String subTituloDescricao;

	
	
	public Integer getIdRegimento() {
		return idRegimento;
	}
	public void setIdRegimento(Integer idRegimento) {
		this.idRegimento = idRegimento;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getSubTituloDescricao() {
		return subTituloDescricao;
	}
	public void setSubTituloDescricao(String subTituloDescricao) {
		this.subTituloDescricao = subTituloDescricao;
	}
}
