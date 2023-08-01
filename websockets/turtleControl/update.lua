ws = http.websocket("98.209.180.144:6969")

while true do
	msg = ws.receive()
	if msg == nil then
		sleep(0.1)
	else
		shell.run(msg)
	end
	sleep(0.1)
end