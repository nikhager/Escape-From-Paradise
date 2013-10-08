"Escape From Paradise" by Nik Hager

release along with cover art.


When play begins:
	 say "You wake up tired and groggy in the middle of a forest. You sleepily scan your surroundings and notice that they are unfamiliar and you have no idea how you got here. You try hard to remember how you got here, but you just can't seem to find the memory. In fact, you can't find any of your memories…
	
You snatch your backpack up off the ground, sling it over your shoulders, and start your quest to explore the island in hope of discovering who you are, how you got here, and how you're going to get home."




Book One [Rules, Conditions, and Actions]

Chapter One [Rules and Conditions]

[Exits and Location from Get that Cat by Douglas Kiang]
When play begins: 
    Now left hand status line is "Exits: [exit list]"; 
    Now right hand status line is "[location]".
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







Chapter Two [Actions]

understand "talk to [someone]" as talking to.
talking to is an action applying to one thing.

understand "put [something] in [something]" as putting.
putting is an action applying to two things.

understand "press [something]" as pressing.
pressing is an action applying to one thing.








Chapter Three [Endings]

[Victories]

Instead of putting the boat in the water:
	say "You push the raft into the water and watch it as it floats, bobbing in the cool ocean. You turn around and take one last look at the island before you [if boat is not enchanted]sail away, watching the island until it disappears over the horizon.[end if][if boat is enchanted]close your eyes and say, 'I wish I was back home!'
	You feel a strong whipping wind swirl around you, causing the raft to jolt around viciously. You feel yourself lifting into the air and slowly losing consciousness before you black out completely.
	When you shake off the dizziness and open your eyes, you are laying on your bed at home staring up at the ceiling. All your memories are coming back now. You remember that your name is James Palazo, you are 24 years old, you live in Boston Massachusetts, and seeing as the time is 4:00PM, you're late for the Red Sox game! And you're probably gonna have to move that raft out of your bedroom…[end if]";
	if the boat is enchanted:
		increase the score by 10;
	if the boat is not enchanted:
		increase the score by 8;
	end the game in victory.







[Deaths]










Chapter Four [Score and Rankings]



















Book Two [Rooms and Items]

Chapter One [The Camp]

The Camp is a room. The description of the Camp is "The camp is set up in a small clearing between four huge canopy trees for shade and shelter from rain. You notice there is a fire pit in the middle that you must have build before, but the fire has burnt out leaving a mound of ash surrounded by charred rocks."


The fire pit is scenery in the Camp. 

understand "fire", "pit", "fireplace", "firepit" as fire pit.



The backpack is an object. The backpack is a container. The player is carrying the backpack.



The knife is an object. The knife is in the Camp. The description of the knife is "A normal metal knife for cutting things."

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



After examining the fire pit for the first time:
	now the rocks is in the Camp;
	now the ashes is in the Camp;
	now the burnt wood is in the Camp.
	
some rocks is an object.

instead of taking some rocks:
	say "You pick up some of the rocks and put them into your backback. DANG! They're really heavy!";
	now the rocks are in the backpack.

some ashes are an object.

instead of taking some ashes:
	say "What would you ever need ashes for?";
	stop the action.

some burnt wood is an object.

instead of taking burnt wood:
	say "Why would you want to take burnt wood when you are surrounded by thousands of healthy trees? Go find some wood somewhere else.";
	stop the action.
















Chapter Two [The Beach]

The Beach is a room. The Beach is south of the Camp. The description of the Beach is "You head south, weaving through the trees, watching the grassy terrain of the jungle slowly fade to dirt. Soon, the dirt is gone and you can see the ocean through the remainder of the trees. You burst through the gap out of  the foliage and into the light. The sand heats your toes and sends a warm surge throughout your body. The relaxing sun shines down onto the water, causing it to shimmer with brilliance."



The boat is an object.

water is an object. water is in the beach. water is a container.

every turn:
	if the player is in the beach:
		move the water to the beach.
	
every turn:
	if the player is in the cove:
		move the water to the cove.

every turn:
	if the player is in the eastern forest:
		move the water to the eastern forest.

Instead of taking the water:
	if the bottle is in the backpack:
		if the water is in the beach:
			say "You can't fill your bottle with ocean water. That's nasty.";
			stop the action;
		if the water is in the cove:
			say "You can't fill your bottle with ocean water. That's nasty.";
			stop the action;
		if the water is in the eastern forest:
			say "You fill the bottle with cool, fresh, drinking water from the river.";
			continue the action;
	if the bottle is not in the backpack:
		say "You don't have anything to fill with water.";
		stop the action.














