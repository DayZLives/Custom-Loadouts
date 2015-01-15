Custom-Loadouts
===============

## Installation Instructions

1. Click ***[Download Zip](https://github.com/noxsicarius/Custom-Loadouts/archive/master.zip)*** on the right sidebar of this Github page.

1. Extract the downloaded folder to your desktop
1. Navigate to your ***MPMissions\\[mission]*** folder.
1. Copy the ***custom*** folder to this mission
1. Open the ***init.sqf***
	
	And past the following code:
	
	~~~~java
	call compile preprocessFileLineNumbers "custom\loadouts.sqf";	// Nox's Custom Loadout
	~~~~
	
	***ABOVE***
	~~~~java
	progressLoadingScreen 1.0;
	~~~~

1. Save the file

Class ID for items can be found here:
http://forums.dayzgame.com/index.php?/topic/137361-dayz-chernarus-class-ids/