"justKeysandRooms" by SenseiCanada

Release along with the "Quixe" interpreter.

The waterLevel is a number variable. The waterLevel is 5.

Every turn:
	say "The water is [waterLevel] cm high.";

Every turn: now the waterLevel is the waterLevel + 4.
	
The kitchen is a room.

The green door is a locked door. The green door is north of the kitchen.

The bathroom is a room. The bathroom is north of the green door.

The living room is a room. The living room is east of the kitchen.

The entrance hall is a room. The entrance hall is south of the kitchen.

The front door is a locked door. The front door is south of the entrance hall.

The street is a room. The street is south of the front door.

Every turn when the player is in the street:
	 say "[if the hair dryer is switched on]You made it out of the locked apartment. As you wade into the flooded street you hear a faint sparking sound from the apartment. All of a sudden a jolt of electricity courses through your body and you collapse into the muddy floodwater. GAME OVER.[else]You made it out of the locked appartment. As you wade into the flooded street, the taby cat jumps onto your shoulders and licks your ear. THE END.[end if]"; end the story.

Every turn when the waterLevel is greater than 100 and the hair dryer is switched on:
	say "You hear a faint sparking sound from the bathroom. All of a sudden a jolt of electricity courses through your bady and you collapse onto the floor. GAME OVER."; end the story.

[kitchen]

The description of the kitchen is "The kitchen of a basement apartment. The bathroom is to the north, the living room is east, and the entrance hall is south. There is a leak coming from somewhere, you are standing in [waterLevel] cm of water. [if the hair dryer is switched on]There is muffled whirring sound coming from the green bathroom door. [end if]"

The counter is a fixed in place thing in the kitchen. The counter is a supporter.

A cabinet is a kind of container. A cabinet is always openable and closed. The kitchen cabinet is a cabinet. The kitchen cabinet is in the kitchen. The cabinet is fixed in place.

After opening the kitchen cabinet:
	say "There is a flat can of fish in the cabinet, sardines to be exact."

The can of fish is a locked container. The can of fish is in the kitchen cabinet.

Instead of unlocking the the can of fish with the knife:
	say "There are sardines in the can.";
	now the player is carrying the sardines.

The sardines is a thing. The sardines is in the can of fish.

[green door]

The description of the green door is "behind the door you can hear a hair dryer. The green door's handle is silver"

[bathroom]

The description of the bathroom is "The sink is 100 cm tall. A hair dryer and a brass key rest on the sink. [if the hair dryer is switched on]The hair dryer is on.[else] The hair dryer is off. [end if]"

The sink is a fixed in place thing in the bathroom. The sink is a supporter.

The hair dryer is a switched on device in the bathroom. The hair dyer is on the sink.

The brass key is a thing. The brass key unlocks the front door. The brass key is on the sink.

[living room]

The description of the living room is "From one of the couches, an orange taby blearily opens one eye and stares at you reproachfully"

The cat is a neuter animal. The description of the cat is "Around the cat's collar dangles a silver key."

The couch is a fixed in place thing in the living room. The cat is on the couch.

The silver key is a thing. The cat carries the silver key. The silver key unlocks the green door.

Instead of asking the cat for the silver key when the cat is not carrying the sardines:
		say "The cat wriggles away, preventing you from unhooking the silver key from its colar. Perhaps some food would keep it still long enough to take the key...";

Instead of giving the sardines to the cat:
		say "The cat meows hungrily and starts to eat up the sardines from your hand. ";
		say "As you unhook the silver key from the collar, you hear the muffled hair dryer in the bathroom and feel the water creeping around your knees";
		now the waterLevel is 20;
		now the cat is carrying the sardines;
		now the player is carrying the silver key.

[entrance hall]

The description of the entrance hall is "You can hear the pounding of rain outside. From beneath the front door, cold, muddy water flows down the steps into the basement ap artment. The lock on the front door is brass-colored."

The pocket knife is a thing. The pocket knife unlocks the can of fish.

The shelf is a fixed in place thing in the entrance hall. The shelf is a supporter. The pocket knife is on the shelf.


[TESTS]
Test win with "open cabinet / take can of fish / go e / x cat".
