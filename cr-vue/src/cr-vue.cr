require "kemal"

get "/" do
  render "client/dist/index.ecr"
end

# Creates a WebSocket handler.
# Matches "ws://host:port/socket"
ws "/socket" do |socket|
  socket.send "Hello from Kemal!"
end

Kemal.run(5000)