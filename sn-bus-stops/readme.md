## SN Bus Stops
A comprehensive bus transportation system for QBCore Framework that allows players to travel between different locations in the city using bus stops.

## Features
- Multiple bus stop locations across the city
- Easy-to-use menu system for selecting destinations
- Configurable wait times and bus fares
- Realistic waiting animations
- Map blips for easy location of bus stops
- Progress bar system for waiting time
- Support for both QB-Target and OX-Target
- Configurable targeting system

## Dependencies
- [QBCore Framework](https://github.com/qbcore-framework)
- [ox_lib](https://github.com/overextended/ox_lib)
  - [qb-target](https://github.com/qbcore-framework/qb-target)
  or 
  - [ox_target](https://github.com/overextended/ox_target)

## Installation
1. Download the script
2. Place the folder in your `resources` directory
3. Rename the folder to `sn-bus-stops`
4. Add the following to your `server.cfg`:

```cfg
ensure ox_lib
ensure eb-busstops
```

## Configuration
- Open `config.lua` to customize:
  - Target system (QB-Target or OX-Target)
  - Bus stop locations
  - Wait times
  - Bus fare costs
  - Destination points
  - Bus stop headings

### Targeting System
To switch between QB-Target and OX-Target, modify the following option in `config.lua`:

## Usage
1. Approach any bus stop marked on the map
2. Use the targeting system interaction to access the bus stop menu
3. Select your desired destination
4. Wait for the bus (default: 30 seconds)
5. Pay the bus fare (default: £150)
6. You will be automatically teleported to your destination

## Support
For support, please open an issue on the GitHub repository or contact us on our Discord server. https://discord.gg/3XqDXDDHcU


