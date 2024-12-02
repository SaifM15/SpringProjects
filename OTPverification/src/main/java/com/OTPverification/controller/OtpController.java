package com.OTPverification.controller;

import com.OTPverification.Entity.Otp;
import com.OTPverification.Service.OtpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.UUID;

@RestController
@RequestMapping("/otp")
public class OtpController {

    @Autowired
    private OtpService otpService;

    // Generate and save OTP
    @PostMapping("/generate")
    public String generateOtp(@RequestParam String emailOrPhone) {
        String otp = UUID.randomUUID().toString().substring(0, 6); // Generate 6-character OTP
        String hashedOtp = Integer.toString(otp.hashCode()); // Hash OTP (simplified for example)

        Otp otpEntity = new Otp(); // 5-min expiry
        otpService.saveOrUpdateOtp(otpEntity);

        return "OTP generated and sent successfully.";
    }

    // Validate OTP
    @PostMapping("/validate")
    public String validateOtp(@RequestParam String emailOrPhone, @RequestParam String otp) {
        String hashedOtp = Integer.toString(otp.hashCode()); // Hash input OTP
        if (otpService.validateOtp(emailOrPhone, hashedOtp)) {
            otpService.deleteOtpByEmailOrPhone(emailOrPhone); // Delete OTP after validation
            return "OTP validated successfully.";
        }
        return "Invalid or expired OTP.";
    }
}
