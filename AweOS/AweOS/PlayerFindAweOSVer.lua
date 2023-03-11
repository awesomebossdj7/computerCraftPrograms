paintutils.drawFilledBox(6,4,46,17,colors.black)
paintutils.drawLine(6,4,45,4,colors.gray)
paintutils.drawPixel(46,4,colors.red)
term.setCursorPos(46,4)
term.write("X")

term.setBackgroundColor(colors.gray)
term.setCursorPos(6,4)
term.write("Player Finder")

term.setBackgroundColor(colors.black)

p = peripheral.find("playerDetector")

term.setCursorPos(6,5)
print("1 = DJ")
term.setCursorPos(6,6)
print("2 = Cowboy")
term.setCursorPos(6,7)
print("3 = Carter")
term.setCursorPos(6,8)
print("4 = Kindcod")
term.setCursorPos(6,9)
msg = read()


if msg == nil then
    paintutils.drawFilledBox(1,1,51,19,colors.cyan)
    return
elseif msg == "1" then
    PLR = "awesomehome7_dj"
elseif msg == "2" then
    PLR = "Reeeekid2550"
elseif msg == "3" then
    PLR = "LargeBallMan"
elseif msg == "4" then
    PLR = "Kindcod"
else
    paintutils.drawFilledBox(1,1,51,19,colors.cyan)
    return
end


while true do

if PLR == nil then
shell.run("FreeCords")
end



paintutils.drawFilledBox(6,5,46,17,colors.black)


while true do
    plrPos = p.getPlayerPos(PLR)

    paintutils.drawFilledBox(6,5,46,17,colors.black)

    term.setCursorPos(6,5)
    term.write(PLR .. "'s info is:")
    term.setCursorPos(6,6)
    term.write("X = " .. plrPos.x)
    term.setCursorPos(6,7)
    term.write("Y = " .. plrPos.y)
    term.setCursorPos(6,8)
    term.write("Z = " .. plrPos.z)
    term.setCursorPos(6,9)
    term.write("Dim = " .. plrPos.dimension)

sleep(0.1)
end
end





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