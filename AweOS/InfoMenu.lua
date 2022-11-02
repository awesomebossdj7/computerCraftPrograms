paintutils.drawFilledBox(6,4,46,17,colors.black)
paintutils.drawLine(6,4,45,4,colors.gray)
paintutils.drawPixel(46,4,colors.red)
term.setCursorPos(46,4)
term.write("X")

term.setBackgroundColor(colors.gray)
term.setCursorPos(6,4)
term.write("Info Menu")

term.setBackgroundColor(colors.black)
term.setCursorPos(6,5)
term.write("Welcome to AweOS! This is the") 
term.setCursorPos(6,6)
term.write("info window for how")
term.setCursorPos(6,7)
term.write("to use the OS!")

term.setCursorPos(6,9)
term.write("The icons on the bottom bar")
term.setCursorPos(6,10)
term.write("are pre-built-in programs")
term.setCursorPos(6,11)
term.write("included with AweOS!")
term.setCursorPos(6,13)
term.write("The bottom left button, is the menu.")
term.setCursorPos(6,14)
term.write("It does not do much right now besides")
term.setCursorPos(6,15)
term.write("showing the power button and the version.")

term.setCursorPos(6,17)
term.write("Thank you for using AweOS!")

while true do
event, button, x, y = os.pullEvent("mouse_click")
if x == 46 and y == 4 then
paintutils.drawFilledBox(6,4,46,17,colors.cyan)
return
elseif x == 49 and y == 21 then
paintutils.drawFilledBox(6,4,46,17,colors.cyan)
return
end
sleep(0.1)
end