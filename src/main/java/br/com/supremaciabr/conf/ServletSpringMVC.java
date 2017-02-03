package br.com.supremaciabr.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import br.com.supremaciabr.controller.index.HomeController;
import br.com.supremaciabr.daos.VideoDAO;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { AppWebConfiguration.class, JPAConfiguration.class,
				JPAProductionConfiguration.class, HomeController.class,VideoDAO.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// Tem que colocar aqui para ser adicionado no carregamento da servlet
		// base
		return new Class[] {};
	}

	@Override
	protected String[] getServletMappings() {
		return new String []{"/"};
	}

}
