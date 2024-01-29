local fishAddrs = {0x22531EA, 0x2253436, 0x2253682, 0x22538CE, 0x2253B1A, 0x2253D66}

local fishNames = {"Bitterling","Pale Chub","Crucian Carp","Dace","Barbel Steed","Carp","Koi","Goldfish","Popeyed Goldfish","Killifish","Crawfish","Frog","Freshwater Goby","Loach","Catfish",
                    "Eel","Giant Snakehead","Bluegill","Yellow Perch","Black Bass","Pond Smelt","Sweetfish","Cherry Salmon","Char","Rainbow Trout","Stringfish","Salmon","King Salmon",
                    "Guppy","Angelfish","Piranha","Arowana","Dorado","Gar","Arapaima","Sea Butterfly","Jellyfish","Seahorse","Clownfish","Zebra Turkeyfish","Puffer Fish","Horse Mackerel",
                    "Barred Knifejaw","Sea Bass","Red Snapper","Dab","Olive Flounder","Squid","Octopus","Football Fish","Tuna","Blue Marlin","Ocean Sunfish","Hammerhead Shark","Shark",
                    "Coelacanth","Can","Boot","Tire"}

local fishId

function main()

    for i, fishAddr in pairs(fishAddrs) do
        fishId = memory.readbyte(fishAddr)
        local name = "255 not filled"
        if fishId < 59 then
            name = fishNames[fishId+1]
        else
            name = "No Spawn ("..fishId..")"
        end

        prefix = "R"..i
        if i > 3 then
            prefix = "O"..(i-3)
        end
    
        gui.text(0, (i*13) - 203, prefix..": "..name)

    end

end

gui.register(main)