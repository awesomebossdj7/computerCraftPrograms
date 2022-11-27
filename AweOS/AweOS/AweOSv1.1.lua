paintutils.drawFilledBox(1,1,51,21,colors.cyan)
term.clear()
paintutils.drawLine(2,21,51,21,colors.blue)
paintutils.drawPixel(1,21,colors.green)
term.setCursorPos(1,21)
term.write("M")

pD = peripheral.find("playerDetector")
if pD == nil then
    plrDetect = false
else
    plrDetect = true
end

cmdblk = peripheral.find("command")
if cmdblk == nil then
    cmd = false
else
    cmd = true
end
cb = peripheral.find("chatBox")
if cb == nil then
    chatBox = false
else
    chatBox = true
end

--term
paintutils.drawPixel(51,21,colors.gray)  
term.setCursorPos(51,21)
term.write("T")

--lua
paintutils.drawPixel(50,21,colors.gray)
term.setCursorPos(50,21)
term.write("L")

--debug
file = fs.open("AweOS/settings/debug.txt","r")
debugFile = file.readAll()

if debugFile == "true" then
    debug = true
    paintutils.drawPixel(2,21,colors.black)
    term.setCursorPos(2,21)
    term.write("D")
elseif debugFile == "false" then
    debug = false
end

file.close()

--info
paintutils.drawPixel(49,21,colors.white)
term.setCursorPos(49,21)
term.setTextColour(colors.black)
term.write("I")

--awedio
paintutils.drawPixel(48,21,colors.lightBlue)
term.setCursorPos(48,21)
term.setTextColour(colors.black)
term.write("A")

term.setTextColour(colors.white)

shell.setAlias("return","AweOS/AweOSv1.1.lua")

while true do

event, button, x, y = os.pullEvent("mouse_click")
term.setCursorPos(1,1)
term.setBackgroundColor(colors.cyan)

--drawing menu 
if x == 1 and y == 21 and menu == false then
paintutils.drawFilledBox(1,20,14,10,colors.white)
paintutils.drawFilledBox(8,20,14,10,colors.lightBlue)
paintutils.drawLine(1,20,13,20,colors.blue)

--shutdown button
paintutils.drawPixel(14,20,colors.red)
term.setCursorPos(14,20)
term.write("X")

--reboot button
paintutils.drawPixel(13,20,colors.red)
term.setCursorPos(13,20)
term.write("R")

--settings button
paintutils.drawPixel(12,20,colors.gray)
term.setCursorPos(12,20)
term.write("S")

--peripherals
    --player detector
if plrDetect then
    term.setTextColour(colors.black)
    term.setBackgroundColor(colors.white)
    term.setCursorPos(1,11) --until 7,11
    term.write("plrFind")
    term.setTextColour(colors.white)
    term.setBackgroundColor(colors.black)
end

    --chat box
if chatBox then
    term.setTextColour(colors.black)
    term.setBackgroundColor(colors.white)
    term.setCursorPos(1,12) --until x = 7
    term.write("chatSay")
    term.setTextColour(colors.white)
    term.setBackgroundColor(colors.black)
end
    

    --command block
if cmd then
    term.setTextColour(colors.black)
    term.setBackgroundColor(colors.white)
    term.setCursorPos(1,19) --until x = 7
    term.write("cmd Exc")
    term.setTextColour(colors.white)
    term.setBackgroundColor(colors.black)
end


term.setBackgroundColor(colors.blue)
paintutils.drawLine(1,10,14,10,colors.blue)
term.setTextColour(colors.white)
term.setCursorPos(1,10)
term.write("AweOS v1.1")
term.setCursorPos(12,10)
term.setTextColour(colors.red)
term.write("TM")
term.setCursorPos(1,1)
term.setTextColour(colors.white)
menu = true

elseif x == 1 and y == 21 and menu == true then
paintutils.drawFilledBox(1,20,14,10,colors.cyan)
menu = false

--shutdown button
elseif x == 14 and y == 20 and menu == true then
os.shutdown()

--reboot button
elseif x == 13 and y == 20 and menu == true then
os.reboot()

--settings
elseif x == 12 and y == 20 and menu == true then
    paintutils.drawFilledBox(1,20,14,10,colors.cyan)
    menu = false
    
    shell.run("AweOS/settings.lua")

--term
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

--lua
elseif x == 50 and y == 21 then 
    paintutils.drawFilledBox(1,1,51,21,colors.black)
    term.clear()
    term.setCursorPos(1,1)
    term.setTextColour(colors.yellow)
    term.write("AweOS - Lua")
    term.setCursorPos(1,2)
    term.setTextColour(colors.white)
    shell.run("AweOS/randomQuote.lua")
    term.setTextColour(colors.red)
    term.setCursorPos(1,3)
    shell.run("lua")
    term.setTextColour(colors.white)
    return

--debug
elseif x == 2 and y == 21 and menu == false and debug == true then 
shell.run("AweOS/debugMenu.lua")

--info
elseif x == 49 and y == 21 and menu == false then 
shell.run("AweOS/InfoMenu.lua")

--Awedio
elseif x == 48 and y == 21 and menu == false then 
shell.run("AweOS/AwedioPlayerWindowVer.lua")

--peripherals



    --player detector
elseif x > 0 and x < 8 and y == 11 and menu == true and plrDetect == true then 
    paintutils.drawFilledBox(1,20,14,10,colors.cyan)
    menu = false
    
    shell.run("AweOS/PlayerFindAweOSVer.lua")

    --chatbox
elseif x > 0 and x < 7 and y == 12 and menu == true and chatBox == true then 
    paintutils.drawFilledBox(1,20,14,10,colors.cyan)
    menu = false

    shell.run("AweOS/chatBoxSayer.lua")

    --command block
elseif x > 0 and x < 8 and y == 19 and menu == true and cmd == true then 
    paintutils.drawFilledBox(1,20,14,10,colors.cyan)
    menu = false
    
    shell.run("AweOS/cmdExec.lua")

elseif menu == true then
menu = true
elseif menu == false then
menu = false
else
menu = false
end



sleep(0.1)
end
