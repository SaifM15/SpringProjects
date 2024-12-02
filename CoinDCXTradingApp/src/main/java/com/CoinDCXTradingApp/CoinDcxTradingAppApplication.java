package com.CoinDCXTradingApp;

import java.io.FileInputStream;
import java.util.Properties;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CoinDcxTradingAppApplication throws IOException {

	public static void main(String[] args) {
		SpringApplication.run(CoinDcxTradingAppApplication.class, args);
		
	
		        Properties properties = new Properties();
		        properties.load(new FileInputStream("coindcx.properties"));

		        String apiKey = properties.getProperty("apiKey");
		        String apiSecret = properties.getProperty("apiSecret");

		        WebSocketListener listener = new WebSocketListener() {
		            @Override
		            public void onMessage(String message) {
		                // Process incoming messages and prepare payloads
		            }
		        };

		        CoinDCXWebSocketClient client = new CoinDCXWebSocketClient(apiKey, apiSecret, listener);
		        client.connect();
		    
		
	}

}
