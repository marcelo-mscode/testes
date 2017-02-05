package br.com.supremaciabr.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import br.com.supremaciabr.daos.RegrasDAO;
import br.com.supremaciabr.daos.VideoDAO;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { AppWebConfiguration.class, JPAConfiguration.class,
				JPAProductionConfiguration.class,VideoDAO.class,RegrasDAO.class,UtilitariaDatas.class};
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
	
	/*@Override
	public void onStartup(ServletContext servletContext)
			throws ServletException {
		super.onStartup(servletContext);
		servletContext.addListener(RequestContextListener.class);
		servletContext.setInitParameter("spring.profiles.active" , "prod");

	}*/

}
