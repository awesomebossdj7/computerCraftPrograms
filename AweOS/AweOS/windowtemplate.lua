paintutils.drawFilledBox(6,4,46,17,colors.black)
paintutils.drawLine(6,4,45,4,colors.gray)
paintutils.drawPixel(46,4,colors.red)
term.setCursorPos(46,4)
term.write("X")

term.setBackgroundColor(colors.gray)
term.setCursorPos(6,4)
term.write("Template")

term.setBackgroundColor(colors.black)


while true do
event, button, x, y = os.pullEvent("mouse_click")
term.setCursorPos(6,5)
term.setBackgroundColor(colors.black)

if x == 46 and y == 4 then
paintutils.drawFilledBox(1,1,51,18,colors.cyan)
return
elseif x == 2 and y == 19 then --icon pos (you can remove if you want)
paintutils.drawFilledBox(1,1,51,18,colors.cyan)
return
end
sleep(0.1)
end