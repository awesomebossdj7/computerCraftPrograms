m = peripheral.wrap("modem_0")
m.open(1)

while true do
    event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    if message == "stop running" then
    m.close(1)
    shell.run("shutdown")
    end
    exec(message)
    sleep(0.1)
end
