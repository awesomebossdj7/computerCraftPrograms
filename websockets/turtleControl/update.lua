ws = http.websocket("wss://ccws.skystuff.cc/connect/turtlecontrolupdate/nigganuts6969")

while true do
	msg = textutils.unserialiseJSON(ws.receive())
	

	if msg.id == os.getComputerId() then
		if msg.cmd == nil then
			sleep(0.1)
		else
			shell.run(msg)
		end
	end
	
	sleep(0.1)
end
