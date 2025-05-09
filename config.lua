Config = {}

Config.Target = "qb" -- Options: "qb" for qb-target, "ox" for ox_target
Config.BusFare = 150 


Config.BusStops = {
    {
        name = "Legion Square",
        coords = vector3(304.31, -764.63, 29.31), 
        heading = 253.2,
        waitTime = 30, 
        destinations = {
            {label = "Alta Street", coords = vector3(-250.13, -887.08, 30.62)},
            {label = "Jamestown Street", coords = vector3(438.35, -2032.28, 23.55)},
            {label = "Beachside", coords = vector3(-1171.09, -1473.52, 4.38)},
            {label = "City Hall", coords = vector3(-526.59, -264.87, 35.44)},
            {label = "Popular Street", coords = vector3(785.33, -1369.07, 26.6)},
            {label = "Paleto Bay", coords = vector3(-218.85, 6174.92, 31.26)},
        }
    },
    {
        name = "Alta Street",
        coords = vector3(-250.13, -887.08, 30.62), 
        heading = 334.22,
        waitTime = 30, 
        destinations = {
            {label = "Legion Square", coords = vector3(304.31, -764.63, 29.31)},
            {label = "Jamestown Street", coords = vector3(438.35, -2032.28, 23.55)},
            {label = "Beachside", coords = vector3(-1171.09, -1473.52, 4.38)},
            {label = "City Hall", coords = vector3(-526.59, -264.87, 35.44)},
            {label = "Popular Street", coords = vector3(785.33, -1369.07, 26.6)},
            {label = "Paleto Bay", coords = vector3(-218.85, 6174.92, 31.26)},
        }
    },
    {
        name = "Jamestown Street",
        coords = vector3(438.35, -2032.28, 23.55),
        heading = 309.45,
        waitTime = 30, 
        destinations = {
            {label = "Legion Square", coords = vector3(304.31, -764.63, 29.31)},
            {label = "Alta Street", coords = vector3(-250.13, -887.08, 30.62)},
            {label = "Beachside", coords = vector3(-1171.09, -1473.52, 4.38)},
            {label = "City Hall", coords = vector3(-526.59, -264.87, 35.44)},
            {label = "Popular Street", coords = vector3(785.33, -1369.07, 26.6)},
            {label = "Paleto Bay", coords = vector3(-218.85, 6174.92, 31.26)},
        }
    },
    {
        name = "Beachside",
        coords = vector3(-1171.09, -1473.52, 4.38), 
        heading = 307.3,
        waitTime = 30, 
        destinations = {
            {label = "Legion Square", coords = vector3(304.31, -764.63, 29.31)},
            {label = "Alta Street", coords = vector3(-250.13, -887.08, 30.62)},
            {label = "Jamestown Street", coords = vector3(438.35, -2032.28, 23.55)},
            {label = "City Hall", coords = vector3(-526.59, -264.87, 35.44)},
            {label = "Popular Street", coords = vector3(785.33, -1369.07, 26.6)},
            {label = "Paleto Bay", coords = vector3(-218.85, 6174.92, 31.26)},
        }
    },
    {
        name = "City Hall",
        coords = vector3(-526.59, -264.87, 35.44),  
        heading = 24.04,
        waitTime = 30, 
        destinations = {
            {label = "Legion Square", coords = vector3(304.31, -764.63, 29.31)},
            {label = "Alta Street", coords = vector3(-250.13, -887.08, 30.62)},
            {label = "Jamestown Street", coords = vector3(438.35, -2032.28, 23.55)},
            {label = "Beachside", coords = vector3(-1171.09, -1473.52, 4.38)},
            {label = "Popular Street", coords = vector3(785.33, -1369.07, 26.6)},
            {label = "Paleto Bay", coords = vector3(-218.85, 6174.92, 31.26)},
        }
    },
    {
        name = "Popular Street",
        coords = vector3(785.33, -1369.07, 26.6),  
        heading = 271.49,
        waitTime = 30, 
        destinations = {
            {label = "Legion Square", coords = vector3(304.31, -764.63, 29.31)},
            {label = "Alta Street", coords = vector3(-250.13, -887.08, 30.62)},
            {label = "Jamestown Street", coords = vector3(438.35, -2032.28, 23.55)},
            {label = "Beachside", coords = vector3(-1171.09, -1473.52, 4.38)},
            {label = "Popular Street", coords = vector3(785.33, -1369.07, 26.6)},
            {label = "Paleto Bay", coords = vector3(-218.85, 6174.92, 31.26)},
        }
    },
    {
        name = "Paleto Bay",
        coords = vector3(-218.85, 6174.92, 31.26), 
        heading = 45.03,
        waitTime = 30,
        destinations = {
            {label = "Legion Square", coords = vector3(304.31, -764.63, 29.31)},
            {label = "Alta Street", coords = vector3(-250.13, -887.08, 30.62)},
            {label = "Jamestown Street", coords = vector3(438.35, -2032.28, 23.55)},
            {label = "Beachside", coords = vector3(-1171.09, -1473.52, 4.38)},
            {label = "City Hall", coords = vector3(-526.59, -264.87, 35.44)},
            {label = "Popular Street", coords = vector3(785.33, -1369.07, 26.6)},
        }
    },
}

