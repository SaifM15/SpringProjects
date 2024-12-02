package com.ecom.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ecom.model.UserDtls;

public interface UserRepository extends JpaRepository<UserDtls, Integer>{
	
	@Query("SELECT u FROM UserDtls u WHERE u.email = ?1")
	public UserDtls findbyEmail(String email);

	public  List<UserDtls> findByRole(String role);
	
	public UserDtls findByResetToken(String token);
	
	public Boolean existsByEmail(String email);

}
