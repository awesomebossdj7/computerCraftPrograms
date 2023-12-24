local gpu = peripheral.find("tm_gpu")

gpu.refreshSize()
gpu.setSize(64)

gpu.fill()
gpu.sync()

local function drawImage(fileName)
    local of = io.open(fileName, "rb")
    local b = of._handle.read(1)
    local imgBin = {}
    while b do
        imgBin[#imgBin + 1] = ("<I1"):unpack(b);
        b = of._handle.read(1)
    end
    local image = gpu.decodeImage(table.unpack(imgBin))
    gpu.drawImage(1,1,image.ref())
    image.free()
    gpu.sync()
end

drawImage("")
