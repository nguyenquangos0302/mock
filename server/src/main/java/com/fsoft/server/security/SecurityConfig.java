package com.fsoft.server.security;

import com.fsoft.server.service.impl.UserService;
import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Collections;

@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	private final UserService userService;

	private final PasswordEncoder passwordEncoder;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.cors().configurationSource(new CorsConfigurationSource() {

				@Override
				public CorsConfiguration getCorsConfiguration(HttpServletRequest request) {
					CorsConfiguration config = new CorsConfiguration();
	                   config.setAllowedMethods(Collections.singletonList("http://localhost:8080"));
	                   config.setAllowedMethods(Collections.singletonList("*"));
	                   config.setAllowCredentials(true);
	                   config.setAllowedHeaders(Collections.singletonList("*"));
	                   config.setExposedHeaders(Arrays.asList("Authorization"));
	                   config.setMaxAge(3600L);
	                   return config;

				}

			})
			.and()
			.csrf()
			.disable()
			.authorizeRequests()
			.antMatchers("/", "/css/*", "/js/*").permitAll()
			.antMatchers("/server/api/v1/*").permitAll()
			.anyRequest()
				.authenticated()
				.and()
				.formLogin()
				.permitAll()
				.and()
				.httpBasic();

	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(daoAuthenticationProvider());
	}

	@Bean
	public DaoAuthenticationProvider daoAuthenticationProvider() {
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setPasswordEncoder(passwordEncoder);
		provider.setUserDetailsService(userService);
		return provider;
	}
}
