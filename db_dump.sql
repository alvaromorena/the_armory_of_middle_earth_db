<<<<<<< HEAD
-- Database dump generated: 2025-11-07T15:52:59.553044 UTC
=======
-- Database dump generated: 2025-11-07T20:58:18.932558 UTC
>>>>>>> 0f7818a (Update database dump)
SET client_encoding = 'UTF8';


-- table: data
CREATE TABLE IF NOT EXISTS data (
    id SERIAL PRIMARY KEY,
    unit TEXT NOT NULL,
    amount INT NOT NULL,
    painted INT NOT NULL,
    type TEXT,
    allegiance TEXT,
    version TEXT,
    date_added DATE DEFAULT CURRENT_DATE,
    status TEXT,
    image_path TEXT
);

-- table: scenarios
CREATE TABLE IF NOT EXISTS scenarios (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    book TEXT,
    page INTEGER,
    description TEXT,
    map_size TEXT,
    image_path TEXT
);

-- table: scenario_units
CREATE TABLE IF NOT EXISTS scenario_units (
    id SERIAL PRIMARY KEY,
    scenario_id INTEGER REFERENCES scenarios(id) ON DELETE CASCADE,
    unit TEXT NOT NULL,
    unit_version TEXT,
    side TEXT NOT NULL,
    amount_required INTEGER NOT NULL
);

-- table: campaigns
CREATE TABLE IF NOT EXISTS campaigns (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    status TEXT,
    description TEXT
);

-- table: campaign_scenarios
CREATE TABLE IF NOT EXISTS campaign_scenarios (
    id SERIAL PRIMARY KEY,
    campaign_id INTEGER REFERENCES campaigns(id) ON DELETE CASCADE,
    scenario_id INTEGER REFERENCES scenarios(id) ON DELETE CASCADE,
    UNIQUE(campaign_id, scenario_id)
);

-- data: data
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Aragorn (Strider)',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Gildor Inglorion',0,0,'Hero','Rivendell',NULL,'2025-11-03','Missing',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Frodo',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Sam',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Merry',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Pippin',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Pippin',1,0,'Hero','The fellowship','Weathertop Box','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Merry',1,0,'Hero','The fellowship','Weathertop Box','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Frodo',1,0,'Hero','The fellowship','Weathertop Box','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Sam',1,0,'Hero','The fellowship','Weathertop Box','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Ringwraith',5,5,'Hero','Mordor','On foot','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Aragorn (Strider)',1,0,'Hero','The fellowship','Weathertop Box','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Saruman',1,0,'Hero','Isengard','Plastic version','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Saruman',1,1,'Hero','Isengard','Metal','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Grima Wormtonge',1,0,'Hero','Isengard','Plastic version','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Saruman',1,0,'Hero','Isengard','(On horse)','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Treebeard',1,1,'Hero','Fangorn','Metal','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Ent',1,1,'Monster','Fangorn',NULL,'2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Bilbo',1,1,'Hero','The shire',NULL,'2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Gandalf',1,1,'Hero','The shire','(On cart)','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Troll',1,0,'Monster','Moria','(with spear) Plastic Version','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Gimli',1,0,'Hero','The fellowship','(on dead Uruk-hai)','2025-11-03','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Gimli',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Legolas',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Boromir',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Gandalf',1,1,'Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Farmer Maggot',1,0,'Hero','The shire',NULL,'2025-11-03','On Sprue',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Scout',8,8,'Infantry','Isengard','(No additional equipment)','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Scout',8,8,'Infantry','Isengard','(With bow)','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Scout',8,8,'Infantry','Isengard','(With shield)','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Tom Bombadil',1,0,'Hero','Free people',NULL,'2025-11-04','Sealed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Goldberry',1,0,'Hero','Free people',NULL,'2025-11-04','Sealed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Warrior',10,10,'Infantry','Isengard','(With shield)','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Warrior',10,10,'Infantry','Isengard','(With pike)','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Warrior Captain',1,1,'Hero','Isengard',NULL,'2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Lurtz, Uruk-hai Scout Captain',1,1,'Hero','Isengard','Metal','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Ugluk, Uruk-hai Scout Captain',1,1,'Hero','Isengard',NULL,'2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('King of the dead',1,1,'Hero','Dunharrow','Plastic version','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Herald of the dead',2,2,'Hero','Dunharrow','Plastic version','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Warrior of the dead',4,4,'Infantry','Dunharrow','(With spear)','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Warrior of the dead',2,2,'Infantry','Dunharrow','(With shield and spear)','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Warrior of the dead',14,14,'Infantry','Dunharrow','(With shield)','2025-11-04','Completed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Berserker',12,0,'Infantry','Isengard',NULL,'2025-11-04','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Warrior',6,0,'Infantry','Isengard','(With crossbow)','2025-11-04','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Mordor orc',1,0,'Infantry','Mordor','(With Banner)','2025-11-04','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Uruk-hai Warrior',1,0,'Infantry','Isengard','(With Banner)','2025-11-04','Assembled',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Barrow-wights',2,0,'Hero','Angmar',NULL,'2025-11-04','Sealed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Ringwraith',2,0,'Hero','Mordor','(On horse)','2025-11-04','On Sprue',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Barliman Butterbur',1,0,'Hero','The shire',NULL,'2025-11-04','Sealed',NULL);
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status, image_path) VALUES ('Harry Goatleaf',1,0,'Hero','The shire',NULL,'2025-11-04','Sealed',NULL);

