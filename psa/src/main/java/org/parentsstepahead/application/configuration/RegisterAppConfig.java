package org.parentsstepahead.application.configuration;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.logging.Logger;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "org.parentsstepahead.application")
@PropertySource("classpath:application.properties")
public class RegisterAppConfig implements WebMvcConfigurer {
	

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
          .addResourceHandler("/resources/**")
          .addResourceLocations("/resources/");
    }

    //Set up variable to hold the properties
    @Autowired
    private Environment env;

    //Set up a logger for diagnostic
    private Logger logger = Logger.getLogger(getClass().getName());

    //Define a bean for viewResolver
    @Bean
    public ViewResolver viewResolver(){

        InternalResourceViewResolver viewResolver  = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/view/");
        viewResolver.setSuffix(".jsp");

        return viewResolver;
    }

    //Connecting with the db
    @Bean
    public DataSource securityDataSource(){

        //Create connection pool
        ComboPooledDataSource securityDataSourse = new ComboPooledDataSource();

        //set the jdbc driver
        try {
            securityDataSourse.setDriverClass(env.getProperty("jdbc.driver"));
        } catch (PropertyVetoException e) {
            throw new RuntimeException(e);
        }

        //log the connection properties
        //We want to make sure we are reading data from the properties file
        logger.info(">>> jdbc.url=" + env.getProperty("jdbc.driver"));
        logger.info(">>> jdbc.user=" + env.getProperty("jdbc.user"));

        //set database connection properties
        securityDataSourse.setJdbcUrl(env.getProperty("jdbc.driver"));
        securityDataSourse.setUser(env.getProperty("jdbc.user"));
        securityDataSourse.setPassword(env.getProperty("jdbc.password"));

        //set connection pool properties
        securityDataSourse.setInitialPoolSize(getIntProperty("connection.pool.initialPoolSize"));
        securityDataSourse.setMinPoolSize(getIntProperty("connection.pool.minPoolSize"));
        securityDataSourse.setMaxPoolSize(getIntProperty("connection.pool.maxPoolSize"));
        securityDataSourse.setInitialPoolSize(getIntProperty("connection.pool.initialPoolSize"));

        return securityDataSourse;
    }

    //read enviroment property and convert to int
    private int getIntProperty(String propName){

        String propVal = env.getProperty(propName);

        //now convert it to int
        int intPropVal = Integer.parseInt(propVal);

        return intPropVal;
    }

}

