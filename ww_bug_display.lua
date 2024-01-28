local bugAddrs = {0x2255409, 0x2255665, 0x22558C1, 0x2255B1D, 0x2255D79, 0x2255FD5, 0x2256231, 0x225648D}

local bugNames = {"Common Butterfly", "Yellow Butterfly", "Tiger Butterfly", "Peacock", "Monarch", "Emperor", "Agrias Butterfly", "Birdwing",
                    "Moth", "Oak Silk Moth", "Honeybee", "Bee", "Long Locust", "Migratory Locust", "Mantis", "Orchid Mantis", "Brown Cicada", "Robust Cicada",
                    "Walker Cicada", "Evening Cicada", "Lantern Fly", "Red Dragonfly", "Darner Dragonfly", "Banded Dragonfly", "Ant", "Pondskater", "Snail",
                    "Cricket", "Bell Cricket", "Grasshopper", "Mole Cricket", "Walkingstick", "Ladybug", "Fruit Beetle", "Scarab Beetle", "Dung Beetle",
                    "Goliath Beetle", "Firefly", "Jewel Beetle", "Longhorn Beetle", "Saw Stag Beetle", "Stag Beetle", "Giant Beetle", "Rainbow Stag", 
                    "Dynastid Beetle", "Atlas Beetle", "Elephant Beetle", "Hercules Beetle", "Flea", "Pill Bug", "Mosquito", "Fly", "Cockroach", "Spider",
                    "Tarantula", "Scorpion"}

local bugId

function main()

    for i, bugAddr in pairs(bugAddrs) do
        bugId = memory.readbyte(bugAddr)
        local name = "255 not filled"
        if bugId < 56 then
            name = bugNames[bugId+1]
        else
            if bugId ~= 255 then
                name = "No Spawn"
            else
                name = "255 not filled"
            end
        end
    
        gui.text(0, (i*13) - 203, i..": "..name)

    end

end

gui.register(main)