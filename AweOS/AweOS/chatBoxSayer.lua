paintutils.drawFilledBox(6,4,46,17,colors.black)
paintutils.drawLine(6,4,45,4,colors.gray)
paintutils.drawPixel(46,4,colors.red)
term.setCursorPos(46,4)
term.write("X")

term.setBackgroundColor(colors.gray)
term.setCursorPos(6,4)
term.write("Chat Box Sayer")

term.setBackgroundColor(colors.black)

cb = peripheral.find("chatBox")

term.setCursorPos(6,5)
print("Type Message:")
term.setCursorPos(6,6)
msg = read()
term.setCursorPos(6,7)
print("Type Username:")
term.setCursorPos(6,8)
user = read()
term.setCursorPos(6,9)

cb.sendMessage(msg,user)

print("done!")

while true do
event, button, x, y = os.pullEvent("mouse_click")
term.setCursorPos(6,5)
term.setBackgroundColor(colors.black)

if x == 46 and y == 4 then
paintutils.drawFilledBox(1,1,51,18,colors.cyan)
return
end
sleep(0.1)
end