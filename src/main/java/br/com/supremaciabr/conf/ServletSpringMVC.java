package br.com.supremaciabr.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import br.com.supremaciabr.daos.VideoDAO;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{AppWebConfiguration.class, JPAConfiguration.class,VideoDAO.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String []{"/"};
	}

}
