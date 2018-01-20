package com.innowave.mahaulb.mahaweb.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.innowave.mahaulb.portal.utils.EncryptionUtil;

 
@Configuration
@EnableTransactionManagement
@PropertySource(value = { "classpath:database.properties" })

public class HibernateConfig {
	 
	private final String scanCommonPkg = "com.innowave.mahaulb.common";
	private final String scanTreeCensus = "com.innowave.mahaulb.repository.treecensus";
	private final String scanSocialwelfare = "com.innowave.mahaulb.socialwelfare";
	private final String scanWater = "com.innowave.mahaulb.repository.water";
	private final String scanCitizen = "com.innowave.mahaulb.repository.citizen";
	private final String scanProperty = "com.innowave.mahaulb.repository.property";
	private final String scanMarket = "com.innowave.mahaulb.repository.tradelicense";
	private final String scanInventory = "com.innowave.mahaulb.repository.inventory";
	
	@Autowired
	private Environment env;
 
	 
	@Bean
    public HibernateTemplate hibernateTemplate(SessionFactory sessionFactory) {
        return new HibernateTemplate(sessionFactory);
    }
	@Bean
	public LocalSessionFactoryBean  sessionFactory(DataSource ds) throws ClassNotFoundException {
	    LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
	    localSessionFactoryBean.setDataSource(getDataSource());
	    localSessionFactoryBean.setPackagesToScan(scanCommonPkg,scanProperty,scanTreeCensus,scanSocialwelfare,scanWater,scanCitizen,scanMarket,scanInventory);
	    localSessionFactoryBean.setHibernateProperties(hibernateProperties());
	    return localSessionFactoryBean;
	}
 	 
    @Bean
	public DataSource getDataSource() {
	     BasicDataSource dataSource = new BasicDataSource();
	    // System.out.println(" >>>>> <<<<<< "+env.getProperty("database.driverClassName"));
	     dataSource.setDriverClassName(env.getProperty("database.driverClassName"));
	     dataSource.setUrl(EncryptionUtil.decrypt(env.getProperty("database.url")));
	     dataSource.setUsername(EncryptionUtil.decrypt(env.getProperty("database.username")));
	     if(env.getProperty("database.password").isEmpty()) {
	    	 dataSource.setPassword(env.getProperty("database.password"));
	     }else {
	    	 dataSource.setPassword(EncryptionUtil.decrypt(env.getProperty("database.password")));
	     }
	     
	    // dataSource.
	    // dataSource.setCacheState(cacheState);
	     System.out.println(" ################################## "+dataSource.getUrl());
	     System.out.println(" ################################## "+dataSource.getUsername());
	     return dataSource;
	}
    @Bean
    public HibernateTransactionManager transactionManager(SessionFactory sf) {
        return new HibernateTransactionManager(sf);
    }
	/*@Bean
	public HibernateTransactionManager hibernateTransactionManager(){
	     return new HibernateTransactionManager(sessionFactory());
	}*/
    private Properties hibernateProperties() {
         Properties properties = new Properties();
        /* properties.put("hibernate.dialect", env.getProperty("hibernate.dialect"));
         properties.put("hibernate.show_sql", env.getProperty("hibernate.show_sql"));
         properties.put("hibernate.format_sql", env.getProperty("hibernate.format_sql"));
         properties.put("hibernate.connection.autocommit", env.getProperty("hibernate.connection.autocommit"));
         properties.put("hibernate.current.session.context.class", env.getProperty("hibernate.current.session.context.class"));*/
         return properties;        
    }
}
