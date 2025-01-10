# frozen_string_literal: true

# Tebako tutorial: Lesson 2

require "async"
require "async/http"
require "async/websocket"

URL = "wss://stream.binance.com:9443/ws/btcusdt@bookTicker"

Signal.trap("INT") do
	puts "\n\nStopping..."
	exit(0)
end

Async do |task|
	endpoint = Async::HTTP::Endpoint.parse(URL, alpn_protocols: Async::HTTP::Protocol::HTTP11.names)

	Async::WebSocket::Client.connect(endpoint) do |connection|
		while message = connection.read
			puts message.parse
		end
	end
end
