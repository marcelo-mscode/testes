package br.com.supremaciabr.model;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;


@Entity
public class Videos {
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idVideos;
	private String url;
	private String titulo;
	private String subTitulo;
	private String nomeImage;

	
	@Transient	private String postadoEmTrans;
	
	@Temporal(TemporalType.TIMESTAMP)private Date postadoEm;

	
// ------------------------------------------------------------- //
	
	public String getSubTitulo() {
		return subTitulo;
	}
	public String getPostadoEmTrans() {
		return postadoEmTrans;
	}
	public void setPostadoEmTrans(String postadoEmTrans) {
		this.postadoEmTrans = postadoEmTrans;
	}
	public void setSubTitulo(String subTitulo) {
		this.subTitulo = subTitulo;
	}
	public Date getPostadoEm() {
		return postadoEm;
	}
	public void setPostadoEm(Date postadoEm) {
		this.postadoEm = postadoEm;
	}
	public Integer getIdVideos() {
		return idVideos;
	}
	public void setIdVideos(Integer idVideos) {
		this.idVideos = idVideos;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getNomeImage() {
		return nomeImage;
	}
	public void setNomeImage(String nomeImage) {
		this.nomeImage = nomeImage;
	}
	
}
