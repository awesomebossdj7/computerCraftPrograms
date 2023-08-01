ws = http.websocket("98.209.180.144:4000")
ws2 = http.websocket("98.209.180.144:4001")

while true do
    msg = ws.receive()
    if msg == "w" then
        turtle.forward()
        --update blocks
        frontstate, frontBlk = turtle.inspect()
        downstate, downBlk = turtle.inspectDown()
        upstate, upBlk = turtle.inspectUp()
		send = {
			up = {},
			front = {},
			down = {}
		}
		if upstate then
			table.insert(send["up"], upBlk.name)
        else
            table.insert(send["up"], "minecraft:air")
        end
		if frontstate then
			table.insert(send["front"], frontBlk.name)
		else
            table.insert(send["front"], "minecraft:air")
        end
		if downstate then
			table.insert(send["down"], downBlk.name)
		else
            table.insert(send["down"], "minecraft:air")
        end
		ws2.send(textutils.serialise(send))
        
        --update pos
        --coords = table.pack(gps.locate())
        --ws2.send("coords: "..coords[1].." "..coords[2].." "..coords[3])
    elseif msg == "s" then
        turtle.back()
        --update blocks
        frontstate, frontBlk = turtle.inspect()
        downstate, downBlk = turtle.inspectDown()
        upstate, upBlk = turtle.inspectUp()
		send = {
			up = {},
			front = {},
			down = {}
		}
		if upstate then
			table.insert(send["up"], upBlk.name)
        else
            table.insert(send["up"], "minecraft:air")
        end
		if frontstate then
			table.insert(send["front"], frontBlk.name)
		else
            table.insert(send["front"], "minecraft:air")
        end
		if downstate then
			table.insert(send["down"], downBlk.name)
		else
            table.insert(send["down"], "minecraft:air")
        end
		ws2.send(textutils.serialise(send))
        
        --update pos
        --coords = table.pack(gps.locate())
        --ws2.send("coords: "..coords[1].." "..coords[2].." "..coords[3])
    elseif msg == "a" then
        turtle.turnLeft()
        --update blocks
        frontstate, frontBlk = turtle.inspect()
        downstate, downBlk = turtle.inspectDown()
        upstate, upBlk = turtle.inspectUp()
		send = {
			up = {},
			front = {},
			down = {}
		}
		if upstate then
			table.insert(send["up"], upBlk.name)
        else
            table.insert(send["up"], "minecraft:air")
        end
		if frontstate then
			table.insert(send["front"], frontBlk.name)
		else
            table.insert(send["front"], "minecraft:air")
        end
		if downstate then
			table.insert(send["down"], downBlk.name)
		else
            table.insert(send["down"], "minecraft:air")
        end
		ws2.send(textutils.serialise(send))
        
        --update pos
        --coords = table.pack(gps.locate())
        --ws2.send("coords: "..coords[1].." "..coords[2].." "..coords[3])
    elseif msg == "d" then
        turtle.turnRight()
        --update blocks
        frontstate, frontBlk = turtle.inspect()
        downstate, downBlk = turtle.inspectDown()
        upstate, upBlk = turtle.inspectUp()
		send = {
			up = {},
			front = {},
			down = {}
		}
		if upstate then
			table.insert(send["up"], upBlk.name)
        else
            table.insert(send["up"], "minecraft:air")
        end
		if frontstate then
			table.insert(send["front"], frontBlk.name)
		else
            table.insert(send["front"], "minecraft:air")
        end
		if downstate then
			table.insert(send["down"], downBlk.name)
		else
            table.insert(send["down"], "minecraft:air")
        end
		ws2.send(textutils.serialise(send))
        
        --update pos
        --coords = table.pack(gps.locate())
        --ws2.send("coords: "..coords[1].." "..coords[2].." "..coords[3])
    elseif msg == "space" then
        turtle.up()
        --update blocks
        frontstate, frontBlk = turtle.inspect()
        downstate, downBlk = turtle.inspectDown()
        upstate, upBlk = turtle.inspectUp()
		send = {
			up = {},
			front = {},
			down = {}
		}
		if upstate then
			table.insert(send["up"], upBlk.name)
        else
            table.insert(send["up"], "minecraft:air")
        end
		if frontstate then
			table.insert(send["front"], frontBlk.name)
		else
            table.insert(send["front"], "minecraft:air")
        end
		if downstate then
			table.insert(send["down"], downBlk.name)
		else
            table.insert(send["down"], "minecraft:air")
        end
		ws2.send(textutils.serialise(send))
        
        --update pos
        --coords = table.pack(gps.locate())
        --ws2.send("coords: "..coords[1].." "..coords[2].." "..coords[3])
    elseif msg == "shift" then
        turtle.down()
        --update blocks
        frontstate, frontBlk = turtle.inspect()
        downstate, downBlk = turtle.inspectDown()
        upstate, upBlk = turtle.inspectUp()
		send = {
			up = {},
			front = {},
			down = {}
		}
		if upstate then
			table.insert(send["up"], upBlk.name)
        else
            table.insert(send["up"], "minecraft:air")
        end
		if frontstate then
			table.insert(send["front"], frontBlk.name)
		else
            table.insert(send["front"], "minecraft:air")
        end
		if downstate then
			table.insert(send["down"], downBlk.name)
		else
            table.insert(send["down"], "minecraft:air")
        end
		ws2.send(textutils.serialise(send))
        
        --update pos
        --coords = table.pack(gps.locate())
        --ws2.send("coords: "..coords[1].." "..coords[2].." "..coords[3])
    elseif msg == "backslash" then
        turtle.up()
    elseif msg == "f" then
        for i=1,16 do
            turtle.select(i)
            turtle.refuel()
        end 
        turtle.select(1)
    elseif msg == "q" then
        dropMode = true
        placeMode = false
        breakMode = false
        pickupMode = false
    elseif msg == "r" then
        dropMode = false
        placeMode = true
        breakMode = false
        pickupMode = false
    elseif msg == "e" then
        dropMode = false
        placeMode = false
        breakMode = true
        pickupMode = false
    elseif msg == "t" then
        dropMode = false
        placeMode = false
        breakMode = false
        pickupMode = true
    elseif msg == "alt" and dropMode == true then
        turtle.drop()
    elseif msg == "alt" and placeMode == true then
        turtle.place()
    elseif msg == "alt" and breakMode == true then
        turtle.dig()
    elseif msg == "alt" and pickupMode == true then
        turtle.suck()
    elseif msg == "up" and dropMode == true then
        turtle.dropUp()
    elseif msg == "up" and placeMode == true then
        turtle.placeUp()
    elseif msg == "up" and breakMode == true then
        turtle.digUp()
    elseif msg == "up" and pickupMode == true then
        turtle.suckUp()
    elseif msg == "down" and dropMode == true then
        turtle.dropDown()
    elseif msg == "down" and placeMode == true then
        turtle.placeDown()
    elseif msg == "down" and breakMode == true then
        turtle.digDown()
    elseif msg == "down" and pickupMode == true then
        turtle.suckDown()
    end

end
