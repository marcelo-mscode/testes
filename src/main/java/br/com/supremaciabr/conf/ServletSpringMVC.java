package br.com.supremaciabr.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import br.com.supremaciabr.controller.index.HomeController;
import br.com.supremaciabr.daos.VideoDAO;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{AppWebConfiguration.class, HomeController.class,VideoDAO.class,JPAConfiguration.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String []{"/"};
	}

}
