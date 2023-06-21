comp = require("component")
g = comp.glasses

fh = io.open("/home/Klarkson.obj","r")
klarkdata = fh:read("*a")
fh:close()

klark = g.addOBJModel3D()

klark.loadOBJ(klarkdata)

klark.addTranslation(2,0,2)
klark.addColor(1,0.5,0)
