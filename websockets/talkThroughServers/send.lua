c = peripheral.find("chatBox")
ws1 = http.websocket("wss://ccws.skystuff.cc/connect/turtleempire-send/turtlesrule") --5000

while true do
    msg = ws1.receive()
    c.sendMessage(msg,"awesomehome7_dj")
    sleep(0.1)
end