-- data: scenarios
INSERT INTO scenarios (name, book, page, description, map_size, image_path) VALUES ('Weathertop','Quest of the ringbearer',22,$q6a674df6f9$After fleeing the Black Riders in Bree, the Hobbits have had to put their faith in the mysterious traveller known as Strider who aided their escape. With Gandalf not having been at the Prancing Pony, the Hobbits must now follow Strider to Rivendell in order to keep the Ring safe and prevent the Black Riders from finding them and reclaiming the Ring for the Dark Lord.
 As they continue to walk eastwards across country, Aragorn and the Hobbits stop to rest within the old ruined watchtower of Amon Sul. This former seat of power once held one of the Palantiri in the times of Elendil, though many years of war and ruin have seen it abandoned and in disrepair. Weathertop, as it is now known, would make an ideal place to set up camp away from prying eyes, and whilst the Hobbits rest, Strider goes off to forage for food.
 Yet, Strider has been away for some time scouting the lands around Weathertop, and Hobbits never were ones to go without food for too long if they can help it. In the depths of night, the Hobbits'' hunger provokes them to start a small fire in the hope of cooking a quick meal of tomatoes, sausages and some nice crispy bacon as a means to fill them up and prevent their stomachs from constantly rumbling.
 However, their innocent endeavour has had some dire consequences and has given away their location to the pursuing Ringwraiths, who now head straight towards the ruins of the watchtower of Amon Sul. Huddled together within the centre of Weathertop, the terrified Hobbits are faced with the shrouded figures of the Nazgul, and the terrible fate that awaits them if Strider cannot reach them in time...$q6a674df6f9$,'2x2 ft',NULL);
