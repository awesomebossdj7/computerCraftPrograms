-- Monitor a Big Reactor

-- First, we need to get a reference to the reactor
local reactor = peripheral.wrap("<side>")

-- Then we need to create a function to display the reactor's status
function displayReactorStatus()
  -- Get the current energy levels from the reactor
  local energyStored = reactor.getEnergyStored()
  local energyCapacity = reactor.getEnergyCapacity()

  -- Calculate the percentage of energy stored
  local energyPercent = math.floor(energyStored / energyCapacity * 100)

  -- Get the reactor's current active state
  local active = reactor.getActive()

  -- Clear the screen
  term.clear()
  term.setCursorPos(1,1)

  -- Print the current status of the reactor
  print("Reactor Status:")
  print("-----------------")
  print("Active: " .. tostring(active))
  print("Energy: " .. energyPercent .. "%")
end

-- Now we need to create a loop to continually display the reactor's status
while true do
  -- Display the reactor's status
  displayReactorStatus()

  -- Sleep for 0.1 seconds before updating the status again
  sleep(0.1)
end
