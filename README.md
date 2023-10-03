# fists_hunting
THIS SCRIPT IS A WORK IN PROGRESS
A hunting script that supplied pelts based on the star rating of the animal you have killed

1 star = Poor
2 star = Good
3 start = Perfect

Once the animal is skinned the pelt is removed from the players hand adding it to their inventory

Domestics animals are not included, such as cows, sheep, pigs etc.

Config.lua explained.

config.debug = true, This will print the hashes configured in the client lua to the console
config.debug = false, Wont print anything.
config.pelts, all the pelts that this script will see and delete if its in your hand and add it to the inventory, if you add more please make sure you add the additional items into your items table in your databse.



To Do

-add a NPC buyer of skins although configurable in most store scripts already.
-add additional rewards for good/perfect pelts, maybe add a chance reward.

Credits
Rexshack - rsg-trapperplus, original script was inspired by a version of RSG_holding https://github.com/Rexshack-RedM/rsg-trapperplus
Elzetia - feather-trapper & Advice  https://github.com/FeatherFramework/feather-trapper

