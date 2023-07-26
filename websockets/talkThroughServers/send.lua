c = peripheral.find("chatBox")
ws1 = http.websocket("98.209.180.144:5000")

while true do
    msg = ws1.receive()
    c.sendMessage(msg,"awesomehome7_dj")
    sleep(0.1)
end