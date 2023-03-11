paintutils.drawFilledBox(6,4,46,17,colors.black)
paintutils.drawLine(6,4,45,4,colors.gray)
paintutils.drawPixel(46,4,colors.red)
term.setCursorPos(46,4)
term.write("X")

term.setBackgroundColor(colors.gray)
term.setCursorPos(6,4)
term.write("Debug Menu (Cursor Cords / other info)")

term.setBackgroundColor(colors.black)

term.setCursorPos(6,7)
term.write("Computer id: ".. os.getComputerID())

term.setCursorPos(6,8)
term.write("Computer label: ".. os.getComputerLabel())

while true do
event, button, x, y = os.pullEvent("mouse_click")
paintutils.drawFilledBox(6,5,7,6,colors.black)
term.setCursorPos(6,5)
term.setBackgroundColor(colors.black)
term.write(x)
term.setCursorPos(6,6)
term.write(y)
if x == 46 and y == 4 then
paintutils.drawFilledBox(6,4,46,17,colors.cyan)
return
elseif x == 2 and y == 21 then
paintutils.drawFilledBox(6,4,46,17,colors.cyan)
return
end
sleep(0.1)
end