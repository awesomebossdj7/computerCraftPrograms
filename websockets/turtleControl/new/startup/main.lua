local oldPull = os.pullEvent
os.pullEvent = os.pullEventRaw

if os.getComputerLabel() == nil then
    shell.run(".rom/rename.lua")
end

if _G.WS == nil then
    shell.run(".rom/websocket.lua")
end

shell.run(".rom/printOverwrite.lua")

function main()
    term.write(""..os.getComputerLabel().." | "..os.getComputerID())
    while true do
        fake = _G.WS.receive()
        tbl = textutils.unserialiseJSON(fake)
        if tbl["type"] ~= nil then
            if tbl["type"] == "function" then
                if tonumber(tbl["id"]) == os.getComputerID() then
                    loadstring(tbl["msg"])()
                end
            end
        end
        sleep(0)
    end
end

function events()
    while true do
        event, arg1, arg2, arg3 = os.pullEvent()
        if event ~= "websocket_message" then
            tbl = {}
            tbl["event"] = event
            tbl["arg1"] = arg1
            tbl["arg2"] = arg2
            tbl["arg3"] = arg3
            tbl["type"] = "event"
            tbl["id"] = os.getComputerID()
            _G.WS2.send(textutils.serialiseJSON(tbl))
        end
        sleep(0)
    end
end

parallel.waitForAny(main,events)
--more code or somethin idfk i hate ni-

os.pullEvent = oldPull
