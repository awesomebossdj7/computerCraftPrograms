m = peripheral.wrap("monitor_640")
r = peripheral.wrap("redstone_integrator_286")

doorDir = "east"
waitTime = 2

pass = "9999"

m.setBackgroundColor(colors.black)
m.clear()
m.setTextScale(1)


--top row
m.setCursorPos(2,1)
m.write("1")

m.setCursorPos(4,1)
m.write("2")

m.setCursorPos(6,1)
m.write("3")

--middle row
m.setCursorPos(2,3)
m.write("4")

m.setCursorPos(4,3)
m.write("5")

m.setCursorPos(6,3)
m.write("6")

--bottom row

m.setCursorPos(2,5)
m.write("7")

m.setCursorPos(4,5)
m.write("8")

m.setCursorPos(6,5)
m.write("9")

--zero
m.setCursorPos(7,3)
m.write("0")

--ok button

oldterm = term.redirect(m)
paintutils.drawPixel(7,5,colors.lime)
term.setBackgroundColor(colors.black)
term.redirect(oldterm)

input = ""
while true do
	event, side, x, y = os.pullEvent("monitor_touch")
	if side == "monitor_640" then
		if x == 2 and y == 1 then
			input = input.."1"
		elseif x == 4 and y == 1 then
			input = input.."2"
		elseif x == 6 and y == 1 then
			input = input.."3"
		elseif x == 2 and y == 3 then
			input = input.."4"
		elseif x == 4 and y == 3 then
			input = input.."5"
		elseif x == 6 and y == 3 then
			input = input.."6"
		elseif x == 2 and y == 5 then
			input = input.."7"
		elseif x == 4 and y == 5 then
			input = input.."8"
		elseif x == 6 and y == 5 then
			input = input.."9"
		elseif x == 7 and y == 3 then
			input = input.."0"
		elseif x == 7 and y == 5 then
			if input == pass then
				r.setOutput(doorDir,true)
				sleep(waitTime)
				r.setOutput(doorDir,false)
				input = ""
			else
				m.clear()
				m.setCursorPos(1,3)
				m.write("wrong!!")
				sleep(1)
				shell.run("reboot")
			end
		end
	end
	sleep(0.1)
end
