c = peripheral.find("chatBox")


if c == nil then
    error("no chatbox?")
end

while true do
    event, user, msg = os.pullEvent("chat")

    if string.find(msg, "exec: ") and user == "awesomehome7_dj" then
        cmd = string.sub(msg,7)
        exec(cmd)
    end
    
    
    sleep(0.1)
end
