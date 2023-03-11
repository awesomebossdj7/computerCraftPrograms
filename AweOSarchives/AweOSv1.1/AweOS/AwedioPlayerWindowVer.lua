paintutils.drawFilledBox(6,4,46,17,colors.black)
paintutils.drawLine(6,4,45,4,colors.gray)
paintutils.drawPixel(46,4,colors.red)
term.setCursorPos(46,4)
term.write("X")

term.setBackgroundColor(colors.gray)
term.setCursorPos(6,4)
term.write("Awedio Player - AweOS Version")

term.setBackgroundColor(colors.black)
term.setCursorPos(6,5)
term.write("Type in audio name and location")
term.setCursorPos(6,6)
term.write("(you do not need dfpwm at the end)")
term.setCursorPos(6,7)
term.write("(ex: 'disk/griddy')")
term.setCursorPos(6,8)
term.write("(type 'exit' to exit)")
term.setCursorPos(6,9)
file = read()
term.setCursorPos(6,10)

fileCheck = fs.open("AweOS/settings/askidaudio.txt","r")
askIDAudioFile = fileCheck.readAll()
fileCheck.close()

if file == "exit" then
    paintutils.drawFilledBox(6,4,46,17,colors.cyan)
    return
elseif askIDAudioFile == "true" then
    term.setCursorPos(6,10)
    term.write("Speaker id?")
    term.setCursorPos(6,11)
    id = read()
    term.setCursorPos(6,12)
end



if fs.exists(file .. ".dfpwm") then
local dfpwm = require("cc.audio.dfpwm")

if askIDAudioFile == "true" then
    speaker = peripheral.wrap("speaker_".. id)
else
    speaker = peripheral.find("speaker")
end

if speaker == nil then
    term.setCursorPos(6,8)
    term.write("Speaker not installed or wrong id!")
end

local decoder = dfpwm.make_decoder()
for chunk in io.lines(file .. ".dfpwm", 16 * 1024) do
    local buffer = decoder(chunk)

    while not speaker.playAudio(buffer) do
        os.pullEvent("speaker_audio_empty")
    end
end
else
    term.setCursorPos(6,9)
    term.write("file not found!")
    sleep(1)
    shell.run("AweOS/AwedioPlayerWindowVer.lua")
end

while true do
event, button, x, y = os.pullEvent("mouse_click")
term.setCursorPos(6,5)
term.setBackgroundColor(colors.black)

if x == 46 and y == 4 then
paintutils.drawFilledBox(1,1,51,20,colors.cyan)
return
elseif x == 48 and y == 21 then
paintutils.drawFilledBox(1,1,51,20,colors.cyan)
return
end
sleep(0.1)
end