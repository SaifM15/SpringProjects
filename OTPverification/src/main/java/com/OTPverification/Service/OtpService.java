package com.OTPverification.Service;

import com.OTPverification.Entity.Otp;
import com.OTPverification.Repository.OtpRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Optional;

@Service
public class OtpService {

    @Autowired
    private OtpRepository otpRepository;

    // Save or update OTP
    public void saveOrUpdateOtp(Otp otp) {
        otpRepository.save(otp);
    }

    // Fetch OTP by email or phone
    public Optional<Otp> getOtpByEmailOrPhone(String emailOrPhone) {
        return otpRepository.findByEmailOrPhone(emailOrPhone, emailOrPhone);
    }

    // Delete OTP by email or phone
    public void deleteOtpByEmailOrPhone(String emailOrPhone) {
        otpRepository.deleteByEmailOrPhone(emailOrPhone);
    }

    // Validate OTP
    public boolean validateOtp(String emailOrPhone, String hashedOtp) {
        Optional<Otp> optionalOtp = otpRepository.findByEmailOrPhone(emailOrPhone, hashedOtp);
        if (optionalOtp.isPresent()) {
            Otp otp = optionalOtp.get();
            return otp.getHashedOtp().equals(hashedOtp) && otp.getExpiryTime().isAfter(LocalDateTime.now());
        }
        return false;
    }
}
