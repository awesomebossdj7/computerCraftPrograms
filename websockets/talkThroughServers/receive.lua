ws2 = http.websocket("wss://ccws.skystuff.cc/connect/turtleempire-receive/turtlesrule") --5001

while true do
    event, user, chatmsg = os.pullEvent("chat")
    ws2.send("<"..user.."> "..chatmsg)
    sleep(0.1)
end
