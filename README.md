# fists_hunting
The Primary function of this script is complete
A hunting script that supplies pelts based on the accuracy of your shot, headshots = 3 start, multi body shots = 1 star

- 1 star = Poor
- 2 star = Good
- 3 start = Perfect

Once the animal is skinned the pelt is removed from the players hand adding it to their inventory

Domestics animals are not included, such as cows, sheep, pigs etc.

# Config.lua explained.

- config.debug = true, This will print the hashes configured in the client lua to the console
- config.debug = false, Wont print anything.
- config.pelts, all the pelts that this script will see and delete if its in your hand and add it to the inventory, if you add more please make sure you add the additional items into your items table in your databse.
- Config chance of a 3rd item 30% as Default
-      Adding Animals
 {
      pelthash    = 957520252, ---> Hash of the pelt, enable debug to check this in game
      name        = 'Poor Bear Pelt', -- -> Label Name
      item = 'poor_bear_pelt', ---> Item name in DB
      item2 = nil, Nil if none, Item Name if true like bear_meat
      item3 = nil ---> item chance to gain a third item, something like bear_claws.
  },

ALL ITEMS NEEDS TO BE IN THE ITEMS DB

# To Do

- add a NPC buyer of skins although configurable in most store scripts already.


# Credits
- Rexshack - rsg-trapperplus, original script was inspired by a version of RSG_holding https://github.com/Rexshack-RedM/rsg-trapperplus
- Elzetia - feather-trapper & Advice  https://github.com/FeatherFramework/feather-trapper

