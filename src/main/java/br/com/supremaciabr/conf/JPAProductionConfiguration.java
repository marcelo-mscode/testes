package br.com.supremaciabr.conf;

import java.net.URI;
import java.net.URISyntaxException;

import javax.activation.DataSource;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


@Profile("prod")
public class JPAProductionConfiguration {
	
	
	@Autowired private Environment environment;
	
	@Bean
	public DataSource datasource() throws URISyntaxException{
		
		DriverManagerDataSource datasource = new DriverManagerDataSource();
		datasource.setDriverClassName("org.postgresql.Driver");
		
		URI dbUrl = new URI(environment.getProperty("DATABASE_URL"));
		datasource.setUrl("jdbc:postgresql://"
				+dbUrl.getHost() + ":"
				+dbUrl.getPort() + dbUrl.getPath());
		
		datasource.setUsername(dbUrl.getUserInfo().split(":")[0]);
		datasource.setPassword(dbUrl.getUserInfo().split(":")[1]);
		return datasource();
	}
	
	
}
