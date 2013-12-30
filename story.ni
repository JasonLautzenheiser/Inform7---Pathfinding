"PathfindingArticles" by Jason Lautzenheiser

A room can be kitten-friendly.  A room is usually kitten-friendly.

The kitchen is a room.  The description of kitchen is "Smells of last night's dinner still linger in the air."

The family-room is a room.  The printed name of family-room is "Family Room".  The description of family-room is "A sole rocking chair sits facing the large screen television in the corner."  

The dining-room is a room.  The printed name of dining-room is "Dining room".  The description of dining-room is "A table sits in the middle of the room with just two chairs on either side."  The dining-room is north of the kitchen.

The den is a room.  The den is not kitten-friendly.  The description of den is "The den contains a student desk with a simple wooden chair."  The den is west of the dining-room.

The kitten is an animal.  The kitten is in the family-room.  The description of kitten is "The small fluffy kitten sits and looks expectantly at you."

The kitchen-door is a door.  the kitchen-door is north of family-room and south of the kitchen.  The kitchen-door is closed.  Understand "door" as kitchen-door.  The printed name of kitchen-door is "kitchen door".

The hallway is a room.  The hallway is south of the den and west of the kitchen.  The description of hallway is "This narrow passage way has just enough space to move through."

Every turn:
	let course be the best route from location of the kitten to the location of the player through kitten-friendly rooms, using doors;
	if course is a direction:
		say "***Kitten go [course].";
		let the target be the room-or-door course from the location of the kitten;
		if target is not a door:
			say "****No door, move through.";
			try kitten going course;
		otherwise:
			say "**** we have a door.";
			 repeat with doorway running through visible doors:
				 if the other side of doorway from the location of the kitten is room course from the location of the kitten:
					if doorway is open:
						try kitten going course;
					otherwise:
						say "You hear a scratching from the other side of the door.";
	otherwise:
		if location of kitten is the location of the player:
			say "The kitten sits and looks up at you expectantly";
		else:
			say "The kitten tried to enter [the location], but thought better of it."
	


