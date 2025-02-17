package com.OTPverification.Repository;

import com.OTPverification.Entity.Otp;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface OtpRepository extends JpaRepository<Otp, Long> {
    Optional<Otp> findByEmailOrPhone(String email, String phone);

	void deleteByEmailOrPhone(String emailOrPhone);
}
