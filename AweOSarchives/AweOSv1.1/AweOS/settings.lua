paintutils.drawFilledBox(6,4,46,17,colors.black)
paintutils.drawLine(6,4,45,4,colors.gray)
paintutils.drawPixel(46,4,colors.red)
term.setCursorPos(46,4)
term.write("X")

term.setBackgroundColor(colors.gray)
term.setCursorPos(6,4)
term.write("Settings - AweOS")

term.setBackgroundColor(colors.black)
term.setCursorPos(6,5)
term.write("debug menu:")

term.setBackgroundColor(colors.black)
term.setCursorPos(6,6)
term.write("ask speaker id:")

term.setBackgroundColor(colors.black)
term.setCursorPos(6,17)
term.write("note: you will need to restart")

file = fs.open("AweOS/settings/debug.txt","r")
debugFile = file.readAll()
file.close()

file = fs.open("AweOS/settings/askidaudio.txt","r")
askIDAudioFile = file.readAll()
file.close()

if debugFile == "true" then
    debug = true
paintutils.drawPixel(18,5,colors.green)
elseif debugFile == "false" then
    debug = false
paintutils.drawPixel(18,5,colors.red)
end

if askIDAudioFile == "true" then
    askIDAudio = true
paintutils.drawPixel(22,6,colors.green)
elseif askIDAudioFile == "false" then
    askIDAudio = false
paintutils.drawPixel(22,6,colors.red)
end

while true do
event, button, x, y = os.pullEvent("mouse_click")
term.setCursorPos(6,5)
term.setBackgroundColor(colors.black)

if x == 46 and y == 4 then
paintutils.drawFilledBox(6,4,46,17,colors.cyan)
return

elseif x == 18 and y == 5 and debug == false then
    if debug == false then
        file = fs.open("AweOS/settings/debug.txt","w")
        file.writeLine("true")
        file.close()
    end

    term.setBackgroundColor(colors.black)
    paintutils.drawPixel(18,5,colors.green)
    
    debug = true
    
elseif x == 18 and y == 5 and debug == true then
    if debug == true then
        file = fs.open("AweOS/settings/debug.txt","w")
        file.writeLine("false")
        file.close()
    end
    
    term.setBackgroundColor(colors.black)
    paintutils.drawPixel(18,5,colors.red)
    
    debug = false
    
elseif x == 22 and y == 6 and debug == false then
    if debug == false then
        file = fs.open("AweOS/settings/askidaudio.txt","w")
        file.writeLine("true")
        file.close()
    end

    term.setBackgroundColor(colors.black)
    paintutils.drawPixel(22,6,colors.green)
    
    debug = true
    
elseif x == 22 and y == 6 and debug == true then
    if debug == true then
        file = fs.open("AweOS/settings/askidaudio.txt","w")
        file.writeLine("false")
        file.close()
    end
    
    term.setBackgroundColor(colors.black)
    paintutils.drawPixel(22,6,colors.red)
    
    debug = false
        
else
    
end 
end