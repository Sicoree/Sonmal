package com.d202.assemble.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import com.d202.assemble.filter.CustomAccessDeniedHandler;
import com.d202.assemble.filter.CustomAuthenticationEntryPoint;
import com.d202.assemble.filter.ExceptionHandlerFilter;
import com.d202.assemble.filter.JwtRequestFilter;

import lombok.RequiredArgsConstructor;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	private final ExceptionHandlerFilter exceptionHandlerFilter;
	private final JwtRequestFilter jwtRequestFilter;
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
		http.httpBasic().disable()
		.csrf().disable()
		.sessionManagement()
        .sessionCreationPolicy(SessionCreationPolicy.STATELESS);

		http.addFilterBefore(jwtRequestFilter, UsernamePasswordAuthenticationFilter.class);
		http.addFilterBefore(exceptionHandlerFilter, JwtRequestFilter.class);
		http.exceptionHandling()
		.authenticationEntryPoint(new CustomAuthenticationEntryPoint());
//		.accessDeniedHandler(new CustomAccessDeniedHandler());
		
		http.authorizeRequests()
		.antMatchers(HttpMethod.POST, "/user").authenticated()
		.antMatchers(HttpMethod.POST, "**/macro/**").authenticated()
		.antMatchers(HttpMethod.GET, "/user/**").authenticated()
		.antMatchers(HttpMethod.GET, "/**/macro/**").authenticated()
		.antMatchers(HttpMethod.DELETE).authenticated()
		.antMatchers(HttpMethod.PUT).authenticated();

		// login. ?????? url??? ????????? ??? ????????? ????????? ????????? ??????.
		//http.formLogin().loginPage("/user/**/login").defaultSuccessUrl("/").permitAll(); // ?????? ??????
	}

	@Override
	public void configure(WebSecurity web) {
		// ?????? ????????? spring security ???????????? ??????
		web.ignoring().antMatchers("/swagger-ui/**");
		web.httpFirewall(new DefaultHttpFirewall());// '//'??????..
	}


	//CORS ??????
	@Bean
	public CorsConfigurationSource corsConfigurationSource() {
		CorsConfiguration configuration = new CorsConfiguration();

		configuration.addAllowedOriginPattern("*");
		configuration.addAllowedHeader("*");
		configuration.addAllowedMethod("*");
		configuration.setAllowCredentials(true);

		UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		source.registerCorsConfiguration("/**", configuration);
		return source;
	}

}
