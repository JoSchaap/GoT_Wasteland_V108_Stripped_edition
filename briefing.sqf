waitUntil {!isNull player && isPlayer player};

player createDiarySubject ["404games", "404Games Information"];
player createDiarySubject ["changelog", "404Games Change Log"];
player createDiarySubject ["wasteland", "What is Wasteland?"];
player createDiarySubject ["GoT2DayZ", "GoT2DayZ Information"];

player createDiaryRecord["changelog",
[
"1.01",
"
<br/>
		[Fixed] - Gun Stores<br/>
		[Fixed] - Missions<br/>
		[Fixed] - General UI<br/>
		[Fixed] - Lots of other fixes<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.02",
"
<br/>
		[Fixed] - Respawning Vehicles<br/>
		[Fixed] - Deserted Vehicles (20Mins)<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.03",
"
<br/>
		[Added] - Light Armed Vehicle Mission (All armed cars).<br/>
		[Removed] - All armed cars from initial spawn for balance.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.05",
"
<br/>
		[Added] Uniforms,Hats and Vests to the gunstore.<br/>
		[Added] Players now spawn with a backpack.<br/>
		[Fixed] Not able to get weapons out of vehicle.<br/>
		[Fixed] R3F Loading into vehicles.<br/>
		[Fixed] Gunstore locations so they can't be ran down by vehicles.<br/>
		[Fixed] Health Icon.<br/>
		[Fixed] Static helicopter spawning and no more explosions.<br/>
		[Fixed] Weapon crates can now be loaded into vehicles.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.06",
"
<br/>
		[Fixed] Fix to make Ammo boxes moveable.(thanks to meat147).<br/>
		[Fixed] missing disabled color for money input error.(thanks to Sanjo).<br/>
		[Fixed] NV Goggles in cars and boxes.(thanks to Sanjo).<br/>
		
"
]
];

player createDiaryRecord["changelog",
[
"1.07(GoT)",
"
<br/>
		[Fixed] Fixed the Sound Counter error on first spawn.<br/>
		[Fixed] Re-Added the LightArmed-Vehicle mission.<br/>
		[Fixed] Fixed the description issue for the LightArmed-Vehicle mission.<br/>
		[Removed] Food and Drink from player starting loadout (not needed).<br/>
		[Removed] Empty Fuel can from player starting loadout (not needed).<br/>
		[Removed] Scaffolding and other useless objectspawns to improve ability to build bases.<br/>
		[Changed] Starting money to 200.<br/>
		[Changed] Stringtables and content of existing code.<br/>
		[Changed] Reduced mission filesize to enhance joining speed.<br/>
		[Changed] Added our own strings and some other changes.<br/>

"
]
];

player createDiaryRecord["changelog",
[
"1.08b(GoT)",
"
<br/>
		(revision: a)<br/>
		[Added] New main mission (Convoy) By Sanjo.<br/>
		[Fixed] Fixed misc font errors.<br/>
		[Fixed] one of the weap boxes could not be moved.<br/>
		[Removed] Food and Drink icons.<br/>
		[Removed] Survival system.<br/>
		[Removed] All spawning objects (Noone was building bases).<br/>
		[Changed] Reduced mission file size drasticly.<br/>
		<br/>
		(revision: b)<br/>
		[Fixed] Ifrit spawn issue's<br/>
		[Fixed] Ifrit mission issue's<br>
		[Info] Ifrits might not work in Stable Arma3 build atm!<br/>
		<br/>
		(revision: c)<br/>
		[Added] MiniConvoy Sidemission (Based on Sanjo's Convoy)<br/>
		[Fixed] Vehicle content window missing an image/icon<br/>
		[Fixed] Admin-Provinggrounds missing an image/icon<br>
		<br/>
"
]
];

player createDiaryRecord["404games",
[
"Credits",
"
<br/>
	404 Team:<br/><br/>
	Deadbeat<br/>
	Costlyy<br/>
	Pulse<br/>
	Domuk<br/>
	*Sanjo<br/>
	<br/>*Convoy MainMission<br/>
"
]
];

player createDiaryRecord["GoT2DayZ",
[
"Who what where?",
"
<br/>
	What is GoT2DayZ and why are you hosting Arma3?<br/><br/>
	GoT2DayZ was initially founded as a player-base for the dutch Tweakers.NET Community<br/>
	However as time passed on we also started playing wasteland on arma2.<br/>
	Now with arma3 also having wasteland, we run 3 publics and 1 private server.<br/>
	<br/><br/>
	* DayZ Chernarus (Private/Passworded) with safezone<br/>
	* DayZ Celle (Whitelisted)<br/>
	* ArmA2 Wasteland on Utes (Customized by us)<br/>
	* ArmA3 Alpha Wasteland on Stratis (Costomized by us)<br/>
	<br/>
	I cant urge enough that all credits for this mission go to the original makers at 404Games!<br/>
	<br/>
"
]
];

player createDiaryRecord["GoT2DayZ",
[
"Contact an Admin",
"
<br/>
	We currently have one active admin in A3 (we hope to add more soon):<br/><br/>
	- JoSchaap<br/>
	You can contact admins through different ways.<br/>
	<br/>
	 1) Join our Teamspeak channel on teamspeak.gotlike.nl -> Arma3.<br/>
	 2) Leave a message on our chat on www.got2dayz.nl<br/>
	 3) Send us a private message on facebook: fb/me/GoT2DayZ<br/>
	<br/>
	NOTICE! The server may crash unexpectedly (No message recieved) <br/>
	If this happens it will autorestart and be back within 10 seconds! <br/>

"
]
];

player createDiaryRecord["GoT2DayZ",
[
"Credits",
"
<br/>
	Hosting and mod editting:<br/><br/>
	JoSchaap<br/>
	Anyone who files issues or pull requests on the GiT's<br/>
"
]
];
