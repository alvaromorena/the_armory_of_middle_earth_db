-- Database dump generated: 2025-11-07T09:17:17.494423 UTC


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
    status TEXT
);

-- table: scenarios
CREATE TABLE IF NOT EXISTS scenarios (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    book TEXT,
    page INTEGER,
    description TEXT,
    map_size TEXT
);

-- table: scenario_units
CREATE TABLE IF NOT EXISTS scenario_units (
    id SERIAL PRIMARY KEY,
    scenario_id INTEGER REFERENCES scenarios(id) ON DELETE CASCADE,
    unit TEXT NOT NULL,
    side TEXT NOT NULL,
    amount_required INTEGER NOT NULL
);

-- data: data
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Aragorn (Strider)','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','C');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Gildor Inglorion','0','0','Hero','Rivendell',NULL,'2025-11-03','Missing');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Frodo','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Sam','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Merry','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Pippin','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Pippin','1','0','Hero','The fellowship','Weathertop Box','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Merry','1','0','Hero','The fellowship','Weathertop Box','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Frodo','1','0','Hero','The fellowship','Weathertop Box','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Sam','1','0','Hero','The fellowship','Weathertop Box','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Ringwraith','5','5','Hero','Mordor','On foot','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Aragorn (Strider)','1','0','Hero','The fellowship','Weathertop Box','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Saruman','1','0','Hero','Isengard','Plastic version','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Saruman','1','1','Hero','Isengard','Metal','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Grima Wormtonge','1','0','Hero','Isengard','Plastic version','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Saruman','1','0','Hero','Isengard','(On horse)','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Treebeard','1','1','Hero','Fangorn','Metal','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Ent','1','1','Monster','Fangorn',NULL,'2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Bilbo','1','1','Hero','The shire',NULL,'2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Gandalf','1','1','Hero','The shire','(On cart)','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Troll','1','0','Monster','Moria','(with spear) Plastic Version','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Gimli','1','0','Hero','The fellowship','(on dead Uruk-hai)','2025-11-03','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Gimli','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Legolas','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Boromir','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Gandalf','1','1','Hero','The fellowship','Plastic version from moria set','2025-11-03','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Farmer Maggot','1','0','Hero','The shire',NULL,'2025-11-03','On Sprue');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Scout','8','8','Infantry','Isengard','(No additional equipment)','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Scout','8','8','Infantry','Isengard','(With bow)','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Scout','8','8','Infantry','Isengard','(With shield)','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Tom Bombadil','1','0','Hero','Free people',NULL,'2025-11-04','Sealed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Goldberry','1','0','Hero','Free people',NULL,'2025-11-04','Sealed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Warrior','10','10','Infantry','Isengard','(With shield)','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Warrior','10','10','Infantry','Isengard','(With pike)','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Warrior Captain','1','1','Hero','Isengard',NULL,'2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Lurtz, Uruk-hai Scout Captain','1','1','Hero','Isengard','Metal','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Ugluk, Uruk-hai Scout Captain','1','1','Hero','Isengard',NULL,'2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('King of the dead','1','1','Hero','Dunharrow','Plastic version','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Herald of the dead','2','2','Hero','Dunharrow','Plastic version','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Warrior of the dead','4','4','Infantry','Dunharrow','(With spear)','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Warrior of the dead','2','2','Infantry','Dunharrow','(With shield and spear)','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Warrior of the dead','14','14','Infantry','Dunharrow','(With shield)','2025-11-04','Completed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Berserker','12','0','Infantry','Isengard',NULL,'2025-11-04','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Warrior','6','0','Infantry','Isengard','(With crossbow)','2025-11-04','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Mordor orc','1','0','Infantry','Mordor','(With Banner)','2025-11-04','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Uruk-hai Warrior','1','0','Infantry','Isengard','(With Banner)','2025-11-04','Assembled');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Barrow-wights','2','0','Hero','Angmar',NULL,'2025-11-04','Sealed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Ringwraith','2','0','Hero','Mordor','(On horse)','2025-11-04','On Sprue');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Barliman Butterbur','1','0','Hero','The shire',NULL,'2025-11-04','Sealed');
INSERT INTO data (unit, amount, painted, type, allegiance, version, date_added, status) VALUES ('Harry Goatleaf','1','0','Hero','The shire',NULL,'2025-11-04','Sealed');

