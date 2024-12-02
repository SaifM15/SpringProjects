package com.OTPverification.Entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Otp {

    @Id
    private Long id; // or use UUID if applicable

    private String email;
    private String phone;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

	public Object getHashedOtp() {
		// TODO Auto-generated method stub
		return null;
	}

	public LocalDateTime getExpiryTime() {
		// TODO Auto-generated method stub
		return null;
	}
}
