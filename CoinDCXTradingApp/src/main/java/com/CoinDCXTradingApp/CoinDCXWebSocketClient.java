package com.CoinDCXTradingApp;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

import okhttp3.WebSocketListener;

public class CoinDCXWebSocketClient extends WebSocketClient {
    private final String apiKey;
    private final String apiSecret;
    private final WebSocketListener listener;

    public CoinDCXWebSocketClient(String apiKey, String apiSecret, WebSocketListener listener) {
        super(URI.create("wss://ws-feed.coindcx.com/v1/"));
        this.apiKey = apiKey;
        this.apiSecret = apiSecret;
        this.listener = listener;
    }

    @Override
    public void onOpen(ServerHandshake handshak) {
        Map<String, Object> subscribeData = new HashMap<>();
        subscribeData.put("method", "subscribe");
        subscribeData.put("params", new String[]{"market:BTC/USDT"});
        send(subscribeData.toString());
    }

    @Override
    public void onMessage(String message) {
        listener.onMessage(message);
    }

    @Override
    public void onClose(int code, String reason, boolean remote)
 {
        System.out.println("WebSocket connection closed: " + reason);
    }

    @Override
    public void onError(Exception ex) {
        ex.printStackTrace();
    }
}