Chapter Three [The Cove]

The Cove is a room. The Cove is east of the Camp. The description of the Cove is "You make your way through the lively jungle until you reach a small cove. There are huge stone cliffs on either side of the shore, isolating it from the rest of the island's beaches."


















Chapter Four [The Forest]

[The Southern Forest]
The Southern Forest is a room. The Southern Forest is north of the camp. The description of the Southern Forest is "Huge trees and bushes surround you as far as you can see."

Before going north in the Southern Forest:
	say "You journey deeper into the forest. ";
	Continue the action.














[The Central Forest]

The Central Forest is a room. The Central Forest is north of the Southern Forest. The description of the Central Forest is "The jungle is all you can see."
















[The Eastern Forest]

The Eastern Forest is a room. The Eastern Forest is east of the Central Forest. The description of the Eastern Forest is " "
















[The Shadow Fang Lair]

The Shadow Fang Lair is a room. The Shadow Fang Lair is east of the Eastern Forest. The description of the Shadow Fang Lair is " "
















[The Northern Forest]

The Northern Forest is a room. The Northern Forest is north of the Central Forest. The description of the Northern Forest is "You walk out of the trees and into a small clearing. There is a large rock here with strange engravings on it."


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

Every turn:
	if the magic eyeglass is in the backpack:
		now the magical box is unlocked;
		now the magical box is open.

Instead of examining the magical box:
	if the magic eyeglass is in the backpack:
		say "You take the eyeglass out the front pocket of your backpack and look through it, examining the engravings on the box. You watch as the symbols scatter around, rearranging themselves into letters and words you understand. 
		
It reads, 'To get to the treasures lurking inside. Look to the sky. Let the stars be your guide.'
		
Hmmm. I wonder what that means.";
		now the magical box is read;
	else:
		say "A magical golden box radiating with a shimmering golden aura. It has the same strange engravings as the rock, but they are clearer now.".

Understand "box", "gold", "golden box", "magic box", "magic gold", "new box", "magic rock" as the magical box.



The blueprints are an object in the magical box.

Instead of taking the blueprints:
	say "You roll up the blueprints and put them in your backpack.";
	now the blueprints are in the backpack.
	

The map is a thing in the magical box.

instead of taking the map:
	say "You fold up the map and put it into your backpack.";
	now the map is in the backpack.














[The Western Forest]

The Western Forest is a room. The Western Forest is west of the Central Forest. The description of the Western Forest is " "
















Chapter Five [The Village]

[The Village]
The Village is a room. The Village is west of the Western Forest. The description of the Village is " "
