-- data: scenarios
INSERT INTO scenarios (name, book, page, description, map_size) VALUES ('Weathertop','Quest of the ringbearer',22,$$After fleeing the Black Riders in Bree, the Hobbits have had to put their faith in Aragorn. As they continue eastwards across open country, Aragorn and the Hobbits stop to rest within the old ruined watchtower of Amon Sul. This former seat of power once held one of the Palantíri. Strider has been away for some time scouting the lands around Weathertop and the Hobbits' small camp draws the attention of pursuing Ringwraiths. The party must deal with the approaching Nazgûl and protect the ringbearer.$$,'4x4 ft');

INSERT INTO scenarios (name, book, page, description, map_size) VALUES ('Farmer Maggot''s crop','Quest of the ringbearer',10,$$Farmer Maggot is a well-respected member of the Shire community; a stubborn and practical fellow who devotes his time to the crops that he grows rather than to the other goings-on in the Shire. It is said that Maggot''s crops are the best in all the four Farthings. His carrots are without peer, his cabbages tastier than any others, but it is his mushrooms that are the pride of Maggot''s crop; envied across the Shire, especially as all Hobbits are rather fond of mushrooms.

As a direct result of having the best crops, Maggot''s farm is often subject to raids for his produce. Not the violent and aggressive raids that happen in other reaches of Middle-earth, but instead the mischievous antics of youthful Hobbits who see pinching the odd batch of mushrooms as a thrilling rite of passage in the Shire. Certainly, these raids are not the kind to cause a larger skirmish or fight, but should Farmer Maggot catch those younger Hobbits in the act then he will not hesitate to administer a swift thwack with his hands or set his dogs upon the intruders. Many has been the young Hobbit who has returned home empty handed and sporting the odd bruise and dog bite.

As Frodo and Sam set out to Bree they wandered into one of Maggot''s fields, and it just so happened to be the one that Merry and Pippin were intent on raiding themselves. Upon joining up together, the Hobbits decide to try to gather some extra provisions for themselves, however, should Maggot''s dogs alert him to the actions of the Hobbits, then the farmer will no doubt race out to protect his crop.$$,'4x4 ft');

INSERT INTO scenarios (name, book, page, description, map_size) VALUES ('Short cuts make long delays','Quest of the ringbearer',12,$$Frodo and his companions have departed the Shire and, having evaded the mysterious Black Rider, continue through the woodlands. Along one of the forest paths they encounter a group of Elves led by Gildor Inglorion. The Hobbits are counselled to stay off the roads, and though they attempt to follow this advice the Nazgûl remain a constant threat. The scenario focuses on stealth and evasion as well as the tension of being pursued.$$,'4x4 ft');

INSERT INTO scenarios (name, book, page, description, map_size) VALUES ('Buckleberry Ferry','Quest of the ringbearer',14,$$Having once evaded the Black Riders and spent some time resting with Gildor, the Hobbits near the Brandywine River. The only way to put meaningful distance between them and their pursuers is to cross the river using the Buckleberry Ferry. The scenario centers on escape under pressure and the hazards of river crossing while hunted.$$,'4x4 ft');

INSERT INTO scenarios (name, book, page, description, map_size) VALUES ('The old forest','Quest of the ringbearer',16,$$Having evaded the Black Riders for the time being, the Hobbits have reached Frodo and his companions venture into the Old Forest on the edge of Buckland. The thick undergrowth and strange paths make travel hazardous and the party may encounter unnatural dangers. This scenario emphasises navigation and survival in an eerie woodland setting.$$,'4x4 ft');

INSERT INTO scenarios (name, book, page, description, map_size) VALUES ('Fog on the barrow downs','Quest of the ringbearer',18,$$Following their ordeal within the Old Forest, the Hobbits continue along the forest paths until they come to a clearing ringed with strange mounds. Fog descends swiftly and visibility fades. From within the barrows, long-dead beings — Barrow-wights — may emerge to claim a sacrifice. The party must find a way through the fog and resist the ancient spirits.$$,'4x4 ft');

INSERT INTO scenarios (name, book, page, description, map_size) VALUES ('Nazgul in Bree','Quest of the ringbearer',20,$$Having made their way out of the Old Forest, the Hobbits find themselves at Bree. While at the inn they discover that Gandalf is absent and seek refuge. The arrival of a mysterious hooded figure and the later meeting with Strider set the scene, while the presence of Ringwraiths nearby keeps tension high. The scenario focuses on intrigue, pursuit, and the uneasy safety of Bree.$$,'4x4 ft');

-- data: scenario_units
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('1','Aragorn (Strider)','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('1','Frodo','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('1','Sam','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('1','Merry','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('1','Pippin','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('1','Ringwraith','Evil','5');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('2','Farmer Maggot','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('2','Frodo','Evil','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('2','Pippin','Evil','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('2','Merry','Evil','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('2','Sam','Evil','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('3','Frodo','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('3','Sam','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('3','Pippin','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('3','Gildor Inglorion','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('3','Ringwraith','Evil','3');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('4','Frodo','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('4','Sam','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('4','Merry','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('4','Pippin','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('4','Ringwraith','Evil','3');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('5','Frodo','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('5','Sam','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('5','Merry','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('5','Pippin','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('6','Frodo','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('6','Sam','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('6','Merry','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('6','Pippin','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('6','Tom Bombadil','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('6','Goldberry','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('6','Barrow-wights','Evil','4');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('7','Frodo','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('7','Sam','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('7','Merry','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('7','Pippin','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('7','Aragorn (Strider)','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('7','Barliman Butterbur','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('7','Harry Goatleaf','Good','1');
INSERT INTO scenario_units (scenario_id, unit, side, amount_required) VALUES ('7','Ringwraith','Evil','4');