local gpu = peripheral.find("tm_gpu")


gpu.refreshSize()
gpu.setSize(64)

gpu.fill()
gpu.sync()

local function drawImage(image)
    gpu.fill()
    gpu.drawImage(1,1,image.ref())
    gpu.sync()
end

local args = {...}
local time = tonumber(args[2])
local files = fs.list("gif/"..args[1])

local n = 1

pcall(function()
    while true do
        if n > #files then n = 1 end
        local of = io.open("gif/"..args[1].."/"..files[n], "rb")
        local b = of._handle.read(1)
        local imgBin = {}
        while b do
            imgBin[#imgBin + 1] = ("<I1"):unpack(b);
            b = of._handle.read(1)
        end
        local image = gpu.decodeImage(table.unpack(imgBin))
        print(n.."/"..#files)
        drawImage(image)
        image.free()
        n=n+1
        sleep(time)
    end
end)