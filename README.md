# QBUS x OSM | Reputation Management Commands | Dynamic System to transfer reputation bw players.
A simple package consisting of lots of TWO COMMANDS -  `giverep` and `addrep` to make Reputation System a more interactable one, and increase RP by a bit. 

#### Features 
- `/ADDREP` - Allows Admins to Add Reputation to any online player. 
- `/GIVEREP` - Allows players to Give Reputation to Each Other. (Both must be Online)

#### Command Usage
`/addrep [id] [crafting/dealer/atcrafting] [amount]`

`/giverep [id] [crafting/dealer/atcrafting] [amount]`
```
crafting - Crafting Reputation
dealer - Dealer Reputation 
atcrafting - Attachment Crafting Reputation 
```
#### To keep number of resources lesser, I have merged this with existing Command Files. Please follow whats written in the Readme to ensure error-free setup. 

## SETUP / INSTRUCTIONS
All our work in confined to `[QB-CORE FOLDER]/server/commands.lua`. After opening this file. Paste the entire contents of file [pastethis.lua]() at the end of the commands.lua file. 
