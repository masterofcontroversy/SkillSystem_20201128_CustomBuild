## Known issues:
#### -Installing the custom build with gaiden magic enabled, and again with gaiden magic disabled breaks the game
#### -Editing personal info with FEBuilder after installing does not work yet. (There's a planned fix to make it work if you don't have gaiden magic installed)

## Instructions:

### Back up your ROM before doing custom build. This is very important

Have the SkillSystems_20201128 patch installed in your ROM  

Place your most updated hacked ROM into the custombuild folder and name it "Input.gba"  

Make whatever edits you need to `Config.event` along with the other hacks if they are to be installed  

Run Skill Custom Build in FEBuilder  

FEBuilder will likely ask to uninstall some patches. You might have to allow it to, you might be able to get away with not uninstalling the patches.  
I suggest you err on the side of caution, and let FEBuilder uninstall the patches.  

NOTE: It's a good idea to do a custom build early in your project to reduce the chance of anything breaking  

## How to edit Gaiden Magic:

### Characters must have the appropriate magic rank to use gaiden spells (eg. you must have anima rank to use fire)

To change what spells units learn and when, edit `Engine Hacks/ExternalHacks/GaidenMagic/GaidenSpellsList.event`  
To change Spell HP cost, edit `Tables/FE8 Nightmare modules/GaidenSpells/GaidenSpellCostTable.csv`  

## TODO
-Expand gaiden_threepageconditional to not show page4 if the unit has not learned any spells yet.  
-Make a seperate runa page4 for gaiden magic so if it's diabled, you can still edit the personal info table in FEBuilder  
-Make an optoin to insert the vanilla code where Gaiden Magic took over so installing the custom build without it won't cause any problems  
