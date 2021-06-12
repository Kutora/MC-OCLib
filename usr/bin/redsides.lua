local component, sides, colors, event = require("component"), require("sides"), require("colors"), require("event")
moduTrak=0
  for i,j in ipairs(component.redstone.getBundledOutput()) do
    print(sides[i])
    for k,l in ipairs(j) do
      print("",  colors[k], l) end
    moduTrak = (moduTrak + 1)%3
    if moduTrak==0 then
      event.pull("key_down")
      print("\n\n\n")
    end
  end
moduTrak=nil
