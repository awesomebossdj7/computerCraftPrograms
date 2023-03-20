--to get this do pastebin get cfpUcegP

ws = http.websocket("")
 
args = {...}
 
fileDir = args[1]
 
 
file = fs.open(fileDir,"r")
fileData = file.readAll()
file.close()
 
serialFileData = textutils.serialise(fileData)
 
ws.send(serialFileData)
ws.close()
