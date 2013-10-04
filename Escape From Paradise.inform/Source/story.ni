"Escape From Paradise" by Nik Hager

release along with cover art.


When play begins:
	 say "You wake up tired and groggy in the middle of a forest. You sleepily scan your surroundings and notice that they are unfamiliar and you have no idea how you got here. You try hard to remember how you got here, but you just can't seem to find the memory. In fact, you can't find any of your memories…
	
You snatch your backpack up off the ground, sling it over your shoulders, and start your quest to explore the island in hope of discovering who you are, how you got here, and how you're going to get home."






[Rules]

When play begins: 
    Now left hand status line is "Exits: [exit list]"; 
    Now right hand status line is "[location]".
To say exit list: 
	Let place be location; 
	Repeat with way running through directions: 
		Let place be the room way from the location; 
		If place is a room, say " [way]".

use serial comma.




[Actions]

understand "talk to [something]" as talking to.
talking to is an action applying to one thing.










[The Camp]

The Camp is a room. The description of the Camp is "You are in a small clearing between four huge canopy trees. You notice you have built a fire pit, but the fire has burnt out leaving a mound of ash surrounded by rocks."


The fire pit is scenery in the Camp. 

understand "fire", "pit", "fireplace", "firepit" as fire pit.





	[objects]
	
The backpack is an object. The backpack is a container. The player is carrying the backpack.



The knife is an object. The knife is in the Camp.
Instead of taking knife:
	say "You pick up the knife and put it in the front pocket of your backpack.";
	now the knife is in the backpack.



The coil of rope is an object. The coil of rope is in the Camp.

Understand "rope", "coil", "roll", "twine", "string" as coil of rope.

Instead of taking coil of rope:
	say "You roll up the rope and put it into your backpack.";
	now the coil of rope is in the backpack.



The bottle is an object. The bottle is in the Camp. The bottle is a container. The bottle can be either full or empty. The bottle is empty.

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








[The Beach]

The Beach is a room. The Beach is south of the Camp. The description of the Beach is "You head south, weaving through the trees, watching the grassy terrain of the jungle slowly fade to dirt. Soon, the dirt is gone and you can see the ocean through the remainder of the trees. You burst through the gap out of  the foliage and into the light. The sand heats your toes and sends a warm surge throughout your body. The relaxing sun shines down onto the water, causing it to shimmer with brilliance."








[The Cove]

The Cove is a room. The Cove is east of the Camp. The description of the Cove is "You make your way through the lively jungle until you reach a small cove. There are huge stone cliffs on either side of the shore, isolating it from the rest of the island's beaches."









[The Southern Forest]

The Southern Forest is a room. The Southern Forest is north of the camp. The description of the Southern Forest is "Huge trees and bushes surround you as far as you can see."

Before going north in the Southern Forest:
	say "You journey deeper into the forest. ";
	Continue the action.










[The Central Forest]

The Central Forest is a room. The Central Forest is north of the Southern Forest. The description of the Central Forest is "The jungle is all you can see."



The strange rock is an object in the Central Forest. The strange rock is fixed in place.

Instead of examining the strange rock:
	say "You examine the strange rock and see that it has strange engravings on it. You rub the engravings and the rock emanates a soft golden glow. When the light fades away, the rock is gone. In its place is a magical golden box radiating with a shimmering golden aura.";
	remove the strange rock from play;
	now the magical box is in the Central Forest.

The magical box is an object. The magical box is fixed in place. The magical box is an openable container. The magical box is closed.

Understand "box", "gold", "golden box", "magic box", "magic gold", "new box", "magic rock" as the magical box.


The blueprints are an object in the magical box.

Instead of taking the blueprints:
	say "You roll up the blueprints and put them in your backpack.";
	now the blueprints are in the backpack.
	

The map is a thing in the magical box.

instead of taking the map:
	say "You fold up the map and put it into your backpack.";
	now the map is in the backpack.






[The Eastern Forest]

The Eastern Forest is a room. The Eastern Forest is east of the Central Forest. The description of the Eastern Forest is " "













[The Shadow Fang Lair]

The Shadow Fang Lair is a room. The Shadow Fang Lair is east of the Eastern Forest. The description of the Shadow Fang Lair is " "














[The Northern Forest]

The Northern Forest is a room. The Northern Forest is north of the Central Forest. The description of the Northern Forest is "You walk out of the trees and into a small clearing. There is a large rock here with strange engravings on it."













[The Western Forest]

The Western Forest is a room. The Western Forest is west of the Central Forest. The description of the Western Forest is " "













[The Village]

The Village is a room. The Village is west of the Western Forest. The description of the Village is " "













