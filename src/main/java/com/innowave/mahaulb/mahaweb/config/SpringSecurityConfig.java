package com.innowave.mahaulb.mahaweb.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.csrf.CsrfFilter;

/*
 * @Author Ashok Parmar
 * 
 */
//@Configuration
//@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

	//@Autowired
   // private AccessDeniedHandler accessDeniedHandler;
	
	@Autowired
    private SecurityProperties securityProperties;

	//.and().formLogin().loginPage("/login").failureUrl("/login?error").permitAll()
	@Override
    protected void configure(HttpSecurity http) throws Exception {
        //http.authorizeRequests()
        //.antMatchers("/**").permitAll();
           /* .anyRequest().fullyAuthenticated()
            .and().formLogin().loginPage("/").failureUrl("/").permitAll()
            .and().logout().permitAll();*/
		 
        if (securityProperties.isEnableCsrf()) {
            http.addFilterAfter(new CsrfHeaderFilter(), CsrfFilter.class);
        } else {
            http.csrf().disable();
        }
    }

   /* @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("admin").password("admin").roles("ADMIN", "USER")
                .and().withUser("user").password("user").roles("USER");
    }*/
	
}
