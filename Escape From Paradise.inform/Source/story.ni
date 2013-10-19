"Escape From Paradise" by Nik Hager

the story headline is "Can you find your way back home?".
the story genre is "Adventure".
the story creation year is 2013.
release along with cover art.

When play begins:
	 say "You wake up tired and groggy in the middle of a forest. You sleepily scan your surroundings and notice that they are unfamiliar and you have no idea how you got here. You try hard to remember how you got here, but you just can't seem to find the memory. In fact, you can't find any of your memories…
	
You snatch your backpack up off the ground, sling it over your shoulders, and start your quest to explore the island in hope of discovering who you are, how you got here, and how you're going to get home.

(hint - Press L to examine your surroundings again. Items, objects, or scenery may have magically appeared while you have been observing the room.)[line break][line break](hint - Say 'talk to' instead of asking)[line break][line break](hint - Exits located in top left corner)



"




Book One [Rules, Conditions, and Actions]

Chapter One [Rules and Conditions]

[Exits from Get that Cat by Douglas Kiang]
When play begins: 
    Now left hand status line is "Exits: [exit list]"; 
    Now right hand status line is "[score]".
To say exit list: 
	Let place be location; 
	Repeat with way running through directions: 
		Let place be the room way from the location; 
		If place is a room, say " [way]".

use serial comma.


[Disable Take All from Tonic by Brianna Hartner]
Rule for deciding whether all includes something: 
	stop.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "You know what they say. Don't cheat the game, cheat the player. I think that was the saying…" instead.

[status change for rooms]
a room can be either discovered or undiscovered. a room is usually undiscovered.

[status change for enchanted items]
an object can be either enchanted or not enchanted. an object is usually not enchanted.




[Secret Doors by Andrew Owen (only doors)]

