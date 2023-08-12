args = {...}

page = http.get(args[1])

data = page.readAll()
page.close()

file.open(args[2],"w")
file.write(data)
file.close()
