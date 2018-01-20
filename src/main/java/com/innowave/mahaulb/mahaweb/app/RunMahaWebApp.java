package com.innowave.mahaulb.mahaweb.app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.jpa.JpaRepositoriesAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ImportResource;

//import com.innowave.mahaulb.common.service.utils.MailSender;
 
@SpringBootApplication (exclude = JpaRepositoriesAutoConfiguration.class)
@ImportResource("classpath:app-config.xml")
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
public class RunMahaWebApp extends SpringBootServletInitializer{

public static final Logger logger = LoggerFactory.getLogger(RunMahaWebApp.class);
	
	
	public static void main(String[] args) {
		logger.info(":: InvoiceAPI ::        (v0.0.1.RELEASE)");
		logger.info(":: JAVA       ::        ("+System.getProperty("java.version")+")");
		logger.info(":: Developer  ::        (ASHOK PARMAR)");
		logger.info(":: EMAIL      ::        (parmar.ashok@gmail.com)");
		
		SpringApplication.run(RunMahaWebApp.class, args);
		 
		logger.info(":: MahaULB Web ::        (v0.0.1.RELEASE)");
		logger.info(":: JAVA        ::        ("+System.getProperty("java.version")+")");
 		
		//System.out.println(HibernateUtil.getSession().isConnected());
	}
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(RunMahaWebApp.class);
    }
	
	
	//@Bean
   // public FilterRegistrationBean charSetFilter() {
	//	System.out.println("************************************* ");
    //    FilterRegistrationBean registration = new FilterRegistrationBean();
  //      registration.setFilter(new CharsetFilter());
// In case you want the filter to apply to specific URL patterns only
  //      registration.addUrlPatterns("/ashok/*");
   //     return registration;
   // }
	
	/*@Bean
    public HttpMessageConverter<String> responseBodyConverter() {
        return new StringHttpMessageConverter(Charset.forName("UTF-8"));
    }
 
    @Bean
    public Filter characterEncodingFilter() {
        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
        characterEncodingFilter.setEncoding("UTF-8");
        characterEncodingFilter.setForceEncoding(true);
        return characterEncodingFilter;
    }*/
 
}
