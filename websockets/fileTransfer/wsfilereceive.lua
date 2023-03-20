--to get this do pastebin get cCtrLv8L

ws = http.websocket("")
 
args = {...}
 
fileDir = args[1]
 
fileReceive = ws.receive()
 
fileData = textutils.unserialise(fileReceive)
 
 
file = fs.open(fileDir,"w")
file.write(fileData)
file.close()
ws.close()
