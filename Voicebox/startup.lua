s = peripheral.find("speaker")

while true do
  event, user, chat = os.pullEvent("chat")
  
  if user == "NullHarp" then
    s.speak(chat)
  end

  sleep(0.1)
end