[A secret door is a kind of door.
A secret door can be revealed or unrevealed.
A secret door is unrevealed.
A secret door is scenery.
A secret door is closed.

To print the you can't go message:
	(- L__M(##Go, 2, 0); -).
	
To print the you can't see message:
	(- L__M(##Miscellany, 30, 0); -).

Instead of going through a secret door which is unrevealed:
	print the you can't go message instead.

Instead of doing something to a secret door which is unrevealed:
	print the you can't see message instead.

Instead of doing something when a secret door is the second noun and the second noun is unrevealed:
	print the you can't see message instead.]



[tile status]
[a tile is a kind of thing. a tile can be either pressed or not pressed. a tile is usually not pressed.]



[Secret Doors by Andrew Owen (doors and levers)]
A secret door is a kind of door.
A secret door can be revealed or unrevealed.
A secret door is unrevealed.
A secret door is scenery.
A secret door is closed.

A secret switch is a kind of thing.
A secret switch can be revealed or unrevealed.
A secret switch is unrevealed.
A secret switch is scenery.

To print the you can't go message:
	(- L__M(##Go, 2, 0); -).

To print the you can't see message:
	(- L__M(##Miscellany, 30, 0); -).

instead of going through a secret door which is unrevealed:
	print the you can't go message instead.

instead of doing something to a secret door which is unrevealed:
	print the you can't see message instead.

instead of doing something when a secret door is the second noun and the second noun is unrevealed:
	print the you can't see message instead.

instead of doing something to a secret switch which is unrevealed:
	print the you can't see message instead.

instead of doing something when a secret switch is the second noun and the second noun is unrevealed:
	print the you can't see message instead.


[magic word for building and pushing]

the shazam is scenery. the shazam is in the Camp.

instead of speaking shazam:
	say "The materials for the raft dance through the air and instantly construct a wooden raft.";
	remove the branches from play;
	remove the tree trunk from play;
	remove the shazam from play;
	remove the rope from play;
	remove the sail material from play;
	now the boat is in the Camp.

instead of pushing the boat to the north:
	if the player is in the Camp:
		move the player to the Southern Forest;
		move the boat to the Southern Forest;
		say "You push the raft north to the Southern Forest.";
		stop the action;
	if the player is in the Southern Forest:
		move the player to the Central Forest;
		move the boat to the Central Forest;
		say "You push the raft north to the Central Forest.";
		stop the action;
	if the player is in the Central Forest:
		say "There is no moving water source this way. Why would you want to make more work for yourself?";
		stop the action;
	if the player is in the Beach:
		say "You are already at the ocean. Why would you make more work for yourself?";
		stop the action;
	if the player is in the Cove:
		say "You can't go that way. A cliff blocks the way.";
		stop the action;
	If the player is in the Eastern Forest:
		say "You can't go that way. Dense trees block the way.";
		stop the action.

instead of pushing the boat to the south:
	If the player is in the Camp:
		move the player to the Beach;
		move the boat to the Beach;
		say "You push the raft south to the Beach.";
		stop the action;
	If the player is in the Southern Forest:
		move the player to the Camp;
		move the boat to the Camp;
		say "You push the raft south to the Camp.";
		stop the action;
	If the player is in the Central Forest:
		move the player to the Southern Forest;
		move the boat to the Southern Forest;
		say "You push the raft south to the Camp.";
		stop the action;
	If the player is in the Cove:
		say "You can't go that way. A cliff blocks the way.";
		stop the action;
	If the player is in the Eastern Forest:
		say "You can't go that way. Dense trees block the way.";
		stop the action;
	If the player is in the Beach:
		say "Are you sure you want to push the raft into the water[if the shadow fang is not in the lair] without enchanting it first[end if]?";
		if the player consents:
			now the boat is in the ocean.
	
instead of pushing the boat to the east:
	If the player is in the Camp:
		say "You can't go that way. Dense trees block the way.";
		stop the action;
	If the player is in the Southern Forest:
		say "You can't go that way. Dense trees block the way.";
		stop the action;
	If the player is in the Central Forest:
		move the player to the Eastern Forest;
		move the boat to the Eastern Forest;
		say "You push the raft east to the Eastern Forest.";
		stop the action;
	If the player is in the Cove:
		say "Are you sure you want to push the raft into the water[if the shadow fang is not in the lair] without enchanting it first[end if]?";
		if the player consents:
			now the boat is in the ocean;
	If the player is in the Eastern Forest:
		say "Are you sure you want to push the raft into the water[if the shadow fang is not in the lair] without enchanting it first[end if]?";
		if the player consents:
			now the boat is in the river;
	If the player is in the Beach:
		say "Why would you want to push the raft down the beach? That sounds pointless to me.";
		stop the action.
		
				
instead of pushing the boat to the west:
	If the player is in the Camp:
		say "You can't go that way. Dense trees block the way.";
		stop the action;
	If the player is in the Southern Forest:
		say "You can't go that way. Dense trees block the way.";
		stop the action;
	If the player is in the Central Forest:
		say "There is no moving water source this way. Why would you want to make more work for yourself?";
		stop the action;
	If the player is in the Cove:
		say "You are already at the ocean. Why would you make more work for yourself?";
		stop the action;
	If the player is in the Eastern Forest:
		say "You are already at the river. Why would you make more work for yourself?";
		stop the action;
	If the player is in the Beach:
		say "Why would you want to push the raft down the beach? That sounds pointless to me.";
		stop the action.



Chapter Two [Actions]

understand "talk to [someone]" as talking to.
talking to is an action applying to one thing.

understand "put [something] in [something]" as putting.
putting is an action applying to two things.

understand "press [something]" as pressing.
pressing is an action applying to one thing.

understand "build [something]" as building.
building is an action applying to one thing.

understand "fill [something]" as filling.
filling is an action applying to one thing.

understand "help [something]" as helping.
helping is an action applying to one thing.

understand "say [something]" as speaking.
speaking is an action applying to one thing.

understand "explore" as exploring.
exploring is an action applying to nothing.

instead of exploring:
	say "The best explorers never take the easy way out. They explore everything thoroughly and individually. A wise balloon once told me that while I was eating crayons with a giant floating fish head…"

instead of asking a person about something:
	say "Try talking to him. He might not have an answer for your wierd questions.".

Chapter Three [Endings]

[Victories]

Every turn:
	If the boat is in the river:
		say "You push the raft into the water and watch it as it floats, bobbing in the river. You turn around and take one last look at the forest before you [if boat is not enchanted]sail away down the river and out into the ocean, watching the island until it disappears over the horizon.[end if][if boat is enchanted]close your eyes and say, 'I wish I was back home!'
		You feel a strong whipping wind swirl around you, causing the raft to jolt around viciously. You feel yourself lifting into the air and slowly losing consciousness before you black out completely.
		When you shake off the dizziness and open your eyes, you are laying on your bed at home staring up at the ceiling. All your memories are coming back now. You remember that your name is James Palazo, you are 24 years old, you live in Boston Massachusetts, and seeing as the time is 4:00 PM, you're late for the Red Sox game! And you're gonna have to move that raft out of your bedroom later…[end if]";
		if the boat is enchanted:
			increase score by 10;
		if the boat is not enchanted:
			increase score by 8;
		end the game in victory.


Every turn:		
	If the boat is in the ocean:
		say "You push the raft into the water and watch it as it floats, bobbing in the cool ocean. You turn around and take one last look at the island before you [if boat is not enchanted]sail away, watching the island until it disappears over the horizon.[end if][if boat is enchanted]close your eyes and say, 'I wish I was back home!'
		You feel a strong whipping wind swirl around you, causing the raft to jolt around viciously. You feel yourself lifting into the air and slowly losing consciousness before you black out completely.
		When you shake off the dizziness and open your eyes, you are laying on your bed at home staring up at the ceiling. All your memories are coming back now. You remember that your name is James Palazo, you are 24 years old, you live in Boston Massachusetts, and seeing as the time is 4:00 PM, you're late for the Red Sox game! And you're gonna have to move that raft out of your bedroom later…[end if]";
		if the boat is enchanted:
			increase score by 10;
		if the boat is not enchanted:
			increase score by 8;
		end the game in victory.








[Deaths]










Chapter Four [Score and Rankings]

Table of Rankings
Score	Rank
0	"Noob Adventurer"
1	"Noob Adventurer"
2	"Noob Adventurer"
3	"Noob Adventurer"
4	"Noob Adventurer"
5	"Noob Adventurer"
6	"Noob Adventurer"
7	"Noob Adventurer"
8	"Noob Adventurer"
9	"Noob Adventurer"
10	"Noob Adventurer"
11	"Noob Adventurer"
12	"Student Adventurer"
13	"Student Adventurer"
14	"Student Adventurer"
15	"Student Adventurer"
16	"Student Adventurer"
17	"Intermediate Adventurer"
18	"Intermediate Adventurer"
19	"Intermediate Adventurer"
20	"Intermediate Adventurer"
21	"Intermediate Adventurer"
22	"Expert Adventurer"
23	"Expert Adventurer"
24	"Expert Adventurer"
25	"Expert Adventurer"
26	"Expert Adventurer"
27	"Master Adventurer"
28	"Master Adventurer"
29	"Master Adventurer"
30	"Master Adventurer"
31	"Master Adventurer"
32	"Legendary Adventurer"
33	"Legendary Adventurer"
34	"Legendary Adventurer"
35	"Legendary Adventurer"
36	"Legendary Adventurer"
37	"Legendary Adventurer"
38	"Your Exploring is Godlike!"
39	"Your Exploring is Godlike!"
40	"Your Exploring is Godlike!"
41	"Your Exploring is Godlike!"
42	"Your Exploring is Godlike!"
43	"Your Exploring is Godlike!"
44	"Indiana Jones should take some notes on your exploring."
45	"Indiana Jones should take some notes on your exploring."
46	"Indiana Jones should take some notes on your exploring."
47	"Indiana Jones should take some notes on your exploring."
48	"Indiana Jones should take some notes on your exploring."
49	"Indiana Jones should take some notes on your exploring."
50	"Indiana Jones should take some notes on your exploring."
51	"Indiana Jones should take some notes on your exploring."
52	"Indiana Jones should take some notes on your exploring."
53	"Indiana Jones should take some notes on your exploring."




before examining yourself for the first time:
	increase score by 3;
	continue the action.

before examining fire pit for the first time:
	increase score by 1;
	continue the action.

before examining backpack for the first time:
	increase score by 1;
	continue the action.

before examining tent for the first time:
	increase score by 1;
	continue the action.

before examining knife for the first time:
	increase score by 2;
	continue the action.

before examining coil of rope for the first time:
	increase score by 1;
	continue the action.

before examining bottle for the first time:
	increase score by 1;
	continue the action.

before examining rocks for the first time:
	increase score by 1;
	continue the action.

before examining ashes for the first time:
	increase score by 1;
	continue the action.

before examining burnt wood for the first time:
	increase score by 1;
	continue the action.

before examining sail material for the first time:
	increase score by 1;
	continue the action.

before examining ocean for the first time:
	increase score by 1;
	continue the action.

before examining boat for the first time:
	increase score by 1;
	continue the action.

before examining sand for the first time:
	increase score by 1;
	continue the action.

before examining water for the first time:
	increase score by 1;
	continue the action.

before examining cliffs for the first time:
	increase score by 1;
	continue the action.

before examining trees for the first time:
	increase score by 1;
	continue the action.

before examining leaves for the first time:
	increase score by 1;
	continue the action.

before examining river for the first time:
	increase score by 1;
	continue the action.

before examining shadow fang for the first time:
	increase score by 1;
	continue the action.

before examining tooth for the first time:
	increase score by 1;
	continue the action.

before examining magic key for the first time:
	increase score by 1;
	continue the action.

before examining magical box for the first time:
	increase score by 1;
	continue the action.

before examining sky for the first time:
	increase score by 2;
	continue the action.

before examining strange rock for the first time:
	increase score by 1;
	continue the action.

before examining engravings for the first time:
	increase score by 1;
	continue the action.

before examining blueprints for the first time:
	increase score by 1;
	continue the action.

before examining map for the first time:
	increase score by 1;
	continue the action.

before examining walls for the first time:
	increase score by 1;
	continue the action.

before examining wall for the first time:
	increase score by 1;
	continue the action.

before examining trophies for the first time:
	increase score by 1;
	continue the action.

before examining young boy for the first time:
	increase score by 1;
	continue the action.

before examining shaman for the first time:
	increase score by 1;
	continue the action.

before examining stairs for the first time:
	increase score by 1;
	continue the action.

before examining statues for the first time:
	increase score by 1;
	continue the action.

before examining golden door for the first time:
	increase score by 1;
	continue the action.

before examining wall for the first time:
	increase score by 1;
	continue the action.

before examining dark stone for the first time:
	increase score by 2;
	continue the action.

before examining golden statue for the first time:
	increase score by 1;
	continue the action.

before examining magic eyeglass for the first time:
	increase score by 1;
	continue the action.

before examining chief for the first time:
	increase score by 1;
	continue the action.

before examining sun for the first time:
	increase score by 1;
	continue the action.






Book Two [Rooms and Items]

Chapter One [The Camp]

The Camp is a room. The description of the Camp is "The camp is set up in a small clearing between four huge canopy trees for shade and shelter from rain. You notice there is a fire pit in the middle that you must have build before, but the fire has burnt out leaving a mound of ash surrounded by charred rocks.[if the shadow fang is tame] The shadow fang follows you closely.[end if][if the boat is in the Camp] The raft sits on the forest floor.[end if]"

instead of examining the player:
	say "You are a middle aged man. You have slightly tanned skin and are fairly muscular. You cannot see your face and you have no memories of your life.[if the river is examined] You remember your face and the stubble on your face.[end if]"


The fire pit is scenery in the Camp. The description of the fire pit is "Charred pebbles line the firepit. It is filled with burnt wood and ashes."

understand "fire", "pit", "fireplace", "firepit" as fire pit.




The backpack is an object. The backpack is a container. The player is carrying the backpack.

instead of opening the backpack:
	say "You take your backpack off and examine its contents.[line break][line break]Inside your backpack is [contents of backpack]."


The tent is an object. The tent is in the Camp. The description of the tent is "A normal camping tent. It is made out of a material that is strong, yet thin."

instead of taking the tent:
	say "You fold up the tent and put it into your backpack. Wow this bag is big!";
	now the tent is in the backpack.

The knife is an object. The knife is in the Camp. 
instead of examining the knife:
	say "A normal metal knife for cutting or stabbing things. You are unable to see your reflection in the blade as it is small and distorted."

understand "blade", "dagger", "shank", "nife", "kife", "knif", "knive", "dag" as the knife.

Instead of taking knife:
	say "You pick up the knife and put it in the front pocket of your backpack.";
	now the knife is in the backpack.



The coil of rope is an object. The coil of rope is in the Camp. The description of the coil of rope is "A coil of rope. This could be used to fasten things together."

Understand "rope", "coil", "roll", "twine", "string" as coil of rope.

Instead of taking coil of rope:
	say "You roll up the rope and put it into your backpack.";
	now the coil of rope is in the backpack.



The bottle is an object. The bottle is in the Camp. The bottle is a container. The bottle can be either full or empty. The bottle is empty. The description of the bottle is "[if the bottle is empty]An empty plastic bottle. You could fill it up with clean water if you have the need for something to drink.[end if][if the bottle is full]A plastic bottle full of fresh water from the river.[end if]"

Instead of taking bottle:
	say "You pick up the empty bottle and put it into your backpack.";
	now the bottle is in the backpack.

Instead of filling the bottle:
	if the bottle is in the backpack:
		if the bottle is empty:
			if the player is in the Camp:
				say "There is no water here.";
				stop the action;
			if the player is in the Southern Forest:
				say "There is no water here.";
				stop the action;
			if the player is in the Northern Forest:
				say "There is no water here.";
				stop the action;
			if the player is in the Central Forest:
				say "There is no water here.";
				stop the action;
			if the player is in the Western Forest:
				say "There is no water here.";
				stop the action;
			if the player is in the Mountain Base:
				say "There is no water here.";
				stop the action;
			if the player is in the Mountain Summit Shrine:
				say "There is no water here.";
				stop the action;
			if the player is in the Hidden Shrine Room:
				say "There is no water here.";
				stop the action;
			if the player is in the Lair:
				say "There is no water here.";
				stop the action;
			if the player is in the Village:
				say "Don't steal the village's water! Go find your own!";
				stop the action;
			if the player is in the Shaman's Hut:
				say "You wouldn't want to drink any of the liquids in here. You don't know what would happen.";
				stop the action;
			if the player is in the Chief's Hut:
				say "This is a hut, not a spring. There is no water here.";
				stop the action;
			if the player is in the Beach:
				say "Don't drink the sea water. It makes people go insane. Go find some fresh water. There has to be some kind of fresh water source on this island.";
				stop the action;
			if the player is in the Cove:
				say "Don't drink the sea water. It makes people go insane. Go find some fresh water. There has to be some kind of fresh water source on this island.";
				stop the action;
			if the player is in the Eastern Forest:
				say "You dip your bottle into the stream and fill it with sparkling pure water.";
				now the water is in the bottle;
				now the bottle is full;
				stop the action;
		If the bottle is full:
			say "How are you gonna fill a full bottle of water? It seems pointless to me…";
			stop the action.


After examining the fire pit for the first time:
	now the rocks is in the Camp;
	now the ashes is in the Camp;
	now the burnt wood is in the Camp.
	
some rocks is an object. The description of the rocks is "Charred rocks lining the fire pit. They are black with soot from the fire."

instead of taking some rocks:
	say "Why would you want to take the rocks? What would you do with them?";
	stop the action.

some ashes are an object.

instead of taking some ashes:
	say "What would you ever need ashes for?";
	stop the action.

some burnt wood is an object.

instead of taking burnt wood:
	say "Why would you want to take burnt wood when you are surrounded by thousands of healthy trees? Go find some wood somewhere else.";
	stop the action.

the sail material is a an object.

instead of cutting the tent:
	if the knife is in the backpack:
		if the blueprints are in the backpack:
			say "You take out the knife and cut out a large sail-shaped piece of fabric out of the tent's strong, yet thin material. This will work well as a sail.";
			now the sail material is in the backpack;
		else:
			say "Why would you want to waste this perfectly good tent? What has it ever done to you?";
	else:
		say "Even if you did want to cut the tent, you have nothing to cut it with.".














Chapter Two [The Beach]

The Beach is a room. The Beach is south of the Camp. The description of the Beach is "You head south, weaving through the trees, watching the grassy terrain of the jungle slowly fade to dirt. Soon, the dirt is gone and you can see the ocean through the remainder of the trees. You burst through the gap out of  the foliage and into the light. The sand heats your toes and sends a warm surge throughout your body. The relaxing sun shines down onto the water, causing it to shimmer with brilliance.[if the shadow fang is tame] The shadow fang follows you closely.[end if]"

the ocean is scenery in the Beach. the ocean is fixed in place. the ocean is a container. The description of the ocean is "The sparkling waters glitter in the sun. You stare out at the horizon, longing for the day when you can sail away to return home, leaving this island behind you."

Every turn:
	if the player is in the cove:
		now the ocean is in the cove;
	if the player is in the beach:
		now the ocean is in the beach.

the sun is scenery in the camp.

Every turn:
	if the player is in the Camp:
		now the sun is in the Camp;
	if the player is in the cove:
		now the sun is in the cove;
	if the player is in the beach:
		now the sun is in the beach;
	if the player is in the southern forest:
		now the sun is in the southern forest;
	if the player is in the northern forest:
		now the sun is in the northern forest;
	if the player is in the central forest:
		now the sun is in the central forest;
	if the player is in the western forest:
		now the sun is in the western forest;
	if the player is in the eastern forest:
		now the sun is in the eastern forest;
	if the player is in the lair:
		now the sun is in the lair;
	if the player is in the village:
		now the sun is in the village;
	if the player is in the mountain summit shrine:
		now the sun is in the mountain summit shrine;
	if the player is in the mountain base:
		now the sun is in the mountain base;
	if the player is in the hidden shrine room:
		now the sun is in the hidden shrine room;
	if the player is in the shaman's hut:
		now the sun is in the shaman's hut;
	if the player is in the chief's hut:
		now the sun is in the chief's hut.
		
instead of examining the sun:
	if the sun is in the central forest:
		say "The trees of the forest block out the sun.";
	if the sun is in the western forest:
		say "The trees of the forest block out the sun.";
	if the sun is in the eastern forest:
		say "The trees of the forest block out the sun.";
	if the sun is in the southern forest:
		say "The trees of the forest block out the sun.";
	if the sun is in the camp:
		say "The trees of the forest block out the sun.";
	if the sun is in the lair:
		say "The trees of the forest block out the sun.";
	if the sun is in the shaman's hut:
		say "You can't look through the ceiling. You don't have x-ray vision.";	
	if the sun is in the chief's hut:
		say "You can't look through the ceiling. You don't have x-ray vision.";	
	if the sun is in the hidden shrine room:
		say "You can't look through the ceiling. You don't have x-ray vision.";	
	if the sun is in the cove:
		say "The sun shines bright in the sky. You can't examine it closely though. You wouldn't want to hurt your eyes.";
	if the sun is in the northern forest:
		say "A beam of light shines down from the sky illuminating the [if the strange rock is in the northern forest]strange rock[end if][if the magical box is in the northern forest]magical box[end if]. You can't examine it closely though. You wouldn't want to hurt your eyes.";
	if the sun is in the mountain summit shrine:
		say "The sun shines bright in the sky. You can't examine it closely though. You wouldn't want to hurt your eyes.";
	if the sun is in the village:
		say "The sun shines bright in the sky. You can't examine it closely though. You wouldn't want to hurt your eyes.";
	if the sun is in the beach:
		say "The sun shines bright in the sky. You can't examine it closely though. You wouldn't want to hurt your eyes.".
		
	


The boat is an object.
understand "raft", "canoe", "kayak", "dingy" as the boat.

instead of taking the boat:
	say "That is much too heavy to carry.";
	stop the action.
	
the description of the boat is "A wooden raft made of materials you collected and built with magic."


[ending that did not work]

[water is an object. water is in the beach. water is a container.

understand "ocean", "river", "stream", "lake", "pond", "sea", "shore", "waves", "wave", "cove", "beach" as water.

every turn:
	if the player is in the beach:
		move the water to the beach.
	
every turn:
	if the player is in the cove:
		move the water to the cove.

every turn:
	if the player is in the eastern forest:
		move the water to the eastern forest.]

[Instead of taking the water:
	if the bottle is in the backpack:
		if the water is in the beach:
			say "You can't fill your bottle with ocean water. That's nasty.";
			stop the action;
		if the water is in the cove:
			say "You can't fill your bottle with ocean water. That's nasty.";
			stop the action;
		if the water is in the eastern forest:
			say "You fill the bottle with cool, fresh, drinking water from the river.";
			now the water is in the bottle;
			continue the action;
	if the bottle is not in the backpack:
		say "You don't have anything to fill with water.";
		stop the action.]


the sand is scenery. the description of the sand is "Tiny white grains of sand. The sand is warm from the heat of the sun."

every turn:
	if the player is in the beach:
		now the sand is in the beach;
	if the player is in the cove:
		now the sand is in the cove.












Chapter Three [The Cove]

The Cove is a room. The Cove is east of the Camp. The description of the Cove is "You make your way through the lively jungle until you reach a small cove. There are huge stone cliffs on either side of the shore, isolating it from the rest of the island's beaches.[if the shadow fang is tame] The shadow fang follows you closely.[end if]"

the cliffs are scenery in the cove. the description of the cliffs is "The stone cliffs are divide the cove from the rest of the island's beaches. They appear to have kept this area quiet and peaceful for centuries.".

understand "cliff" as the cliffs.

instead of climbing the cliffs:
	say "That sure is a long way up. Are you sure you want to climb up the cliff?";
	if the player consents:
		say "[line break]You find a foothold and begin climbing up the cliff. Ten minutes pass, then twenty. You have almost reached the top. What an achievement that would be.[line break][line break]Suddenly, a bird swoops down, plummetting through the air at full speed. You move your head just in time to avoid the kamakazi avian. Instead of colliding with your face, the bird smashes into the cliff just above you causing the stone to crumble and fall off into the cove, with you following closely behind.[line break]… [line break]………   [line break]…………………       [line break][line break]SPLASH!!!!";
		end the game in death;
	else:
		say "Good choice. You wouldn't want to die before finishing your adventure. It's better not to take risks like this.";
		stop the action.













Chapter Four [The Forest]

[The Southern Forest]
The Southern Forest is a room. The Southern Forest is north of the Camp. The description of the Southern Forest is "All you can see in every direction is the forest. The huge trees blocking out the light from the sun, the brush and bushes covering the forest floor, and the sound of small animals scurrying about around you, cracking the leaves as they run. You can see your camp is to the south.[if the shadow fang is tame] The shadow fang follows you closely.[end if]"

gargantuan are scenery in the camp. the description of the gargantuan is "You listen closely and hear the animals running through the forest. You are unable to see any of the animals though. They are very small and from the sounds, they are fairly far away."

understand "animals", "animal", "critters", "critter", "crackling", "creature", "creatures", "noises", "noice", "sound", "sounds", "scurrying" as gargantuan.

every turn:
	if the player is in the Camp:
		now the gargantuan are in the Camp;
	if the player is in the Southern Forest:
		now the gargantuan are in the Southern Forest;
	if the player is in the Northern Forest:
		now the gargantuan are in the Northern Forest;
	if the player is in the Eastern Forest:
		now the gargantuan are in the Eastern Forest;
	if the player is in the Central Forest:
		now the gargantuan are in the Central Forest;
	if the player is in the Western Forest:
		now the gargantuan are in the Western Forest.
	



Before going north in the Southern Forest:
	say "You journey deeper into the forest. 
	
	";
	Continue the action.

the trees are scenery. the trees are in the Camp. the description of the trees is "The trees stand tall and strong. The power of nature drifts through them, whispering through their branches and shaking their leaves to the ground.".

the leaves are scenery. the leaves are in the Camp. the description of the leaves is "The leaves are of various colors and sizes. They rest on the forest floor, longing to be absorbed by nature so they can be reborn again.".

understand "leaf", "leave" as the leaves.

understand "tree", "trees", "forest", "jungle", "folliage" as the trees.

every turn:
	if the player is in the Camp:
		now the trees are in the Camp;
		now the leaves are in the Camp;
	if the player is in the Southern Forest:
		now the trees are in the Southern Forest;
		now the leaves are in the Southern Forest;
	if the player is in the Central Forest:
		now the trees are in the Central Forest;
		now the leaves are in the Central Forest;
	if the player is in the Northern Forest:
		now the trees are in the Northern Forest;
		now the leaves are in the Northern Forest;
	if the player is in the Eastern Forest:
		now the trees are in the eastern forest;
		now the leaves are in the Eastern Forest;
	if the player is in the Western Forest:
		now the trees are in the Western Forest;
		now the leaves are in the Western Forest;
	if the player is in the Lair:
		now the trees are in the Lair;
		now the leaves are in the Lair.

		












[The Central Forest]

Before going north in the Central Forest:
	say "You journey deeper into the forest. 
	
	";
	Continue the action.
	
The Central Forest is a room. The Central Forest is north of the Southern Forest. The description of the Central Forest is "All you can see in every direction is the forest. The huge trees blocking out the light from the sun, the brush and bushes covering the forest floor, and the sound of small animals scurrying about around you, cracking the leaves as they run.[if the shadow fang is tame] The shadow fang follows you closely.[end if] There is a mountain to the north and your camp is to the south."
















[The Eastern Forest]

The Eastern Forest is a room. The Eastern Forest is east of the Central Forest. The description of the Eastern Forest is "All you can see in every direction is the forest. The huge trees blocking out the light from the sun, the brush and bushes covering the forest floor, and the sound of small animals scurrying about around you, cracking the leaves as they run.[if the shadow fang is tame] The shadow fang follows you closely.[end if]"


the river is scenery in the Eastern Forest. The river is fixed in place. The river is a container. the river can be examined or not examined. The river is not examined.

Instead of examining the river:
	say "Clear, clean water flowing down from the mountains. You can see your reflection in the water. The stubble on your face and your complexion don't bring back any of your memories.";
	now the river is examined.

some water is an object. some water is in the river.

check going east in the Eastern Forest:
	if the Chief is in the Mountain Summit Shrine:
		say "You wouldn't want to get lost. Better stay on this side of the river for now.";
		stop the action.









[The Lair]

The Lair is a room. The Lair is east of the Eastern Forest. The description of the Lair is "You wade through the cold river water and reach a small clearing enclosed by towering walls of stone on every side. [if the shadow fang is wild]The shadow fang lays curled up against the stone. It looks weak and tired, like it could use some help.[end if][if the shadow fang is tame]The shadow fang runs around playfully. It is obviously happy to be back home. [end if]Its lair is littered with skulls of the mystical beast's prey and smells of… flowers? Well that isn't very intimidating is it?"

The shadow fang is a person in the Lair. the shadow fang can be either wild or tame. The shadow fang is wild. The description of the shadow fang is "A large wolf-like creature with sleek black fur. It has huge fangs[if shadow fang is wild] and looks very tired and thirsty. It might attack you if you get too close.[end if][if shadow fang is tame], but is very grateful for your help. It follows you happily as it accepts you as its owner.[end if]"

understand "wolf", "fox", "creature", "being", "beast", "animal", "dog", "puppy", "savage", "fang", "shadow", "dark" as the shadow fang.

instead of talking to the shadow fang:
	say "You wouldn't want to startle him.";
	stop the action.

Instead of taking the shadow fang:
	say "You can't take the Shadow Fang. It's alive[if shadow fang is wild] and very hungry. It would probably eat you.[end if][if shadow fang is tame]. You would lose its trust and it would eat you.[end if]".

instead of helping the shadow fang:
	if the shadow fang is wild:
		if the bottle is in the backpack:
			if the bottle is full:
				say "You give the shadow fang some of your water and it gradually starts to feel better. It is extremely grateful for your act of kindness and decides to follow you around, accepting you as its master.";
				now the bottle is empty;
				now the shadow fang is tame;
				now the water is in the river;
				stop the action;
			if the bottle is empty:
				say "The shadow fang looks thirsty. You could help it by getting it some water.";
				stop the action;
		else:
			say "The shadow fang looks thirsty. You could help it by getting it some water.";
			stop the action;
	if the shadow fang is tame:
		say "You have already helped the shadow fang. It is extremely grateful for your act of kindness and is following you, its master.";
		stop the action.
		
instead of giving water to the shadow fang:
	if the shadow fang is wild:
		if the bottle is in the backpack:
			if the bottle is full:
				say "You give the shadow fang some of your water and it gradually starts to feel better. It is extremely grateful for your act of kindness and decides to follow you around, accepting you as its master.";
				now the bottle is empty;
				now the shadow fang is tame;
				now the water is in the river;
				stop the action;
			if the bottle is empty:
				say "The shadow fang looks thirsty. You could help it by getting it some water.";
				stop the action;
		else:
			say "The shadow fang looks thirsty. You could help it by getting it some water.";
			stop the action;
	if the shadow fang is tame:
		say "You have already helped the shadow fang. It is extremely grateful for your act of kindness and is following you, its master.";
		stop the action.


the tooth is a thing. the description of the tooth is "A long golden fang. There appears to be darkness swirling around on the inside of the tooth. It is all that is left of the shadow fang."

instead of taking the tooth:
	say "You pick up the tooth and put it into your pocket.";
	continue the action.

instead of attacking the shadow fang:
	if the knife is in the backpack:
		say "You take the knife out of your backpack and slowly approach the shadow fang. It stares up at you growling angrily, but doesn't move an inch. It seems to be disoriented and tired, but this is your task and you must complete it to return home. You run up and stab the beast causing it to explode in a shower of golden dust and swirls of black smoke. All that is left of the creature is a single golden tooth sitting on the ground.";
		remove the shadow fang from play;
		now the tooth is in the lair;
	else:
		say "Are you sure you want to attack the shadow fang without a weapon?";
		if the player consents:
			say "You run up and slap the shadow fang. Angered by this action, the shadow fang gets up and eats you whole.";
			end the game in death;
		else:
			say "Good choice.";
			stop the action.
		


Every turn:
	if the shadow fang is tame:
		if the player is in the Eastern Forest:
			now the shadow fang is in the Eastern Forest;
		if the player is in the Central Forest:
			now the shadow fang is in the Central Forest;
		if the player is in the Western Forest:
			now the shadow fang is in the Western Forest;
		if the player is in the Northern Forest:
			now the shadow fang is in the Northern Forest;
		if the player is in the Southern Forest:
			now the shadow fang is in the Southern Forest;
		if the player is in the Camp:
			now the shadow fang is in the Camp;
		if the player is in the Village:
			now the shadow fang is in the Village;
		if the player is in the Shaman's Hut:
			now the shadow fang is in the Shaman's Hut;
		if the player is in the Chief's Hut:
			now the shadow fang is in the Chief's Hut;
		if the player is in the Lair:
			now the shadow fang is in the Lair;
		if the player is in the Mountain Base:
			now the shadow fang is in the Mountain Base;
		if the player is in the Mountain Summit Shrine:
			now the shadow fang is in the Mountain Summit Shrine;
		if the player is in the Hidden Shrine Room:
			now the shadow fang is in the Hidden Shrine Room.

















[The Northern Forest]

The Northern Forest is a room. The Northern Forest is north of the Central Forest. The description of the Northern Forest is "You walk out of the trees and into a small clearing. All you can see in every direction is the forest. You hear the sound of small animals scurrying about around you, cracking the leaves as they run. A narrow beam of light shines through a gap in the forest canopy, illuminating a large rock here with strange engravings on it.[if the shadow fang is tame] The shadow fang follows you closely.[end if]"


The magic key is an object. The magic key unlocks the magical box. the description of the magic key is "A large golden key that constantly fades in and out of existance. It dissapears and reappears constantly as if it is just a figment of your imagination."

The sky is scenery. 

instead of examining the sky:
	if the magical box is not read:
		say "You look up at the sky and gaze at the stars. The beautiful constellations are extremely beautiful here as the sky is clean and clear.";
	if the magical box is read:
		say "You look up at the sky and concentrate on the star constellations. A bright blue flash fills the sky energy and a bright blue line instantly forms in the sky, connecting the dots with the stars and forming words in the sky: 'You already possess the key to success.'";
		now the magic key is in the backpack;
		now the magical box is not read.

understand "skies", "space", "universe", "planets", "star", "stars", "planet", "constellation", "constellations", "solar system" as the sky.

every turn:
	if the player is in the Beach:
		now the sky is in the Beach;
	if the player is in the Camp:
		now the sky is in the Camp;
	if the player is in the Southern Forest:
		now the sky is in the Southern Forest;
	if the player is in the Central Forest:
		now the sky is in the Central Forest;
	if the player is in the Northern Forest:
		now the sky is in the Northern Forest;
	if the player is in the village:
		now the sky is in the village;
	if the player is in the Eastern Forest:
		now the sky is in the eastern forest;
	if the player is in the Western Forest:
		now the sky is in the Western Forest;
	if the player is in the Cove:
		now the sky is in the Cove.

The strange rock is an object in the Northern Forest. The strange rock is fixed in place.

Instead of examining the strange rock:
	say "You examine the strange rock and see that it has strange engravings on it. You rub the engravings and the rock emanates a soft golden glow. When the light fades away, the rock is gone. In its place is a magical golden box radiating with a shimmering golden aura.";
	remove the strange rock from play;
	now the magical box is in the Northern Forest.

The magical box is an object. The magical box is fixed in place. The magical box is an openable container. The magical box is closed. The magical box is lockable and locked. The magical box can be either read or not read. The magical box is not read.

instead of taking the magical box:
	say "The box is bound to the ground by some kind of hidden force.";
	stop the action.

the engravings are scenery in the Northern Forest.
instead of examining the engravings:
	if the Magical Box is open:
		say "The engravings disappeared when you solved the riddle.";
	if the Strange Rock is in the Northern Forest:
		say "The engravings are not clear enough to read.";
	if the Magical Box is locked:
		if the magic eyeglass is in the backpack:
			say "You take the eyeglass out the front pocket of your backpack and look through it, examining the engravings on the box. You watch as the symbols scatter around, rearranging themselves into letters and words you understand. 
		
It reads, 'To get to the treasures lurking inside. Look to the sky. Let the stars be your guide.'
		
Hmmm. I wonder what that means.";
			now the magical box is read;
		else:
			say "The engravings are clearer now, but they are written in another language that you cannot understand.".


Every turn:
	if the magic key is in the backpack:
		now the magical box is unlocked;
		now the magical box is open.

Instead of examining the magical box:
	if the magical box is locked:
		if the magic eyeglass is in the backpack:
			say "You take the eyeglass out the front pocket of your backpack and look through it, examining the engravings on the box. You watch as the symbols scatter around, rearranging themselves into letters and words you understand. 
		
It reads, 'To get to the treasures lurking inside. Look to the sky. Let the stars be your guide.'
		
Hmmm. I wonder what that means.";
			now the magical box is read;
		else:
			say "A magical golden box radiating with a shimmering golden aura. It has the same strange engravings as the rock, but they are clearer now.";
	if the magical box is unlocked:
		say "A magical golden box radiating with a shimmering golden aura. The engravings are gone and the box is open. In the box are [contents of box].".

Understand "box", "gold", "golden box", "magic box", "magic gold", "new box", "magic rock" as the magical box.



some blueprints are an object in the magical box. 


the tree trunk is a thing.
instead of taking the tree trunk:
	if the tree trunk is in the Central Forest:
		say "You try to lift the tree trunk with no result, so you roll the trunk through the forest to your camp.";
		now the tree trunk is in the Camp;
		now the player is in the Camp;
	if the tree trunk is in the Camp:
		say "You try to lift the tree trunk, but it doesn't budge.".

some branches is a thing.
understand "twig", "twigs", "branch", "stick", "sticks" as some branches.
instead of taking some branches:
	say "You pick up the branches off of the forest floor and put them in your backpack.";
	now some branches are in the backpack.




Instead of taking some blueprints:
	say "You roll up the blueprints and put them in your backpack.";
	now some blueprints are in the backpack.

instead of examining the blueprints:
	say "The blueprints seem to be plans for building a raft. It says that once you collect all the materials for building the raft (a large tree trunk, some rope, some sticks, and some material to make a sail out of), you just have to say the magic word 'shazam' and the magic of the island will build your raft.";
	now the tree trunk is in the Central Forest;
	now some branches are in the Northern Forest.
	
Instead of building the boat:
	if the branches is in the backpack:
		if the tree trunk is in the backpack:
			if some rope is in the backpack:
				if the sail material is in the backpack:
					if the player is in the Camp:
						say "You close your eyes and say, 'Build me a raft!'
		Suddenly, the whiz of magic swirls around you once again and you watch as the materials float out of your bag and practically assemble themselves. Soon enough, there is a beautifully crafted raft sitting on the ground in front of you.";
						now the boat is in the Camp;
					else:
						say "You wouldn't want it to get lost in the forest. You'd better build it in your camp. That way it's closer to the water so you don't have to carry it as far.";
				else:
					say "You don't have the materials to build a raft yet.";
			else:
				say "You don't have the materials to build a raft yet.";
		else:
			say "You don't have the materials to build a raft yet.";
	else:
		say "You don't have the materials to build a raft yet.".


[the map]

The map is a thing in the magical box. 
Instead of examining the map for the first time:
	say "A detailed map of the island… a little too detailed to have been made by human hands…";


instead of examining the map at least twice:
	if the player is in the Camp:
		say "The forest is to the north, the cove is to the east, and the beach is to the south.";
	if the player is in the Beach:
		say "The camp is to the north.";
	if the player is in the Southern forest:
		say "The camp is to the south, the mountain is to the north.";
	if the player is in the central forest:
		say "The camp is to the south, the village is to the west, the mountain is to the north, the river is to the east.";
	if the player is in the Western Forest:
		say "The village is to the west, the river is to the east.";
	if the player is in the eastern forest:
		say "The village is to the west, the Shadow Fang Lair is over the river to the east.";
	if the player is in the northern forest:
		say "The camp is to the south, the mountain is to the north.";
	if the player is in the Mountain Base:
		say "The forest is to the south, the camp is past the forest to the south, the mountain summit shrine is up the mountain to the north.";
	if the player is in the Mountain Summit Shrine:
		say "The forest is to the south, the camp is past the forest to the south.";
	if the player is in the Hidden Shrine Room:
		say "The map is blank and unreadable. The magical presence in here must be disturbing the magic in the map.";
	if the player is in the Lair:
		say "You wouldn't want to stop and check your map here. You might get eaten.";
	if the player is in the Village:
		say "The forest is to the east, the river is to the east past the forest.";
	if the player is in the Chief's Hut:
		say "Go outside to check the map.";
	if the player is in the Shaman's Hut:
		say "Go outside to check the map.".
		
	
instead of taking the map:
	say "You fold up the map and put it into your backpack.";
	now the map is in the backpack.















[The Western Forest]

The Western Forest is a room. The Western Forest is west of the Central Forest. The description of the Western Forest is "A section of the forest lacking trees and foliage. There is a village to your west, the openning back to the forest is to the east, and both the north and south exits look too densely populated with trees to navigate in.[if the shadow fang is tame] The shadow fang follows you closely.[end if]"
















Chapter Five [The Village]

[The Village]
The Village is a room. The Village is west of the Western Forest. The description of the Village is "A small village in the middle of the forest. The small huts that make up the village are aligned in a circle around the center of the village. There is a slightly larger and nicer hut to the south, most likely belonging to their leader, and a strange voodoo-like hut to the north, seemingly belonging to a shaman or mystic.[if the shadow fang is tame] The shadow fang follows you closely.[end if]"
















[The Shaman's Hut]

The Shaman's Hut is a room. The Shaman's Hut is north of the Village. The description of the Shaman's Hut is "The hut of the island Shaman. The walls are lined with strange, voodoo like objects and the air smells of rotting fruit and dead weasels, whatever that smells like.[if the shadow fang is tame and the Chief is in the Shaman's Hut] You walk into the Shaman's hut with the Shadow fang following closely behind you. The shadow fang lays down on the floor across your feet and puts its head down on its paws.[end if]"
		
the voodoo objects are things in the shaman's hut. the description of the voodoo objects is "Strange viles and witchcraft items on the walls. You wouldn't want to mess with them.".
understand "voodoo", "objects" as the voodoo objects.

instead of taking the voodoo objects:
	say "You wouldn't want something bad to happen to you. Better leave them alone.";
	stop the action.



The Shaman is a person in the Shaman's Hut. The description of the Shaman is "A very mysterious old man in long blue robes. Tribal tattoos cover his bald head and he carries a long black staff topped with a bright blue ball of pure energy. His eyes are a glassy golden color, he is obviously very powerful and good at what he does."

Instead of talking to the Shaman:
	say "'Hey,' you greet the Shaman.

'Siwezi kuelewa wewe kijana mmoja. Mimi kujibu tu kwa lugha yangu mwenyewe.'

[if the Chief is in the Shaman's Hut]'He does not know the language you speak,' the Chief translates. 'He speaks through an ancient tongue.[end if][if the Chief is not in the Shaman's Hut]What the heck did he just say?!?!?[end if]"

the walls are scenery in the Shaman's hut. the description of the walls is "Wooden walls lined with strange, voodoo like objects.".

understand "wall", "shelves", "shelving", "around" as the walls.










[The Chief's Hut]

The Chief's Hut is a room. The Chief's Hut is south of the Village. The description of the Chief's Hut is "The Chief's hut is warm and smells like scented candles. The Chief's hunting and war trophies decorate the room and give a feeling of pride and victory to the room.[if the shadow fang is tame] The shadow fang comfortably curls up into a ball on the floor.[end if]"

the trophies are scenery in the Chief's Hut. The description of the trophies is "Hunting and war trophies from the Chief's past victories and heroic feats. They give a feeling of pride and victory to the room."

instead of taking the trophies:
	say "You wouldn't want to anger the Chief. A man with this much experience with hunting and war for sure wouldn't think twice about killing you for stealing his trophies.";
	stop the action.


The young boy is a person in the Chief's Hut. The description of the young boy is "A young boy with bright blue eyes and shiny golden hair, just like everyone else on the island. He is wearing a fluffy black robe made of what seems to be some kind of metallic animal fur."

instead of talking to the young boy at least twice:
	if the Chief is in the Mountain Summit Shrine:
		say "You walk up to the young boy and say hi.
	

'Hey!' he replies. 'Looking for dad? He's the Chief. He's super cool. I guess that makes him the Chief of the island too 'cause we're the only tribe left. 

He went up to the top of the mountain cuz he heard some people talking about a lost temple that's been gone for a long time so he went up there to look for it. You should go talk to him, just go north of the forest. He's up the mountain.'

'Thanks,' you reply.
	
'You're welcome,' says the Chief's son, 'Good luck!'
	
You walk out of the hut.";
		now the player is in the Village;
	if the Chief is in the Chief's Hut:
		say "'My daddy is the Chief of our tribe. One day I'm gonna be a Chief too, just like him!'";
	if the Chief is in the Shaman's Hut:
		say "'If you're looking for daddy, he went to see the Shaman on the other side of our village.'".

Instead of attacking the young boy:
	say "Why would you want to hurt the boy. He never did anything to you.".



instead of talking to the young boy for the first time:
	if the Chief is in the Mountain Summit Shrine:
		say "You walk up to the young boy and say hi.
	

'Hey!' he replies. 'I've never seen you here before. You must be looking for my dad. He's the Chief of our tribe. I guess that makes him the Chief of the island too 'cause we're the only tribe left. Ha! Anyways, he went up to the Mountain Shrine. He heard some people talking about a lost portion of the shrine that has been forgotten for hundreds of years so he went up there to look for it. You should go talk to him, just walk up the mountain north of the forest. It's not that far from here.'

'Thanks,' you reply.
	
'No problem,' says the Chief's son, 'Good luck finding him!'
	
As you walk out of the hut you realize that the boy spoke in [if the chief is in the Mountain Summit Shrine]a foreign language you are sure you've never heard before[end if][if the chief is not in the Mountain Summit Shrine]the same language the chief spoke in[end if], but strangely it makes sense to you.";
		now the player is in the Village;
	if the Chief is in the Chief's Hut:
		say "'My daddy is the Chief of our tribe. One day I'm gonna be a Chief too, just like him!'";
	if the Chief is in the Shaman's Hut:
		say "'If you're looking for daddy, he went to see the Shaman on the other side of our village.'".

Instead of attacking the young boy:
	say "Why would you want to hurt the boy. He never did anything to you.".









Chapter Six [The Mountain]

[The Mountain Base]

The Mountain Base is a room. The Mountain Base is north of the Northern Forest. The description of the Mountain Base is "The trees lead up to a stone staircase lined by statues of dragons and warriors. The staircase leads up to the top of the mountain.[if the shadow fang is tame] The shadow fang follows you closely.[end if]"

the stairs are scenery in the Mountain Base. The description of the stairs is "Stairs made from laid down stone slabs. The steps are flat and smooth from being used for centuries."

the statues are scenery in the Mountain Base. the description of the statues are "[if the statues are in the Mountain Base]Ancient stone statues of dragons and warriors. They appear to have been hand carved centuries ago.[end if][if the statues are in the Mountain Summit Shrine]The statues are black and shiny. Their image flickers as if they aren't actually there.[end if]"

every turn:
	if the player is in the Mountain Base:
		now the statues are in the Mountain Base;
	if the player is in the Mountain Summit Shrine:
		now the statues are in the Mountain Summit Shrine.

understand "statue" as statues.







[The Mountain Summit Shrine]

The Mountain Summit Shrine is a room. The Mountain Summit Shrine is north of the Mountain Base. 

The description of the Mountain Summit Shrine is "You walk up the long winding mountain path until you reach the summit. There is a shrine here for one of the island's gods. [if the Chief is in the Mountain Summit Shrine]A man in shiny golden robes and a silver helmet is examining a massive golden door guarded by two black statues. The air coming from the door feels magical, almost like a divine being is on the other side. 
	
He is muttering to himself, 'Stupid door, why won't you open? The Shaman said to rub the statues so I rubbed the statues and nothing happened. This stupid door hasn't been opened for hundreds of years! How are we supposed to commence all of our ceremonial rituals if we can't get into the shrine room!' [end if][if the wall is in the Mountain Summit Shrine]

There are walls on the east and west and a golden door to the north. The door is lined with two gold statues.[end if][if the hidden is open]All the walls are gone now as well as the golden door. The hidden shrine room is to the east, beyond a shimmering veil of light.[end if][if the shadow fang is tame] The shadow fang follows you closely.[end if]"

	
The Chief is a person. The Chief is in the Mountain Summit Shrine. the description of the chief is "A man in shiny golden robes and a silver helmet. He is about 6 feet 5 inches with tribal tattoos on his arms causing him to look really tough."

Instead of talking to the Chief for the first time:
	if the Chief is in the Mountain Summit Shrine:
		say "The man hears your footsteps and turns around red and irritated. 
	
'I am Chief Radzen, leader of the Geracian tribe and this is my land. Who are you and what is your purpose for coming to me?' he says.
	
You explain your situation to the Chief, puzzled that you understand each other, while he nods understandingly.
	
'Mmmhmmm… I see… Well, you need to find a way to get home don't you? We could help you, but first you need to prove you are worthy of our assistance and that you aren't just someone from an enemy tribe trying to invade us. Hmmmm… there is a magical beast on the other side of the river to the east of our village. It has been terrorizing my people, eating our livestock and trampling our crops. Find the beast and kill him. Then come talk to me. I'll be in my hut; thinking of ways to open that stupid door…'
	
	
The Chief then walks briskly past you and dissapears down the mountain path.";
		move the Chief to the Chief's Hut;
		now the wall is in the Mountain Summit Shrine;
		now the golden door is revealed.
	



Instead of talking to the Chief for at least the second time:
	if the Chief is in the Chief's Hut:
		if the shadow fang is wild:
			if the wall is not in the Mountain Summit Shrine:
				say "What?!? You found the shrine room? It didn't even have anything to do with the golden door?!?!?!? Wow, what a waste of my time…
	
Thank you for finding the room. The shrine room has been lost for centuries. The greatest thanks from me and my people for helping us.

What? You need help? Talk to the statue of our God in the shrine room. He might be able to help you.

I'm going to go see the village Shaman to see if he can help you.";
				move the Chief to the Shaman's Hut;
				stop the action;
			if the wall is in the Mountain Summit Shrine:
				say "Did you find a way to open that door? No? Well, then this is a waste of my time.";
				stop the action;
		if the shadow fang is tame:
			say "'Get that demon out of here! I must go see the Shaman.' The Chief rushes out of his hut and breaks across the village.";
			move the Chief to the Shaman's Hut;
			stop the action;
	if the Chief is in the Shaman's Hut:
		if the shadow fang is in the Lair:
			say "'I spoke with the Shaman. He said that you must prove yourself first by ridding our island of a demon lurking in the forest. The Shadow Fang has been terrorizing our people for hundreds of years, destroying our crops and eating our livestock. You must bring one of its teeth back here so we know the deed is done. Its lair is across the river to the east. Go now, we will wait here for you to return.'";
		if the shadow fang is not in the Lair:
			if the player has the tooth:
				say "'I have killed the beast. Now will you help me?' you hand the tooth over to the Chief and watch him inspect it carefully.
			
'It is true you have proved yourself worthy. You shall be called Mwuaji Ya Pepo Kivuli, the slayer of the shadow demon. We could use you as a valuable member of our tribe, but you must first make a choice. Do you still wish to return home?'";
				if the player consents:
					if the boat is in a room:
						if the boat is in the Camp:
							say "You must move the raft near a moving water source before we can enchant it.";
						else:	
							say "
						
						
						
'All right. The decision has been made. Hand me the tooth.'
						
You give the Chief the tooth and he hands it to the Shaman while speaking in a language you cannot understand. 'Follow me. The Chief says.'
				
You follow the Chief to the [location of the boat]. When you arrive, the Shaman walks over to your raft, lays the tooth down on top of it, and says,
				 

'Kutuma mtu huyu ambayo amekuja.
Tafadhali bwana Tryn basi hii kufanyika.
Kwa nguvu imewekeza katika mimi na miungu ya nchi hii.
Mimi jitihada kuaga kwako na kurudi kwako nyumbani, kwa mkono wangu kichawi.'

The Chief motions for you to get on the raft and you do so.";
							if the boat is in the Beach:
								now the boat is in the ocean;
							if the boat is in the Cove:
								now the boat is in the ocean;
							if the boat is in the Eastern Forest:
								now the boat is in the river;
					else:
						say "Come back when you have found a way to get home. Then we will be able to speed up your travel. Perhaps our god can help you. Try talking to his statue in the shrine room.";
				else:
					say "'Great decision. You shall stay here as one of us. I have great plans for you…'";
					end the game in victory;
					increase score by 6;
			If the shadow fang is tame:
				say "The Chief turns around and is startled by the beast. 

'Why would you bring that thing here! It has been terrorizing my people for hundreds of years!' he shouts, 'BEGONE DEMON!!!'

'Don't worry,' you reply. 'He's not going to hurt anyone. He was thirsty and I helped him. He was only trying to get food to survive when he destroyed your crops.'

'I see. Well in that case, you have solved the greatest problem of my people. You shall be known for all time as the Bwana Wa Mnyama Kivuli, Master of the Shadow Beast. Your name shall be worshipped for centuries to come.

Now that you have proved yourself you must make your decision. Do you still wish to return home?'";
				if the player consents:
					if the boat is in a room:
						if the boat is in the Camp:
							say "You must move the raft near a moving water source before we can enchant it.";
						else:	
							say "
						
						
						
'All right. The decision has been made.'
						
The Chief speaks to the Shaman in a language you cannot understand. 'Follow me. The Chief says.'
				
You follow the Chief to the [location of the boat]. When you arrive, the Shaman walks over to your raft and says,
				 

'Kutuma mtu huyu ambayo amekuja.
Tafadhali bwana Tryn basi hii kufanyika.
Kwa nguvu imewekeza katika mimi na miungu ya nchi hii.
Mimi jitihada kuaga kwako na kurudi kwako nyumbani, kwa mkono wangu kichawi.'

The Chief motions for you to get on the raft and you do so.";
							if the boat is in the Beach:
								now the boat is in the ocean;
							if the boat is in the Cove:
								now the boat is in the ocean;
							if the boat is in the Eastern Forest:
								now the boat is in the river;
					else:
						say "'All right. The decision has been made.'
						
The Chief speaks to the Shaman in a language you cannot understand and the Shaman nods. The Shaman walks over and puts his hand on your forehead.				 

'Kutuma mtu huyu ambayo amekuja.
Tafadhali bwana Tryn basi hii kufanyika.
Kwa nguvu imewekeza katika mimi na miungu ya nchi hii.
Mimi jitihada kuaga kwako na kurudi kwako nyumbani, kwa mkono wangu kichawi.'You close your eyes and say, 'I wish I was back home!' he chants.

You feel a strong whipping wind swirl around you and the shadow fang backs away. You feel yourself lifting into the air and slowly losing consciousness before you black out completely.

When you shake off the dizziness and open your eyes, you are laying on your bed at home staring up at the ceiling. All your memories are coming back now. You remember that your name is James Palazo, you are 24 years old, you live in Boston Massachusetts, and seeing as the time is 4:00 PM, you're late for the Red Sox game!";
						increase score by 10;
						end the game in victory;
				else:
					say "'Great decision. You shall stay here as one of us. I have great plans for you…'";
					end the game in victory;
					increase score by 6;


[adfsfasdf]
Instead of giving the tooth to the Chief:
	say "'I have killed the beast. Now will you help me?' you hand the tooth over to the Chief and watch him inspect it carefully.
			
	
'It is true you have proved yourself worthy. You shall be called Mwuaji Ya Pepo Kivuli, the slayer of the shadow demon. We could use you as a valuable member of our tribe, but you must first make a choice. Do you still wish to return home?'";
	if the player consents:
		if the boat is in a room:
			say "'All right. The decision has been made. Hand me the tooth.'
				You give the Chief the tooth and he hands it to the Shaman while speaking in a language you cannot understand. 'Follow me. The Chief says.'
				You follow the Chief to [location of the boat]. When you arrive, the Shaman walks over to your raft, lays the tooth down on top of it, and says,
				 
				'Kutuma mtu huyu ambayo amekuja.
Tafadhali bwana Tryn basi hii kufanyika.
Kwa nguvu imewekeza katika mimi na miungu ya nchi hii.
Mimi jitihada kuaga kwako na kurudi kwako nyumbani, kwa mkono wangu kichawi.'

The Chief motions for you to get on the raft and you do so.";
			if the boat is in the Beach:
				now the boat is in the ocean;
			if the boat is in the Cove:
				now the boat is in the ocean;
			if the boat is in the Eastern Forest:
				now the boat is in the river;
		else:
			say "Come back when you have found a way to get home. Then we will be able to speed up your travel. Perhaps our god can help you. Try talking to his statue in the shrine room.";
	else:
		say "'Great decision. You shall stay here as one of us. I have great plans for you…'";
		end the game in victory;
		increase score by 6.



The golden door is a secret door. The Golden Door is lockable and locked. The golden door is north of the Mountain Summit Shrine. The description of the golden door is "A massive golden door guarded by two black statues. The air coming from the door feels magical, almost like a divine being is on the other side."

The wall is an object. The wall is a supporter. The wall is fixed in place.

understand "walls", "around" as the wall.

[Secret Lever Puzzle to Open Hidden Door. (alternate puzzle for the secret door)]
The dark stone is a secret switch.

The hidden is a secret door. the hidden is east of the Mountain Summit Shrine and west of the Hidden Shrine Room.

instead of examining the wall:
	say "You examine the wall and see that there is an awkward stone jutting out of the wall that is slightly darker than the rest.";
	now the dark stone is on the wall;
	now the dark stone is revealed.
	
understand "stone" as the dark stone.

instead of taking the dark stone:
	say "You try to wiggle the dark stone out of the wall. You jolt it around, but it won't come out. You hear a click in the wall, like gears moving. What a strange stone. You should take a closer look at it…";
	stop the action.

instead of examining the dark stone:
	say "A protruding stone that is slightly darker than the rest. I wonder what would happen if you pressed it…
	
You press the stone into the wall with a loud 'CLICK!'. You hear the sound of old gears moving and watch as the wall shakes, and slowly parts, revealing a hidden room. This must be the shrine the Chief was looking for.";
	now the hidden is revealed;
	now the hidden is unlocked;
	now the hidden is open;
	remove the dark stone from play;
	remove the wall from play.

instead of examining the hidden:
	say "What are you looking for. Even if there was a hidden door you wouldn't be able to see it. It's a HIDDEN door, meaning that it's HIDDEN.".


[Pushing Tiles to Open Hidden Door Puzzle didn't work]


[Instead of examining the wall for the first time:
	say "Upon further examination, there appear to be seven different colored tiles on the wall (blue, red, green, white, black, yellow, and brown). Maybe pressing them in a certain order will open the door.";
	now the blue tile is on the wall;
	now the red tile is on the wall;
	now the green tile is on the wall;
	now the white tile is on the wall;
	now the black tile is on the wall;
	now the yellow tile is on the wall;
	now the brown tile is on the wall.
	
The blue tile is an object. The blue tile is a tile. [The blue tile is not pressed.]
The red tile is an object. The red tile is a tile. [The red tile is not pressed.]
The green tile is an object. The green tile is a tile. [The green tile is not pressed.]
The white tile is an object. The white tile is a tile. [The white tile is not pressed.]
The black tile is an object. The black tile is a tile. [The black tile is not pressed.]
The yellow tile is an object. The yellow tile is a tile. [The yellow tile is not pressed.]
The brown tile is an object. The brown tile is a tile. [The brown tile is not pressed.]



The hidden door is a secret door. the hidden door is east of the Mountain Summit Shrine and west of the Hidden Shrine Room.

Instead of pressing the white tile:
	if the white tile is not pressed:
		say "You push the tile and hear a loud click followed by gears moving within the wall.";
		now the white tile is pressed;
		continue the action;
	if the yellow tile is pressed:
		now the blue tile is not pressed;
		now the red tile is not pressed;
		now the green tile is not pressed;
		now the white tile is not pressed;
		now the black tile is not pressed;
		now the yellow tile is not pressed;
		now the brown tile is not pressed;
		say "That's not the right order. All the tiles pop back out.".
		

Instead of pressing the blue tile:
	if the red tile is pressed:
    		now the hidden door is revealed;
     		say "The wall shakes and slowly parts revealing a hidden room. This must be the shrine room the Chief was looking for.";
	else:
		say "The tiles click and reset. That wasn't the right order.";
		now the white tile is not pressed;
		now the yellow tile is not pressed;
		now the brown tile is not pressed;
		now the green tile is not pressed;
		now the black tile is not pressed;
		now the red tile is not pressed;
		now the blue tile is not pressed.]

[Instead of pulling the lever which is revealed for the first time:
     now the passage door is revealed;
     now the passage door is open;
     say "As you pull the lever, a secret door opens, revealing a secret passage!"]




[The Hidden Shrine Room]

The Hidden Shrine Room is a room. The description of the Hidden Shrine Room is "You walk in through the hidden entrance and burst into a shrine room for the island's main God. The room is amazing. Its gold, intricately engraved tiles on the floor and shimmering walls, giving off a faint flickering glow, made it hard to believe the room had been lost for centuries.[if the shadow fang is tame] The shadow fang is for some reason scared of going near the statue. It waits just outside the entrance.[end if]"



The golden statue is a person in the Hidden Shrine Room. The golden statue is fixed in place. The description of the golden statue is "A statue of the island's main God. A plaque reads Master Tryn the King of Creation. The statue appears to have been hand carved with great skill from a single golden block of colossal proportions."

Instead of taking the golden statue:
	say "Why would you want to take the statue? The mysterious islanders would kill you if they found you taking their God away from them! Assuming you could even find a way to get a 5 ton statue off of the island anyways… Find a way to get yourself off the island first."
	
Instead of talking to the golden statue for the first time:
	say "You speak to the statue, asking the god to help you return home. You wait a few seconds and when you are certain nothing is happening, you turn around and start to leave. Suddenly, you hear a loud 'SNAP!' and you turn around to see an eyeglass at the base of the statue.";
	now the magic eyeglass is in the Hidden Shrine Room.

Instead of talking to the golden statue at least twice:
	say "The god has already assisted you. It would be disrespectful to ask again.".
	

The magic eyeglass is an object. The description of the magic eyeglass is "A golden eyeglass giving off a soft magical hum. [if the magical box is in the Central Forest]It might help you read the engravings on the magic box in the Central Forest.[end if][if the magical box is not in the Central Forest]You might be able to use this to translate some kind of writing.[end if]"

Instead of taking the magic eyeglass:
	say "You pick the magic eyeglass up off the shimmering tiles and put it in the front pocket of your backpack.";
	now the magic eyeglass is in the backpack.



