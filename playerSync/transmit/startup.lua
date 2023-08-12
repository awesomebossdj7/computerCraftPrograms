ws = http.websocket("wss://ccws.skystuff.cc/connect/1-20-1/nigganuts")
b = peripheral.wrap("back")

while true do
    pos = b.getPlayerPos("awesomehome7_dj")
    ws.send(""..pos.x.." "..pos.y.." "..pos.z.." "..pos.yaw.." "..pos.pitch)
    sleep(0.1)
end
    
