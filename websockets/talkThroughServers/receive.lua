ws2 = http.websocket("98.209.180.144:5001")

while true do
    event, user, chatmsg = os.pullEvent("chat")
    ws2.send("<"..user.."> "..chatmsg)
    sleep(0.1)
end