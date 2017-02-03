package br.com.supremaciabr.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import br.com.supremaciabr.daos.VideoDAO;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{AppWebConfiguration.class, JPAConfiguration.class,JPAProductionConfiguration.class,VideoDAO.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String []{"/"};
	}

}
