shell.run("pastebin get wPtGKMam github")
shell.run("github OwOsucksAwesomeMinecraftbossAlissha6TRM computerCraftPrograms . AweOS/AweOS")
fs.move("downloads/computerCraftPrograms/AweOS/AweOS", "AweOS/")
if fs.exists("startup.lua") then
  fs.delete("startup.lua")
elseif fs.exists("startup") then
  fs.delete("startup")
end
file = fs.open("startup.lua","w")
file.write("shell.run('AweOS/PasswordSys.lua')")
file.close()
fs.delete("downloads/")