[The Shaman's Hut]

The Shaman's Hut is a room. The Shaman's Hut is north of the Village. The description of the Shaman's Hut is "The hut of the island Shaman. The walls are lined with strange, voodoo like objects."



The Shaman is a person in the Shaman's Hut.












[The Chief's Hut]

The Chief's Hut is a room. The Chief's Hut is south of the Village. The description of the Chief's Hut is " "



The Young Boy is a thing in the Chief's Hut. The description of the Young Boy is "A young boy with bright blue eyes and shiny golden hair, just like everyone else on the island. He is wearing a fluffy black robe made of what seems to be some kind of metallic animal fur."

instead of talking to the Young Boy:
	if the Chief is in the Mountain Summit Shrine:
		say "You walk up to the Young boy and say hi.
	

'Hey!' he replies. 'I've never seen you here before. You must be looking for my dad. He's the chief of our tribe. I guess that makes him the chief of the island too 'cause we're the only tribe left. Ha! Anyways, he went up to the Mountain Shrine. He heard some people talking about a lost portion of the shrine that has been forgotten for hundreds of years so he went up there to look for it. You should go talk to him, just walk up the mountain north of the forest. It's not that far from here.'

'Thanks,' you reply.
	
'No problem,' says the Cheif's son, 'Good luck finding him!'
	
You walk out of the hut, closing the door behind you.";
		now the player is in the Village.














[The Mountain Base]

The Mountain Base is a room. The Mountain Base is north of the Northern Forest. The description of the Mountain Base is " "















[The Mountain Summit Shrine]

The Mountain Summit Shrine is a room. The Mountain Summit Shrine is north of the Mountain Base. The description of the Mountain Summit Shrine is " "



The Chief is a person. The Chief is in the Mountain Summit Shrine. The definition of the Mountain Summit Shrine is "[if entering room for the first time] You walk up the long winding mountain path until you reach the summit. There is a shrine here for one of the island's gods. A man in shiny golden robes and a silver helmet is examining a massive golden door guarded by two black statues. The air coming from the door feels magical, almost like a divine being is on the other side. 
	
	He is muttering to himself, 'Stupid door, why won't you open? The Shaman said to press the tiles so I pressed the tiles. You haven't been opened for hundreds of years! How are we supposed to commence all of our ceremonial rituals if we can't get into the shrine room!' The man hears your footsteps and turns around red and irritated. 
	
	'I am Chief Radzen, leader of the Geracian tribe and this is my land. Who are you and what is your purpose for coming to me?' he says.
	
	You explain your situation to the Chief while he nods understandingly.
	
	'Mmmhmmm… I see… Well, you need to find a way to get home don't you? We could help you, but first you need to prove you are worthy of our assistance and that you aren't just someone from an enemy tribe trying to invade us. Hmmmm… there is a magical beast on the other side of the river to the east of our village. It has been terrorizing my people, eating our livestock and trampling our crops. Find the beast and kill him. Then come talk to me. I'll be in my hut; thinking of ways to open that stupid door…'
	
	
	The Chief then walks briskly past you and dissapears down the mountain path."

Before entering the Mountain Summit Shrine:
	say "You walk up the long winding mountain path until you reach the summit. There is a shrine here for one of the island's gods. A man in shiny golden robes and a silver helmet is examining a massive golden door guarded by two black statues. The air coming from the door feels magical, almost like a divine being is on the other side. 
	
	He is muttering to himself, 'Stupid door, why won't you open? The Shaman said to press the tiles so I pressed the tiles. You haven't been opened for hundreds of years! How are we supposed to commence all of our ceremonial rituals if we can't get into the shrine room!' The man hears your footsteps and turns around red and irritated. 
	
	'I am Chief Radzen, leader of the Geracian tribe and this is my land. Who are you and what is your purpose for coming to me?' he says.
	
	You explain your situation to the Chief while he nods understandingly.
	
	'Mmmhmmm… I see… Well, you need to find a way to get home don't you? We could help you, but first you need to prove you are worthy of our assistance and that you aren't just someone from an enemy tribe trying to invade us. Hmmmm… there is a magical beast on the other side of the river to the east of our village. It has been terrorizing my people, eating our livestock and trampling our crops. Find the beast and kill him. Then come talk to me. I'll be in my hut; thinking of ways to open that stupid door…'
	
	
	The Chief then walks briskly past you and dissapears down the mountain path.";
	move the Chief to the Chief's Hut;
	continue the action.
	


The golden door is a door. The Golden Door is lockable and locked. The golden door is east of the Mountain Summit Shrine.










[The Hidden Shrine Room]

The Hidden Shrine Room is a room. The Hidden Shrine Room is east of the golden door. The description of the Hidden Shrine Room is "You walk in through the hidden entrance and burst into a shrine room for the island's main God. The room is amazing. Its gold, intricately engraved tiles on the floor and shimmering walls, giving off a faint flickering glow, made it hard to believe the room had been lost for centuries."



The golden statue is an object in the Hidden Shrine Room. The golden statue is fixed in place. The description of the golden statue is "A statue of the island's main God, Master Tryn the King of Creation. It appears to have been hand carved with great skill from a single golden block of colossal proportions."

Instead of taking the golden statue:
	say "Why would you want to take the statue? The mysterious islanders would kill you if they found you taking their God away from them! Assuming you could even find a way to get a 5 ton statue off of the island anyways… Find a way to get yourself off the island first."
	







[Victories]







[Deaths]








[Score and Rankings]