[The Shaman's Hut]

The Shaman's Hut is a room. The Shaman's Hut is north of the Village. The description of the Shaman's Hut is "The hut of the island Shaman. The walls are lined with strange, voodoo like objects."



The Shaman is a person in the Shaman's Hut.

















[The Chief's Hut]

The Chief's Hut is a room. The Chief's Hut is south of the Village. The description of the Chief's Hut is " "



The Young Boy is a person in the Chief's Hut. The description of the Young Boy is "A young boy with bright blue eyes and shiny golden hair, just like everyone else on the island. He is wearing a fluffy black robe made of what seems to be some kind of metallic animal fur."

instead of talking to the Young Boy:
	if the Chief is in the Mountain Summit Shrine:
		say "You walk up to the Young boy and say hi.
	

'Hey!' he replies. 'I've never seen you here before. You must be looking for my dad. He's the chief of our tribe. I guess that makes him the chief of the island too 'cause we're the only tribe left. Ha! Anyways, he went up to the Mountain Shrine. He heard some people talking about a lost portion of the shrine that has been forgotten for hundreds of years so he went up there to look for it. You should go talk to him, just walk up the mountain north of the forest. It's not that far from here.'

'Thanks,' you reply.
	
'No problem,' says the Cheif's son, 'Good luck finding him!'
	
You walk out of the hut.";
		now the player is in the Village;
	if the Chief is in the Chief's Hut:
		say "'My daddy is the chief of our tribe. One day I'm gonna be a chief too, just like him!'";
	if the Chief is in the Shaman's Hut:
		say "'If you're looking for daddy, he went to see the Shaman on the other side of our village.'".












Chapter Six [The Mountain]

[The Mountain Base]

The Mountain Base is a room. The Mountain Base is north of the Northern Forest. The description of the Mountain Base is " "















[The Mountain Summit Shrine]

The Mountain Summit Shrine is a room. The Mountain Summit Shrine is north of the Mountain Base. 

The description of the Mountain Summit Shrine is "You walk up the long winding mountain path until you reach the summit. There is a shrine here for one of the island's gods. [if the Chief is in the Mountain Summit Shrine]A man in shiny golden robes and a silver helmet is examining a massive golden door guarded by two black statues. The air coming from the door feels magical, almost like a divine being is on the other side. 
	
He is muttering to himself, 'Stupid door, why won't you open? The Shaman said to press the tiles so I pressed the tiles. You haven't been opened for hundreds of years! How are we supposed to commence all of our ceremonial rituals if we can't get into the shrine room!' 

[end if][if the wall is in the Mountain Summit Shrine]There are walls on the east and west and a golden door to the north. The door is lined with two gold statues.[end if][if the wall is not in the Mountain Summit Shrine]All the walls are gone now as well as the golden door. The hidden shrine room is to the east, beyond a shimmering veil of light.[end if]"

	
The Chief is a person. The Chief is in the Mountain Summit Shrine.

Instead of talking to the Chief:
	if the chief is in the Mountain Summit Shrine:
		say "The man hears your footsteps and turns around red and irritated. 
	
'I am Chief Radzen, leader of the Geracian tribe and this is my land. Who are you and what is your purpose for coming to me?' he says.
	
You explain your situation to the Chief while he nods understandingly.
	
'Mmmhmmm… I see… Well, you need to find a way to get home don't you? We could help you, but first you need to prove you are worthy of our assistance and that you aren't just someone from an enemy tribe trying to invade us. Hmmmm… there is a magical beast on the other side of the river to the east of our village. It has been terrorizing my people, eating our livestock and trampling our crops. Find the beast and kill him. Then come talk to me. I'll be in my hut; thinking of ways to open that stupid door…'
	
	
The Chief then walks briskly past you and dissapears down the mountain path.";
		move the Chief to the Chief's Hut;
		now the wall is in the Mountain Summit Shrine;
		now the golden door is revealed;
	if the chief is in the Chief's Hut:
		if the wall is not in the Mountain Summit Shrine:
			say "What?!? You found the shrine room? It didn't even have anything to do with the golden door?!?!?!? Wow, what a waste of my time…
	
Thank you for finding the room. The shrine room has been lost for centuries. The greatest thanks from me and my people for helping us.

What? You need help? Talk to the statue of our God in the shrine room. He might be able to help you.

I'm going to go see the village Shaman to see if he can help you.";
			move the Chief to the Shaman's Hut;
		if the wall is in the Mountain Summit Shrine:
			say "Did you find a way to open that door? No? Well, then this is a waste of my time.".
	
The golden door is a secret door. The Golden Door is lockable and locked. The golden door is north of the Mountain Summit Shrine. The description of the golden door is "A massive golden door guarded by two black statues. The air coming from the door feels magical, almost like a divine being is on the other side."

The wall is an object. The wall is a supporter. The wall is fixed in place.

[Secret Lever Puzzle to Open Hidden Door. (alternate puzzle for the secret door)]
The dark stone is a secret switch.

The hidden door is a secret door. the hidden door is east of the Mountain Summit Shrine and west of the Hidden Shrine Room.

instead of examining the wall for the first time:
	say "You examine the wall and see that there is an awkward stone jutting out of the wall that is slightly darker than the rest.";
	now the dark stone is on the wall;
	now the dark stone is revealed.
	
understand "stone" as the dark stone.

instead of taking the dark stone:
	say "You try to wiggle the dark stone out of the wall, but it doesn't budge.";
	stop the action.

instead of examining the dark stone:
	say "A protruding stone that is slightly darker than the rest. I wonder what would happen if you pressed it…
	
You press the stone into the wall with a loud 'CLICK!'. You hear the sound of old gears moving and watch as the wall shakes, and slowly parts, revealing a hidden room. This must be the shrine the Chief was looking for.";
	now the hidden door is revealed;
	now the hidden door is unlocked;
	now the hidden door is open;
	remove the dark stone from play;
	remove the wall from play.

instead of examining the hidden door:
	say "What are you looking for. You can't see a HIDDEN door. It's HIDDEN.".

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

The Hidden Shrine Room is a room. The description of the Hidden Shrine Room is "You walk in through the hidden entrance and burst into a shrine room for the island's main God. The room is amazing. Its gold, intricately engraved tiles on the floor and shimmering walls, giving off a faint flickering glow, made it hard to believe the room had been lost for centuries."



The golden statue is a person in the Hidden Shrine Room. The golden statue is fixed in place. The description of the golden statue is "A statue of the island's main God, Master Tryn the King of Creation. It appears to have been hand carved with great skill from a single golden block of colossal proportions."

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



