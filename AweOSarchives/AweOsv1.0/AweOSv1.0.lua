paintutils.drawFilledBox(1,1,51,21,colors.cyan)
term.clear()
paintutils.drawLine(2,21,51,21,colors.blue)
paintutils.drawPixel(1,21,colors.green)
term.setCursorPos(1,21)
term.write("M")
paintutils.drawPixel(51,21,colors.gray)
term.setCursorPos(51,21)
term.write("T")
paintutils.drawPixel(50,21,colors.black)
term.setCursorPos(50,21)
term.write("D")
paintutils.drawPixel(49,21,colors.white)
term.setCursorPos(49,21)
term.setTextColour(colors.black)
term.write("I")

term.setTextColour(colors.white)

shell.setAlias("return","AweOS/AweOSv1.0.lua")
while true do


event, button, x, y = os.pullEvent("mouse_click")
term.setCursorPos(1,1)
term.setBackgroundColor(colors.cyan)


if x == 1 and y == 21 and menu == false then
paintutils.drawFilledBox(1,20,14,10,colors.white)
paintutils.drawFilledBox(8,20,14,10,colors.lightBlue)
paintutils.drawLine(1,20,13,20,colors.blue)
paintutils.drawPixel(14,20,colors.red)
term.setCursorPos(14,20)
term.write("X")
term.setBackgroundColor(colors.blue)
paintutils.drawLine(1,10,14,10,colors.blue)
term.setTextColour(colors.white)
term.setCursorPos(1,10)
term.write("AweOS v1.0")
term.setCursorPos(12,10)
term.setTextColour(colors.red)
term.write("TM")
term.setCursorPos(1,1)
term.setTextColour(colors.white)
menu = true

elseif x == 1 and y == 21 and menu == true then
paintutils.drawFilledBox(1,20,14,10,colors.cyan)
menu = false

elseif x == 14 and y == 20 and menu == true then
os.shutdown()

elseif x == 51 and y == 21 then 
paintutils.drawFilledBox(1,1,51,21,colors.black)
term.clear()
term.setCursorPos(1,1)
term.setTextColour(colors.yellow)
term.write("AweOS - Terminal")
term.setCursorPos(1,2)
term.setTextColour(colors.white)
shell.run("AweOS/randomQuote.lua")
term.setTextColour(colors.red)
term.setCursorPos(1,3)
term.write("Welcome to the terminal!")
term.setCursorPos(1,4)
term.write("type 'return' to return to AweOS")
term.setCursorPos(1,5)
term.setTextColour(colors.white)
return

elseif x == 50 and y == 21 and menu == false then 
shell.run("AweOS/debugMenu.lua")

elseif x == 49 and y == 21 and menu == false then 
shell.run("AweOS/InfoMenu.lua")

elseif menu == true then
menu = true
elseif menu == false then
menu = false
else
menu = false
end



sleep(0.1)
end
