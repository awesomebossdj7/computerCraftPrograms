ws = http.websocket("")
 
args = {...}
 
fileDir = args[1]
 
fileReceive = ws.receive()
 
fileData = textutils.unserialise(fileReceive)
 
 
file = fs.open(fileDir,"w")
file.write(fileData)
file.close()
