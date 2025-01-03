CREATE schema pokedex DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE pokedex;

CREATE TABLE pokemon (
  id_pokemon VARCHAR(5) PRIMARY KEY,
  pic VARCHAR(30) NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  tipos VARCHAR(20) NOT NULL,
  habilidad1 VARCHAR(30) NOT NULL,
  habilidad2 VARCHAR(30),
  habilidad3 VARCHAR(30),
  hp INT(3) NOT NULL,
  att INT(3) NOT NULL,
  def INT(3) NOT NULL,
  s_att INT(3) NOT NULL,
  s_def INT(3) NOT NULL,
  spd INT(3) NOT NULL,
  x2 VARCHAR(60),
  x4 VARCHAR(60),
  x1_2 VARCHAR(60),
  x1_4 VARCHAR(60),
  x0 VARCHAR(60)
);

INSERT INTO pokemon VALUES
('#0001','pokedex/001.png','Bulbasaur','Grass/Poison','Overgrow','Chlorophyll','',45,49,49,65,65,45,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0002','pokedex/002.png','Ivysaur','Grass/Poison','Overgrow','Chlorophyll','',60,62,63,80,80,60,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0003','pokedex/003.png','Venusaur','Grass/Poison','Overgrow','Chlorophyll','',80,82,83,100,100,80,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0004','pokedex/004.png','Charmander','Fire','Blaze','Solar Power','',39,52,43,60,50,65,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0005','pokedex/005.png','Charmeleon','Fire','Blaze','Solar Power','',58,64,58,80,65,80,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0006','pokedex/006.png','Charizard','Fire/Flying','Blaze','Solar Power','',78,84,78,109,85,100,'Water/Electric','Rock','Fire/Steel/Fairy/Fighting','Grass/Bug','Ground'),
('#0007','pokedex/007.png','Squirtle','Water','Torrent','Rain Dish','',44,48,65,50,64,43,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0008','pokedex/008.png','Wartortle','Water','Torrent','Rain Dish','',59,63,80,65,80,58,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0009','pokedex/009.png','Blastoise','Water','Torrent','Rain Dish','',79,83,100,85,105,78,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0010','pokedex/010.png','Caterpie','Bug','Shield Dust','Run Away','',45,30,35,20,20,45,'Fire/Flying/Rock','','Grass/Fighting/Ground','',''),
('#0011','pokedex/011.png','Metapod','Bug','Shed Skin','','',50,20,55,25,25,30,'Fire/Flying/Rock','','Grass/Fighting/Ground','',''),
('#0012','pokedex/012.png','Butterfree','Bug/Flying','Compound Eyes','Tinted Lens','',60,45,50,90,80,70,'Fire/Flying/Electric/Ice','Rock','Bug','Grass/Fighting','Ground'),
('#0013','pokedex/013.png','Weedle','Bug/Poison','Shield Dust','Run Away','',40,35,30,20,20,50,'Fire/Flying/Rock/Psychic','','Poison/Bug/Fairy','Grass/Fighting',''),
('#0014','pokedex/014.png','Kakuna','Bug/Poison','Shed Skin','','',45,25,50,25,25,35,'Fire/Flying/Rock/Psychic','','Poison/Bug/Fairy','Grass/Fighting',''),
('#0015','pokedex/015.png','Beedrill','Bug/Poison','Swarm','Sniper','',65,90,40,45,80,75,'Fire/Flying/Rock/Psychic','','Poison/Bug/Fairy','Grass/Fighting',''),
('#0016','pokedex/016.png','Pidgey','Normal/Flying','Keen Eye','Tangled Feet','Big Pecks',40,45,40,35,35,56,'Electric/Ice/Rock','','Grass/Bug','','Ghost/Ground'),
('#0017','pokedex/017.png','Pidgeotto','Normal/Flying','Keen Eye','Tangled Feet','Big Pecks',63,60,55,50,50,71,'Electric/Ice/Rock','','Grass/Bug','','Ghost/Ground'),
('#0018','pokedex/018.png','Pidgeot','Normal/Flying','Keen Eye','Tangled Feet','Big Pecks',83,80,75,70,70,101,'Electric/Ice/Rock','','Grass/Bug','','Ghost/Ground'),
('#0019','pokedex/019.png','Rattata','Normal','Run Away','Guts','Hustle',30,56,35,25,35,72,'Fighting','','','','Ghost'),
('#0020','pokedex/020.png','Raticate','Normal','Run Away','Guts','Hustle',55,81,60,50,70,97,'Fighting','','','','Ghost'),
('#0021','pokedex/021.png','Spearow','Normal/Flying','Keen Eye','Sniper','',40,60,30,31,31,70,'Electric/Ice/Rock','','Grass/Bug','','Ghost/Ground'),
('#0022','pokedex/022.png','Fearow','Normal/Flying','Keen Eye','Sniper','',65,90,65,61,61,100,'Electric/Ice/Rock','','Grass/Bug','','Ghost/Ground'),
('#0023','pokedex/023.png','Ekans','Poison','Intimidate','Shed Skin','Unnerve',35,60,44,40,54,55,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0024','pokedex/024.png','Arbok','Poison','Intimidate','Shed Skin','Unnerve',60,95,69,65,79,80,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0025','pokedex/025.png','Pikachu','Electric','Static','Lightning Rod','',35,55,40,50,50,90,'Ground','','Electric/Flying/Steel','',''),
('#0026','pokedex/026.png','Raichu','Electric','Static','Lightning Rod','',60,90,55,90,80,110,'Ground','','Electric/Flying/Steel','',''),
('#0027','pokedex/027.png','Sandshrew','Ground','Sand Veil','Sand Rush','',50,75,85,20,30,40,'Water/Grass/Ice','','Poison/Rock','','Electric'),
('#0028','pokedex/028.png','Sandslash','Ground','Sand Veil','Sand Rush','',75,100,110,45,55,65,'Water/Grass/Ice','','Poison/Rock','','Electric'),
('#0029','pokedex/029.png','Nidoran♀','Poison','Poison Point','Rivalry','Hustle',55,47,52,40,40,41,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0030','pokedex/030.png','Nidorina','Poison','Poison Point','Rivalry','Hustle',70,62,67,55,55,56,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0031','pokedex/031.png','Nidoqueen','Poison/Ground','Poison Point','Rivalry','Sheer Force',90,92,87,75,85,76,'Ground/Psychic/Water/Ice','','Fighting/Bug/Fairy/Rock','Poison','Electric'),
('#0032','pokedex/032.png','Nidoran♂','Poison','Poison Point','Rivalry','Hustle',46,57,40,40,40,50,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0033','pokedex/033.png','Nidorino','Poison','Poison Point','Rivalry','Hustle',61,72,57,55,55,65,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0034','pokedex/034.png','Nidoking','Poison/Ground','Poison Point','Rivalry','Sheer Force',81,102,77,85,75,85,'Ground/Psychic/Water/Ice','','Fighting/Bug/Fairy/Rock','Poison','Electric'),
('#0035','pokedex/035.png','Clefairy','Fairy','Cute Charm','Magic Guard','Friend Guard',70,45,48,60,65,35,'Poison/Steel','','Fighting/Bug/Dark','','Dragon'),
('#0036','pokedex/036.png','Clefable','Fairy','Cute Charm','Magic Guard','Unaware',95,70,73,95,90,60,'Poison/Steel','','Fighting/Bug/Dark','','Dragon'),
('#0037','pokedex/037.png','Vulpix','Fire','Flash Fire','Drought','',38,41,40,50,65,65,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0038','pokedex/038.png','Ninetales','Fire','Flash Fire','Drought','',73,76,75,81,100,100,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0039','pokedex/039.png','Jigglypuff','Normal/Fairy','Cute Charm','Competitive','Friend Guard',115,45,20,45,25,20,'Poison/Steel','','Bug/Dark','','Ghost/Dragon'),
('#0040','pokedex/040.png','Wigglytuff','Normal/Fairy','Cute Charm','Competitive','Frisk',140,70,45,85,50,45,'Poison/Steel','','Bug/Dark','','Ghost/Dragon'),
('#0041','pokedex/041.png','Zubat','Poison/Flying','Inner Focus','Infiltrator','',40,45,35,30,40,55,'Psychic/Electric/Ice/Rock','','Poison/Fairy','Fighting/Bug/Grass','Ground'),
('#0042','pokedex/042.png','Golbat','Poison/Flying','Inner Focus','Infiltrator','',75,80,70,65,75,90,'Psychic/Electric/Ice/Rock','','Poison/Fairy','Fighting/Bug/Grass','Ground'),
('#0043','pokedex/043.png','Oddish','Grass/Poison','Chlorophyll','Run Away','',45,50,55,75,65,30,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0044','pokedex/044.png','Gloom','Grass/Poison','Chlorophyll','Stench','',60,65,70,85,75,40,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0045','pokedex/045.png','Vileplume','Grass/Poison','Chlorophyll','Effect Spore','',75,80,85,110,90,50,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0046','pokedex/046.png','Paras','Bug/Grass','Effect Spore','Dry Skin','Damp',35,70,55,45,55,25,'Rock/Ice/Poison/Bug','Fire/Flying','Fighting/Water/Electric','Grass/Ground',''),
('#0047','pokedex/047.png','Parasect','Bug/Grass','Effect Spore','Dry Skin','Damp',60,95,80,60,80,30,'Rock/Ice/Poison/Bug','Fire/Flying','Fighting/Water/Electric','Grass/Ground',''),
('#0048','pokedex/048.png','Venonat','Bug/Poison','Compound Eyes','Tinted Lens','Run Away',60,55,50,40,55,45,'Fire/Flying/Rock/Psychic','','Poison/Bug/Fairy','Grass/Fighting',''),
('#0049','pokedex/049.png','Venomoth','Bug/Poison','Shield Dust','Tinted Lens','Wonder Skin',70,65,60,90,75,90,'Fire/Flying/Rock/Psychic','','Poison/Bug/Fairy','Grass/Fighting',''),
('#0050','pokedex/050.png','Diglett','Ground','Sand Veil','Arena Trap','Sand Force',10,55,25,35,45,95,'Water/Grass/Ice','','Poison/Rock','','Electric'),
('#0051','pokedex/051.png','Dugtrio','Ground','Sand Veil','Arena Trap','Sand Trap',35,100,50,50,70,120,'Water/Grass/Ice','','Poison/Rock','','Electric'),
('#0052','pokedex/052.png','Meowth','Normal','Pickup','Technician','Unnerve',40,45,35,40,40,90,'Fighting','','','','Ghost'),
('#0053','pokedex/053.png','Persian','Normal','Limber','Technician','Unnerve',65,70,60,65,65,115,'Fighting','','','','Ghost'),
('#0054','pokedex/054.png','Psyduck','Water','Damp','Cloud Nine','Swift Swim',50,52,48,65,50,55,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0055','pokedex/055.png','Golduck','Water','Damp','Cloud Nine','Swift Swim',80,82,78,95,80,85,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0056','pokedex/056.png','Mankey','Fighting','Vital Spirit','Anger Point','Defiant',40,80,35,35,45,70,'Flying/Psychic/Fairy','','Dark/Rock/Bug','','Ghost'),
('#0057','pokedex/057.png','Primeape','Fighting','Vital Spirit','Anger Point','Defiant',65,105,60,60,70,95,'Flying/Psychic/Fairy','','Dark/Rock/Bug','','Ghost'),
('#0058','pokedex/058.png','Growlithe','Fire','Intimidate','Flash Fire','Justified',55,70,45,70,50,60,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0059','pokedex/059.png','Arcanine','Fire','Intimidate','Flash Fire','Justified',90,110,80,100,80,95,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0060','pokedex/060.png','Poliwag','Water','Water Absorb','Damp','Swift Swim',40,50,40,40,40,90,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0061','pokedex/061.png','Poliwhirl','Water','Water Absorb','Damp','Swift Swim',65,65,65,50,50,90,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0062','pokedex/062.png','Poliwrath','Water/Fighting','Water Absorb','Damp','Swift Swim',90,95,95,70,90,70,'Grass/Electric/Flying/Psychic/Fairy','','Fire/Water/Ice/Steel/Dark/Rock/Bug','','Ghost'),
('#0063','pokedex/063.png','Abra','Psychic','Synchronize','Inner Focus','Magic Guard',25,20,15,105,55,90,'Bug/Ghost/Dark','','Fighting/Psychic','',''),
('#0064','pokedex/064.png','Kadabra','Psychic','Synchronize','Inner Focus','Magic Guard',40,35,30,120,70,105,'Bug/Ghost/Dark','','Fighting/Psychic','',''),
('#0065','pokedex/065.png','Alakazam','Psychic','Synchronize','Inner Focus','Magic Guard',55,50,45,135,95,120,'Bug/Ghost/Dark','','Fighting/Psychic','',''),
('#0066','pokedex/066.png','Machop','Fighting','Guts','No Guard','Steadfast',70,80,50,35,35,35,'Flying/Psychic/Fairy','','Dark/Rock/Bug','','Ghost'),
('#0067','pokedex/067.png','Machoke','Fighting','Guts','No Guard','Steadfast',80,100,70,50,60,45,'Flying/Psychic/Fairy','','Dark/Rock/Bug','','Ghost'),
('#0068','pokedex/068.png','Machamp','Fighting','Guts','No Guard','Steadfast',90,130,80,65,85,55,'Flying/Psychic/Fairy','','Dark/Rock/Bug','','Ghost'),
('#0069','pokedex/069.png','Bellsprout','Grass/Poison','Chrolophyll','Gluttony','',50,75,35,70,30,40,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0070','pokedex/070.png','Weepinbell','Grass/Poison','Chrolophyll','Gluttony','',65,90,50,85,45,55,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0071','pokedex/071.png','Victreebel','Grass/Poison','Chrolophyll','Gluttony','',80,105,65,100,70,70,'Fire/Flying/Ice/Psychic','','Water/Electric/Fighting/Fairy','Grass',''),
('#0072','pokedex/072.png','Tentacool','Water/Poison','Clear Body','Liquid Ooze','Rain Dish',40,40,35,50,100,70,'Electric/Ground/Psychic','','Fire/Water/Ice/Steel/Fighting/Poison/Bug/Fairy','',''),
('#0073','pokedex/073.png','Tentacruel','Water/Poison','Clear Body','Liquid Ooze','Rain Dish',80,70,65,80,120,100,'Electric/Ground/Psychic','','Fire/Water/Ice/Steel/Fighting/Poison/Bug/Fairy','',''),
('#0074','pokedex/074.png','Geodude','Rock/Ground','Rock Head','Sturdy','Sand Veil',40,80,100,30,30,20,'Fighting/Ground/Steel/Ice','Water/Grass','Fire/Normal/Flying/Rock','Poison','Electric'),
('#0075','pokedex/075.png','Graveler','Rock/Ground','Rock Head','Sturdy','Sand Veil',55,95,115,45,45,35,'Fighting/Ground/Steel/Ice','Water/Grass','Fire/Normal/Flying/Rock','Poison','Electric'),
('#0076','pokedex/076.png','Golem','Rock/Ground','Rock Head','Sturdy','Sand Veil',80,120,130,55,65,45,'Fighting/Ground/Steel/Ice','Water/Grass','Fire/Normal/Flying/Rock','Poison','Electric'),
('#0077','pokedex/077.png','Ponyta','Fire','Run Away','Flash Fire','Flame Body',50,85,55,65,65,90,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0078','pokedex/078.png','Rapidash','Fire','Run Away','Flash Fire','Flame Body',65,100,70,80,80,105,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0079','pokedex/079.png','Slowpoke','Water/Psychic','Oblivious','Own Tempo','Regenerator',90,65,65,40,40,15,'Grass/Electric/Bug/Ghost/Dark','','Fire/Water/Ice/Steel/Fighting/Psychic','',''),
('#0080','pokedex/080.png','Slowbro','Water/Psychic','Oblivious','Own Tempo','Regenerator',95,75,110,100,80,30,'Grass/Electric/Bug/Ghost/Dark','','Fire/Water/Ice/Steel/Fighting/Psychic','',''),
('#0081','pokedex/081.png','Magnemite','Electric/Steel','Magnet Pull','Sturdy','Analytic',25,35,70,95,55,45,'Fire/Fighting','Ground','Electric/Normal/Grass/Ice/Rock/Fairy/Bug/Dragon/Psychic','Flying/Steel','Poison'),
('#0082','pokedex/082.png','Magneton','Electric/Steel','Magnet Pull','Sturdy','Analytic',50,60,95,120,70,70,'Fire/Fighting','Ground','Electric/Normal/Grass/Ice/Rock/Fairy/Bug/Dragon/Psychic','Flying/Steel','Poison'),
('#0083','pokedex/083.png',"Farfetch'd",'Normal/Flying','Keen Eye','Inner Focus','Defiant',52,90,55,58,62,60,'Electric/Ice/Rock','','Grass/Bug','','Ghost/Ground'),
('#0084','pokedex/084.png','Doduo','Normal/Flying','Run Away','Early Bird','Tangled Feet',35,85,45,35,35,75,'Electric/Ice/Rock','','Grass/Bug','','Ghost/Ground'),
('#0085','pokedex/085.png','Dodrio','Normal/Flying','Run Away','Early Bird','Tangled Feet',60,110,70,60,60,110,'Electric/Ice/Rock','','Grass/Bug','','Ghost/Ground'),
('#0086','pokedex/086.png','Seel','Water','Thick Fat','Hydration','Ice Body',65,45,55,45,70,45,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0087','pokedex/087.png','Dewgong','Water/Ice','Thick Fat','Hydration','Ice Body',90,70,80,70,95,70,'Grass/Electric/Fighting/Rock','','Water','Ice',''),
('#0088','pokedex/088.png','Grimer','Poison','Stench','Sticky Hold','Poison Touch',80,80,50,40,50,25,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0089','pokedex/089.png','Muk','Poison','Stench','Sticky Hold','Poison Touch',105,105,75,65,100,50,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0090','pokedex/090.png','Shellder','Water','Shell Armor','Skill Link','Overcoat',30,65,100,45,25,40,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0091','pokedex/091.png','Cloyster','Water/Ice','Shell Armor','Skill Link','Overcoat',50,95,180,85,45,70,'Grass/Electric/Fighting/Rock','','Water','Ice',''),
('#0092','pokedex/092.png','Gastly','Ghost/Poison','Levitate','','',30,35,30,100,35,80,'Dark/Ghost/Ground/Psychic','','Fairy/Grass','Poison/Bug','Normal/Fighting'),
('#0093','pokedex/093.png','Haunter','Ghost/Poison','Levitate','','',45,50,45,115,55,95,'Dark/Ghost/Ground/Psychic','','Fairy/Grass','Poison/Bug','Normal/Fighting'),
('#0094','pokedex/094.png','Gengar','Ghost/Poison','Cursed Body','','',60,65,60,130,75,110,'Dark/Ghost/Ground/Psychic','','Fairy/Grass','Poison/Bug','Normal/Fighting'),
('#0095','pokedex/095.png','Onix','Rock/Ground','Rock Head','Sturdy','Weak Armor',35,45,160,30,45,70,'Fighting/Ground/Steel/Ice','Water/Grass','Fire/Normal/Flying/Rock','Poison','Electric'),
('#0096','pokedex/096.png','Drowzee','Psychic','Insomnia','Forewarn','Inner Focus',60,48,45,43,90,42,'Bug/Ghost/Dark','','Fighting/Psychic','',''),
('#0097','pokedex/097.png','Hypno','Psychic','Insomnia','Forewarn','Inner Focus',85,73,70,73,115,67,'Bug/Ghost/Dark','','Fighting/Psychic','',''),
('#0098','pokedex/098.png','Krabby','Water','Hyper Cutter','Shell Armor','Sheer Force',30,105,90,25,25,50,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0099','pokedex/099.png','Kingler','Water','Hyper Cutter','Shell Armor','Sheer Force',55,130,115,50,50,75,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0100','pokedex/100.png','Voltorb','Electric','Soundproof','Static','Aftermath',40,30,50,55,55,100,'Ground','','Electric/Flying/Steel','',''),
('#0101','pokedex/101.png','Electrode','Electric','Soundproof','Static','Aftermath',60,50,70,80,80,150,'Ground','','Electric/Flying/Steel','',''),
('#0102','pokedex/102.png','Exeggcute','Grass/Psychic','Chlorophyll','Harvest','',60,40,80,60,45,40,'Fire/Ice/Poison/Flying/Ghost/Dark','Bug','Water/Ground/Grass/Electric/Fighting/Psychic','',''),
('#0103','pokedex/103.png','Exeggutor','Grass/Psychic','Chlorophyll','Harvest','',95,95,85,125,75,55,'Fire/Ice/Poison/Flying/Ghost/Dark','Bug','Water/Ground/Grass/Electric/Fighting/Psychic','',''),
('#0104','pokedex/104.png','Cubone','Ground','Rock Head','Lightning Rod','Battle Armor',50,50,95,40,50,35,'Water/Grass/Ice','','Poison/Rock','','Electric'),
('#0105','pokedex/105.png','Marowak','Ground','Rock Head','Lightning Rod','Battle Armor',60,80,110,50,80,45,'Water/Grass/Ice','','Poison/Rock','','Electric'),
('#0106','pokedex/106.png','Hitmonlee','Fighting','Limber','Reckless','Unburden',50,120,53,35,110,87,'Flying/Psychic/Fairy','','Dark/Rock/Bug','','Ghost'),
('#0107','pokedex/107.png','Hitmonchan','Fighting','Keen Eye','Iron Fist','Inner Focus',50,105,79,35,110,76,'Flying/Psychic/Fairy','','Dark/Rock/Bug','','Ghost'),
('#0108','pokedex/108.png','Lickitung','Normal','Own Tempo','Oblivious','Cloud Nine',90,55,75,60,75,30,'Fighting','','','','Ghost'),
('#0109','pokedex/109.png','Koffing','Poison','Levitate','Neutralizing Gas','Stench',40,65,95,60,45,35,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0110','pokedex/110.png','Weezing','Poison','Levitate','Neutralizing Gas','Stench',65,90,120,85,70,60,'Ground/Psychic','','Fighting/Poison/Bug/Fairy/Grass','',''),
('#0111','pokedex/111.png','Rhyhorn','Ground/Rock','Lightning Rod','Rock Head','Reckless',80,85,95,30,30,25,'Ice/Fighting/Ground/Steel','Water/Grass','Rock/Fire/Normal/Flying','Poison','Electric'),
('#0112','pokedex/112.png','Rhydon','Ground/Rock','Lightning Rod','Rock Head','Reckless',105,130,120,45,45,40,'Ice/Fighting/Ground/Steel','Water/Grass','Rock/Fire/Normal/Flying','Poison','Electric'),
('#0113','pokedex/113.png','Chansey','Normal','Natural Cure','Serene Grace','Healer',250,5,5,35,105,50,'Fighting','','','','Ghost'),
('#0114','pokedex/114.png','Tangela','Grass','Chlorophyll','Leaf Guard','Regenerator',65,55,115,100,40,60,'Fire/Ice/Poison/Flying/Bug','','Water/Ground/Grass/Electric','',''),
('#0115','pokedex/115.png','Kangaskhan','Normal','Early Bird','Scrappy','Inner Focus',105,95,80,40,80,90,'Fighting','','','','Ghost'),
('#0116','pokedex/116.png','Horsea','Water','Swift Swim','Sniper','Damp',30,40,70,70,25,60,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0117','pokedex/117.png','Seadra','Water','Poison Point','Sniper','Damp',55,65,95,95,45,85,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0118','pokedex/118.png','Goldeen','Water','Swift Swim','Water Veil','Lightning Rod',45,67,60,35,50,63,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0119','pokedex/119.png','Seaking','Water','Swift Swim','Water Veil','Lightning Rod',80,92,65,65,80,68,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0120','pokedex/120.png','Staryu','Water','Illuminate','Natural Cure','Analytic',30,45,55,70,55,85,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0121','pokedex/121.png','Starmie','Water/Psychic','Illuminate','Natural Cure','Analytic',60,75,85,100,85,115,'Grass/Electric/Bug/Ghost/Dark','','Fire/Water/Ice/Steel/Fighting/Psychic','',''),
('#0122','pokedex/122.png','Mr. Mime','Psychic/Fairy','Soundproof','Filter','Technician',40,45,65,100,120,90,'Ghost/Poison/Steel','','Psychic','Fighting','Dragon'),
('#0123','pokedex/123.png','Scyther','Bug/Flying','Swarm','Technician','Steadfast',70,110,80,55,80,105,'Fire/Flying/Electric/Ice','Rock','Bug','Grass/Fighting','Ground'),
('#0124','pokedex/124.png','Jynx','Ice/Psychic','Oblivious','Forewarn','Dry Skin',65,50,35,115,95,95,'Fire/Rock/Steel/Bug/Ghost/Dark','','Ice/Psychic','',''),
('#0125','pokedex/125.png','Electabuzz','Electric','Static','Vital Spirit','',65,83,57,95,85,105,'Ground','','Electric/Flying/Steel','',''),
('#0126','pokedex/126.png','Magmar','Fire','Flame Body','Vital Spirit','',65,95,57,100,85,93,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0127','pokedex/127.png','Pinsir','Bug','Hyper Cutter','Mold Breaker','Moxie',65,125,100,55,70,85,'Fire/Flying/Rock','','Grass/Fighting/Ground','',''),
('#0128','pokedex/128.png','Tauros','Normal','Intimidate','Anger Point','Sheer Force',75,100,95,40,70,110,'Fighting','','','','Ghost'),
('#0129','pokedex/129.png','Magikarp','Water','Swift Swim','Rattled','',20,10,55,15,20,80,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0130','pokedex/130.png','Gyarados','Water/Flying','Intimidate','Moxie','',95,125,79,60,100,81,'Rock','Electric','Fire/Water/Steel/Fighting/Bug','','Ground'),
('#0131','pokedex/131.png','Lapras','Water/Ice','Water Absorb','Shell Armor','Hydration',130,85,80,85,95,60,'Grass/Electric/Fighting/Rock','','Water','Ice',''),
('#0132','pokedex/132.png','Ditto','Normal','Limber','Impostor','',48,48,48,48,48,48,'Fighting','','','','Ghost'),
('#0133','pokedex/133.png','Eevee','Normal','Run Away','Adaptability','Anticipation',55,55,50,45,65,55,'Fighting','','','','Ghost'),
('#0134','pokedex/134.png','Vaporeon','Water','Water Absorb','Hydration','',130,65,60,110,95,65,'Grass/Electric','','Fire/Water/Ice/Steel','',''),
('#0135','pokedex/135.png','Jolteon','Electric','Volt Absorb','Quick Feet','',65,65,60,110,95,130,'Ground','','Electric/Flying/Steel','',''),
('#0136','pokedex/136.png','Flareon','Fire','Flash Fire','Guts','',65,130,60,95,110,65,'Water/Ground/Rock','','Fire/Grass/Ice/Bug/Steel/Fairy','',''),
('#0137','pokedex/137.png','Porygon','Normal','Trace','Download','Analytic',65,60,70,85,75,40,'Fighting','','','','Ghost'),
('#0138','pokedex/138.png','Omanyte','Rock/Water','Swift Swim','Shell Armor','Weak Armor',35,40,100,90,55,35,'Fighting/Ground/Electric','Grass','Normal/Poison/Flying/Ice','Fire',''),
('#0139','pokedex/139.png','Omastar','Rock/Water','Swift Swim','Shell Armor','Weak Armor',70,60,125,115,70,55,'Fighting/Ground/Electric','Grass','Normal/Poison/Flying/Ice','Fire',''),
('#0140','pokedex/140.png','Kabuto','Rock/Water','Swift Swim','Battle Armor','Weak Armor',30,80,90,55,45,55,'Fighting/Ground/Electric','Grass','Normal/Poison/Flying/Ice','Fire',''),
('#0141','pokedex/141.png','Kabutops','Rock/Water','Swift Swim','Battle Armor','Weak Armor',60,115,105,65,70,80,'Fighting/Ground/Electric','Grass','Normal/Poison/Flying/Ice','Fire',''),
('#0142','pokedex/142.png','Aerodactyl','Rock/Flying','Rock Head','Pressure','Unnerve',80,105,65,60,75,130,'Water/Steel/Electric/Ice/Rock','','Fire/Normal/Poison/Flying/Bug','','Ground'),
('#0143','pokedex/143.png','Snorlax','Normal','Immunity','Thick Fat','Gluttony',160,110,65,65,110,30,'Fighting','','','','Ghost'),
('#0144','pokedex/144.png','Articuno','Ice/Flying','Pressure','Snow Cloak','',90,85,100,95,125,85,'Fire/Steel/Electric','Rock','Grass/Bug','','Ground'),
('#0145','pokedex/145.png','Zapdos','Electric/Flying','Pressure','Static','',90,90,85,125,90,100,'Ice/Rock','','Flying/Steel/Grass/Fighting/Bug','','Ground'),
('#0146','pokedex/146.png','Moltres','Fire/Flying','Pressure','Flame Body','',90,100,90,125,85,90,'Water/Electric','Rock','Fire/Steel/Fairy/Fighting','Grass/Bug','Ground'),
('#0147','pokedex/147.png','Dratini','Dragon','Shed Skin','Marvel Scale','',41,64,45,50,50,50,'Ice/Dragon/Fairy','','Fire/Water/Electric/Grass','',''),
('#0148','pokedex/148.png','Dragonair','Dragon','Shed Skin','Marvel Scale','',61,84,65,70,70,70,'Ice/Dragon/Fairy','','Fire/Water/Electric/Grass','',''),
('#0149','pokedex/149.png','Dragonite','Dragon/Flying','Inner Focus','Multiscale','',91,134,95,100,100,80,'Dragon/Fairy/Rock','Ice','Fire/Water/Fighting/Bug','Grass','Ground'),
('#0150','pokedex/150.png','Mewtwo','Psychic','Pressure','Unnerve','',106,110,90,154,90,130,'Bug/Ghost/Dark','','Fighting/Psychic','',''),
('#0151','pokedex/151.png','Mew','Psychic','Synchronize','','',100,100,100,100,100,100,'Bug/Ghost/Dark','','Fighting/Psychic','','');