INSERT INTO scenarios (name, book, page, description, map_size, image_path) VALUES ($qb1b26f2b1c$Farmer Maggot's crop$qb1b26f2b1c$,'Quest of the ringbearer',10,$qd527eb1570$Farmer Maggot is a well-respected member of the Shire community; a stubborn and practical fellow who devotes his time to the crops that he grows rather than to the other goings-on in the Shire. It is said that Maggot''s crops are the best in all the four Farthings. His carrots are without peer, his cabbages tastier than any others, but it is his mushrooms that are the pride of Maggot''s crop; envied across the Shire, especially as all Hobbits are rather fond of mushrooms.

As a direct result of having the best crops, Maggot''s farm is often subject to raids for his produce. Not the violent and aggressive raids that happen in other reaches of Middle-earth, but instead the mischievous antics of youthful Hobbits who see pinching the odd batch of mushrooms as a thrilling rite of passage in the Shire. Certainly, these raids are not the kind to cause a larger skirmish or fight, but should Farmer Maggot catch those younger Hobbits in the act then he will not hesitate to administer a swift thwack with his hands or set his dogs upon the intruders. Many has been the young Hobbit who has returned home empty handed and sporting the odd bruise and dog bite.

As Frodo and Sam set out to Bree they wandered into one of Maggot''s fields, and it just so happened to be the one that Merry and Pippin were intent on raiding themselves. Upon joining up together, the Hobbits decide to try to gather some extra provisions for themselves, however, should Maggot''s dogs alert him to the actions of the Hobbits, then the farmer will no doubt race out to protect his crop.$qd527eb1570$,'4x4 ft',NULL);
INSERT INTO scenarios (name, book, page, description, map_size, image_path) VALUES ('Short cuts make long delays','Quest of the ringbearer',12,$q16cffcd0bd$Frodo and his companions have departed the Shire. Unaware of the danger they are actually in. Merry has gone ahead to prepare Crickhollow and meet Frodo later on, leaving the others to make their way towards Buckleberry Ferry. As they walk the forest paths, the Hobbits encounter a rider in black and instinctively hide from it after feeling a sense of dread wash over them.

Having evaded the mysterious Black Rider, the Hobbits continue on their way through the woodlands of the Shire. Along one of the many forest paths, they encounter a group of Elves led by Gildor Inglorion. The Elves provide the Hobbits with some much-needed rest, food and advice on the Black Riders they have encountered, before Frodo and his companions continue on their way.

As the Hobbits leave the company of Gildor and the Elves and make their way through the forest, they make sure to heed Gandalf''s words and stay off the roads as much as possible. Yet even as night begins to fall, the Hobbits begin to feel fear once more seeping in. They cannot shake the feeling of dread that the mysterious riders in black are not far away and constantly a threat to them.

In truth, the riders in black are far closer than Frodo and his companions realise, constantly stalking the paths of the forest in their search for the one who carries the Ring. Should the Nazguls'' search prove fruitful and they find the Baggins that carries their master''s prize, they will not hesitate to kill him and take the Ring for Sauron.$q16cffcd0bd$,'4x4 ft',NULL);
INSERT INTO scenarios (name, book, page, description, map_size, image_path) VALUES ('Buckleberry Ferry','Quest of the ringbearer',14,$q96b3630c99$Having once evaded the Black Riders, and spent some time resting with Gildor and his Elves, the Hobbits find themselves back on their journey towards Crickhollow. Once more heeding Gandalf''s words to stay off the road, the Hobbits are travelling through the densely wooded areas of Buckland just in case any more of these mysterious riders in black may yet be tracking them.

As they near the Brandywine River, the Hobbits'' fears are realised. Ahead they are aware of some of the Black Riders hunting for them and fear once more begins to creep into their minds. However, the Nazgul have not yet noticed the presence of the Hobbits, and are searching the surrounding area as they seek for whoever carries the Ring of Power.

The Hobbits know they must escape the Black Riders and quickly, and the only way to put some meaningful distance between them and their pursuers is to cross the Brandywine River using the Buckleberry Ferry. However, the Nazgul stand between them and the relative safety of the ferry, so to reach it the Hobbits will have to use every ounce of stealth, and no small amount of luck, to make it to the ferry undetected.$q96b3630c99$,'4x4 ft',NULL);
INSERT INTO scenarios (name, book, page, description, map_size, image_path) VALUES ('The old forest','Quest of the ringbearer',16,$q0e227048d2$Having evaded the Black Riders for the time being, the Hobbits have reached Frodo''s new home of Crickhollow. Stopping for the night to sleep, stock up on provisions, and above all, have a large well-earned meal, Frodo and his companions are in good spirits as they leave the comfort of Crickhollow in the hands of their friend Fredegar Bolger, and set off east once more.

Upon their journey, the Hobbits decide to venture through the Old Forest on the edge of Buckland, for the Black Riders will not be able to traverse the thick undergrowth and so the Hobbits can potentially shake them off their tail. Yet there have long been tales about the Old Forest in old Shire stories; some say that those who venture into it seldom return, whilst others say that the trees themselves are full of danger and can come alive.

Regardless of what actually may be true, the Old Forest is a scary place to walk, and no Hobbit would go there if they did not have to. Yet the Hobbits push on anyway, for surely whatever terrors the forest may hold cannot be worse than another encounter with the Black Riders. As they go deeper into the forest, the Hobbits get an uneasy feeling about their surroundings, and soon have become lost in the shrouded gloom. Unsure of the way to go, the Hobbits can hear the sounds of snapping twigs and creaking boughs, and begin to realise that some of the old stories may have more truth than they ever imagined...$q0e227048d2$,'2x2 ft',NULL);
INSERT INTO scenarios (name, book, page, description, map_size, image_path) VALUES ('Fog on the barrow downs','Quest of the ringbearer',18,$qb30327b592$Following their ordeal within the Old Forest, the Hobbits have been rescued by the jolly Tom Bombadil. Having freed the Hobbits from the clutches of Old Man Willow, Tom has led them to his home to meet his wife, Goldberry, eat and sing merrily to raise their spirits, before sending them off to bed to get a good long rest. Waking refreshed and in as high spirits as they have ever been, Frodo and his companions head away from the homestead of Tom Bombadil filled with good food and a merry heart, setting out once more.

Continuing along the forest paths they come to a clearing, one with a series of strange looking mounds around it. As they venture forth, fog quickly descends upon the clearing reducing visibility to mere feet.

From within the barrows, long-dead beings drift into the clearing. The spirits of forgotten kings and noblemen of old. These dread Barrow-wights have come forth from their barrows to claim a sacrifice in order to perform an ancient ritual, and the Hobbits who are completely unaware of their spectral presence are seemingly easy targets. Lost within the fog that has descended upon the Barrow-downs, the Hobbits must try to find their way through the fog for safety. If Frodo and his companions quickly realise the danger they are in, they will need to call to Tom Bombadil and Goldberry for help once more, yet should they realise too late the severity of the peril they are in, they may well soon rest with the spirits of the dead within the barrows.$q3d70ec4309$,'4x4 ft',NULL);
INSERT INTO scenarios (id, name, book, page, description, map_size, image_path) VALUES (7,'Nazgul in Bree','Quest of the ringbearer',20,$q8d74c67eb6$Having made their way out of the Old Forest, the Hobbits find themselves at the gates to the village of Bree where they are questioned by the aging gatekeeper, Harry Goatleaf. Convincing Harry to let them pass, Frodo and his companions make straight for the inn at the Prancing Pony where Gandalf has said he will be waiting for them.

Lost within the fog that has descended upon the Barrow-downs, the Hobbits must try to find their way through the fog for safety. If Frodo and his companions quickly realise the danger they are in, they will need to call to Tom Bombadil and Goldberry for help once more, yet should they realise too late the severity of the peril they are in, they may well soon rest with the spirits of the dead within the barrows.From within the barrows, long-dead beings drift into the clearing; the spirits of forgotten kings and noblemen of old. These dread Barrow-wights have come forth from their barrows to claim a sacrifice in order to performan ancient ritual, and the Hobbits who are completely unaware of their spectral presence are seemingly easy targets. Lost within the fog that has descended upon the Barrow-downs, the Hobbits must try to find their way through the fog for safety. If Frodo and his companions quickly realise the danger they are in, they will need to call to Tom Bombadil and Goldberry for help once more, yet should they realise too late the severity of the peril they are in, they may well soon rest with the spirits of the dead within the barrows.$qb30327b592$,'4x4 ft',NULL);
INSERT INTO scenarios (name, book, page, description, map_size, image_path) VALUES ('Nazgul in Bree','Quest of the ringbearer',20,$q267f767f40$Having made their way out of the Old Forest, the Hobbits find themselves at the gates to the village of Bree where they are questioned by the aging gatekeeper, Harry Goatleaf. Convincing Harry to let them pass, Frodo and his companions make straight for the inn at the Prancing Pony where Gandalf has said he will be waiting for them.

However, upon entering the inn and talking to the kindly landlord, Barliman Butterbur, the Hobbits discover that Gandalf is not there and they have no idea what to do next. Deciding to rest, eat and sample some of the ales the Pony has to offer, the Hobbits enjoy the warmth and comfort of the inn; until the raucous goings-on of Pippin cause Frodo to fall and the Ring to slip onto his finger, making him disappear in front of the very eyes of the other guests.

Such an act caused much discussion among the residents of Bree, but none was more drawn to Frodo''''s accident than the strange hooded figure that had been sitting in the corner of the inn watching the Hobbits. Fortunately, the Ranger revealed himself to be a friend of Gandalf, something backed up by a letter left at the Prancing Pony for Frodo.

However, this mysterious Ranger, going by the name of Strider, is more than he seems at first. Strider is aware of the dread truth of what now stalks Frodo and his companions, and that the Hobbits are not nearly as frightened as perhaps they should be. If Frodo is to avoid the clutches of the Ringwraiths, he must trust in Strider who himself must get the Hobbits out of Bree before the Nazgul can find them.$q267f767f40$,'4x4 ft',NULL);

-- data: scenario_units
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (1,'Aragorn (Strider)','Weathertop Box','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (1,'Frodo','Weathertop Box','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (1,'Sam','Weathertop Box','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (1,'Merry','Weathertop Box','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (1,'Pippin','Weathertop Box','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (1,'Ringwraith','On foot','Evil',5);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (2,'Farmer Maggot',NULL,'Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (2,'Frodo','Plastic version from moria set','Evil',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (2,'Pippin','Plastic version from moria set','Evil',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (2,'Merry','Plastic version from moria set','Evil',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (2,'Sam','Plastic version from moria set','Evil',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (3,'Frodo','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (3,'Sam','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (3,'Pippin','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (3,'Gildor Inglorion',NULL,'Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (3,'Ringwraith','On foot','Evil',3);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (4,'Frodo','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (4,'Sam','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (4,'Merry','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (4,'Pippin','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (4,'Ringwraith','On foot','Evil',3);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (5,'Frodo','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (5,'Sam','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (5,'Merry','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (5,'Pippin','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (6,'Frodo','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (6,'Sam','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (6,'Merry','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (6,'Pippin','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (6,'Tom Bombadil',NULL,'Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (6,'Goldberry',NULL,'Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (6,'Barrow-wights',NULL,'Evil',4);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (7,'Frodo','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (7,'Sam','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (7,'Merry','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (7,'Pippin','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (7,'Aragorn (Strider)','Plastic version from moria set','Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (7,'Barliman Butterbur',NULL,'Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (7,'Harry Goatleaf',NULL,'Good',1);
INSERT INTO scenario_units (scenario_id, unit, unit_version, side, amount_required) VALUES (7,'Ringwraith','(On horse)','Evil',4);

-- data: campaigns
INSERT INTO campaigns (name, status, description) VALUES ('Quest of the ringbearer','New',NULL);
