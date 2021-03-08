package com.fsoft.server.security;

//@Configuration
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http
//			.cors().configurationSource(new CorsConfigurationSource() {
//
//				@Override
//				public CorsConfiguration getCorsConfiguration(HttpServletRequest request) {
//					CorsConfiguration config = new CorsConfiguration();
//	                   config.setAllowedMethods(Collections.singletonList("http://localhost:8080"));
//	                   config.setAllowedMethods(Collections.singletonList("*"));
//	                   config.setAllowCredentials(true);
//	                   config.setAllowedHeaders(Collections.singletonList("*"));
//	                   config.setExposedHeaders(Arrays.asList("Authorization"));
//	                   config.setMaxAge(3600L);
//	                   return config;
//
//				}
//			
//			})
//			.and()
//			.csrf()
//			.disable()
//			.authorizeRequests()
//			.antMatchers("/", "/css/*", "/js/*").permitAll()
//			.antMatchers("/server/api/v1/breadcrumb").permitAll()
//			.antMatchers("/server/api/v1/comment").permitAll()
//			.antMatchers("/server/api/v1/comment/addition").permitAll()
//			.antMatchers("/server/api/v1/course").permitAll()
//			
//			
//	}
//
//}
