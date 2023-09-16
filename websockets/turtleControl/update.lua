ws = http.websocket("wss://ccws.skystuff.cc/connect/turtlecontrolupdate/peniscock6969")

while true do
	webmsg, _ = ws.receive()
	msg = textutils.unserialiseJSON(webmsg)
	

	if msg.id == os.getComputerID() then
		if msg.cmd == nil then
			sleep(0.1)
		else
			shell.run(msg.cmd)
		end
	end
	
	sleep(0.1)
end
