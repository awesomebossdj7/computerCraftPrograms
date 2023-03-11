httpFile = http.get("https://raw.githubusercontent.com/OwOsucksAwesomeMinecraftbossAlissha6TRM/computerCraftPrograms/main/AweOS/AweOS/AweOSv1.1.lua")

file = fs.open("AweOS/AweOS.lua","r")


if httpFile.readAll() == file.readAll() then
    print("no updates!")
else
    fs.delete("AweOS/")
    shell.run("wget run https://raw.githubusercontent.com/OwOsucksAwesomeMinecraftbossAlissha6TRM/computerCraftPrograms/main/AweOSInstaller/disk/startup.lua")
end


