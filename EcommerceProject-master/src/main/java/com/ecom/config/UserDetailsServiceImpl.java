package com.ecom.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.ecom.model.UserDtls;
import com.ecom.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		UserDtls user = userRepository.findbyEmail(username);
//		System.out.println(user);
		if(user == null) {
			throw new UsernameNotFoundException("User Not Found"); 
		}
		
		return new CustomUser(user);
	}

}
