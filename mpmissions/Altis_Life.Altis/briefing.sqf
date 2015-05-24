waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["bpcommunity","Project X"];
player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["safezones","Safe Zones"];
player createDiarySubject ["policerules","Polizei Regeln"];
player createDiarySubject ["illegalitems","Rebellen Regeln"];
player createDiarySubject ["controls","Altis-Life Steuerung"];
player createDiarySubject ["news","NEWS - TUT's"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/


// Allgemeine Regeln
	player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Exploits und Glitches werden mit einem Kick/Ban bestraft.<br/><br/>

				1. Selbstmord um Roleplay zu vermeiden.<br/>
				2. Vervielfältigen (duping) von Items und/oder Geld.<br/>
				3. Die Benutzung von eindeutig gehackten Items. Meldet diese Items SOFORT einem Admin und lasst die Finger davon!!!!.<br/>
				4. Das Ausnutzen von Bugs oder nicht vorgesehenen Spielmechaniken zum eigenen Vorteil. Wenn euch ein Admin beim glitchen erwischt, ban.<br/>
				5. Das Verkaufen oder Processen aus dem Fahrzeug heraus ist verboten!<br/><br/>
				"
		]
	];
					
	player createDiaryRecord ["serverrules",
		[
			"Eindeutige Ban Gründe", 
				"
				Hier gibt es keine Warnung, kein Kick, sondern wird sofort gebannt!<br/><br/>
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (Siehe 'Exploits' bis auf weniege Ausnahmen)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Polizisten Interaktionen", 
				"
				Regeln für den Umgang mit der Polizei. <br/><br/>
				1. Zivilisten können für das Durchsuchen eines Rucksacks/Fahrzeugs verhaftet werden.<br/>
				2. Zivilisten können verhaftet werden, wenn sie ständig den Polizisten folgen und deren Position durchgeben.<br/>
				3. Zivilisten oder Rebellen, die sich bewaffnen um Polizisten zu töten (egal wo) und dies OHNE Roleplayhintergrund tun, betreiben RDM. Siehe RDM-Abschnitt.<br/>
				4. Bewusstes nerven der Polizisten ist untersagt!<br/>
				5. Wenn bei einer Verfolgungsjagd die Sirene eingeschaltet wird ist es eine RP eröffnung.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Medic Interaktion", 
				"
				1. Es ist NICHT erlaubt Ärtzte zu töten es sei denn sie beleben jemanden im Kampf oder haben eine Waffe und schießen auf euch.<br/>
				2. Es ist NICHT erlaubt Ärtzte K.O. zu schlagen und/oder sie auszurauben. Es ist Erlaubt einen Artzt als Geisel zu nehemen.<br/>
				3. Es ist NICHT erlaubt auf Fahrzeuge von Ärtzten zu schießen und/oder sie zu klauen.<br/>
				3. Die Kosten für eine Reanimation sind 10000$.<br/>
				4. Solltest du einen Medic rufen und dann Respawnen musst du damit rechnen zu einer Geld oder Gefängnis Strafe verurteilt zu werden!!.<br/>
				5.. Es ist Medics NICHT erlaubt die waffen der zu wiederbelebenden Personen aufzuheben oder ihre Kleidung bzw Items.(Nicht befolgen dieser Regeln führt zu zeitweisem Ban und Ausschluss aus dem Medic Dienst!!)<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"KVB - Busdienst", 
				"
				1. Es ist NICHT erlaubt Busfahrer zu töten.<br/>
				2. Es ist NICHT erlaubt Busfahrer K.O. zu schlagen und/oder sie auszurauben. Es ist NICHT erlaubt einen Busfahrer als Geisel zu nehemen.<br/>
				3. Es ist NICHT erlaubt auf Fahrzeuge von Busfahrer zu schießen und/oder sie zu klauen.<br/>
				4. Die Kosten für eine Busfahrt belaufen sich auf 1000$ pro Station.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Fahrzeuge", 
				"
				Aktionen auf dieser Liste könnten evtl. zu einem Kick führen oder sogar zu einem Ban. (je nachdem wie exzessiv und in welcher Situation diese Aktionen durchgeführt werden)<br/><br/>
				1. Absichtiliches Überfahren<br/>
				2. Absichtlich vor ein Auto werfen um sich zu verletzen bzw. sich zu töten.<br/>
				3. Vorsätzlich in andere Fahrzeuge crashen (um eine Explosion zu verursachen.)<br/>
				4. Permamentes Aufbrechen von Fahrzeugen gehört nicht mehr zu Roleplay.<br/>
				5. Der einzige Grund auf ein Fahrzeug zu schießen, sollte sein dieses fahruntauglich zu machen oder Warnschüsse in einem Roleplay Szenario abzugeben, die das Fahrzeug oder ihre Insassen nicht treffen.<br/>
				6. Bewaffnete Fahrzeuge dürfen nicht gegen Infanterie genutzt werden,egal in welcher Weise. NUR gegen bewaffnete und gepanzerte Fahrzeuge/Helis<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Kommunikationsregeln", 
				"
				Aktionen auf dieser Liste könnten evtl. zu einem Kick führen oder sogar zu einem Ban. (je nachdem wie exzessiv diese Aktionen durchgeführt werden)<br/><br/>
				1. Im Sidechat ist es verboten zu Sprechen und Nachrichten zu spammen! Im Allgemeinen werden Beleidigungen nicht geduldet! (Roleplay)<br/>
				2. Teamspeak Channel sind nicht ohne Grund aufgeteilt. Polizisten müssen sich im Polizei-Channel aufhalten und Zivilisten/Rebellen im Talk Channel(getrennt von den Polizisten).<br/>
				3. Sidechat ist keine RP eröffnung.<br/>
				4. Handel ist Im Side erlaubt.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatch (RDM)", 
				"
				Aktionen auf dieser Liste führen zum Ban. Je nach Härte gibt es 1 bis 2 Verwarnungen.<br/><br/>
				1. Töten ohne Roleplay-Hintergrund (RDM).<br/>
				2. Eine Rebellion anzetteln muss nicht heißen jeden zu töten, auch nicht Polizisten.<br/>
				3. Polizisten und Zivilisten/Rebellen dürfen sich nur Aufgrund von Roleplay oder bei der Verteidung einer kriminellen Aktivität beschießen<br/>
				4. Wenn ihr im Kreuzfeuer sterbt, ist dies kein RDM, es zählt aber auch nicht als 'new Life'.<br/>
				5. Tötet ihr jemanden um euch oder einen Freund zu verteidigen, ist dies kein RDM.<br/>
				6. Tötet ihr jemanden ohne ihm Zeit zu lassen, dass er auf eure Forderungen eingeht ist das RDM!<br/>
				7. Es ist auch RDM wenn ihr es ankündigt. Einfach nur zu sagen ihr tötet jeden ist RDM!<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Regel", 
				"
				Die New Life Regel betrifft Zivilisten, Polizisten(eingeschränkt/Situationsbedingt) und Rebellen!<br/><br/>
				
				Verstöße gegen diese Regeln können zum Serverban führen. (je nachdem wie exzessiv gegen diese Regeln verstoßen wird)<br/><br/>

				1. Wenn du getötet wurdest MUSST du 15 min warten, bevor du an deinen Todesort zurückkehren darfst. Du darfst NICHT von außen auf das Geschehen dort Einfluss haben, bis die Kämpfe vorbei sind. <br/>
				2. Der eben genannte Ort, kann eine Ortschaft, eine Siedlung, ein Drogenfeld, etc. umfassen. Es gibt also keine genaue Meterangabe.<br/>
				3. Wenn du manuell neu spawnst ist es trifft die New Life Regel nicht zu.<br/>
				4. Wenn du RDMed wirst ist es kein New Life.<br/>
				5. Wenn du stirbst darfst du keine Rache nehmen!<br/>
				6. Wenn du deine Gefängnisstrafe absitzt ist es ein New Life.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Verhaltensregeln", 
				"
				1. Sei kein Idiot!<br/>
				2. Wenn dich ein Admin belehrt, dann hast du diesen Anweisungen Folge zu leisten.<br/>
				3. Es ist absolut verboten gefangene (restrain) Personen zu töten!
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Rebellen-Rules", 
				"
				Ein Rebell ist eine Person, die sich bewaffnet um gegen die Regierung vorzugehen. Ihr Feind ist die Regierung, beziehungsweise die Polizisten. Berücksichtigt aber immer, dass Roleplay vor geht und RDM nicht geduldet wird! Beachtet darüber hinaus folgende Regeln, die im Rahmen des Roleplays bestraft werden:<br/><br/>

				1. Widerstand bedeutet nicht RDM! (Siehe 'Random Deathmatch' in 'Allgemeine Regeln)<br/>
				2. Widerstand muss koordiniert sein.<br/>
				4. Der Einsatz von explosiven Waffen muss wohlüberlegt sein! Vor allem dürfen keine wichtigen Gebäude zerstört werden. (Siehe 'Definitionen')<br/><br/>

				Razzia<br/><br/>

				Betrachtet dazu die 'Razzia Regeln' und die 'Drogenrazzia Regeln' unter dem Abschnitt 'Polizei Regeln'. Diese gelten auch für Rebellen!<br/><br/>

				Drogenschmuggel - Drogenmafia<br/><br/>

				Diese Regeln gelten für alle Zivilisten/Rebellen, die Heroin, Marijuana, Kokain und Schildkröten bevördern / vertreiben.<br/><br/>

				1. Im Zuge einen Drogenkonvois ist der Einsatz von Waffengewalt gegen die Polizei erlaubt. Dennoch sollte dies nicht ausgenutzt werden wenn es auch anders geht. <br/>
				Dies gilt nur für Drogengebiete und Wege zwischen diesen. Solltet ihr festgenommen werden, respektiert die Polizei und gebt Roleplaytypische Begründungen ab.<br/>
				2. Sollte die Polizei euch an einem Drogenfeld erspähen dürfen diese einen Hinterhalt am entsprechenden Verarbeiter legen oder auf dem Weg dort hin einen temporären Checkpoint anlegen.<br/>
				3. Egal wie die entsprechende Razzia ausgeht; Die Polizisten dürfen eine weitere Drogenrazzia bei den Drugdealern durchführen.<br/>
				4. Gangverstecke einzunehmen ist Illegal<br/><br/>

				Allg Hinweise:<br/>
				-Zentralbank ab 8Cops<br/>
				-Geiselnahmen ab 4<br/>
				-Hqs einehmen ( nicht in Kavala) ab 6<br/><br/>

				Illegale Items<br/>
				1.Alle Rebellenfahrzeuge/Schwarzmarkt<br/><br/>

				Illegale Waffen<br/>
				1.Jede Polizei Waffe<br/>
				2.Jede Waffe die es im Rebellenshop bzw Schwarzmarkt zu kaufen gibt und alles ab Waffenkategorie 2.<br/><br/>

				Illegale Substanzen<br/>
				Die Folgenden Substanzen sind verboten. Bei einer Verhaftung werden sie konfisziert.<br/>
				1. Schildkröten<br/>
				2. Heroin<br/>
				6. Cannabis<br/>
				7. Koka<br/><br/><br/>
				"
		]
	];
	
	
	
	player createDiaryRecord ["serverrules",
		[
			"Definitionen", 
				"
				1. Städte: Kavala, Athira, Pyrgos und Sofia<br/>
				2. Legale Waffen: Alle Waffen die im normalen Waffenstore sind<br/>
				3. Rebellen sind Aufständische ! Ihre Waffen und Fahrzeuge sind illegal!<br/>
				4. Illegale Waffen: Alle Waffen, die im Rebbelnshop sind.<br/>
				5. Illegale Fahrzeuge: Alle Fahrzeuge im Rebellenshop, alle Polizeifahrzeuge und Militärfahrzeuge (im Besitz von Zivilisten)<br/>
				6. Illegale Kleidung: Keine	<br/>
				7. Folgende Geschwindigkeitsbegrenzungen gelten:<br/><br/>
				Kavala Marktplatz: 30 km/h<br/>
				Innerorts: 50 km/h<br/>
				Außerorts: 140 km/h<br/><br/>
				"
		]
	];

	
// BPC Infos

	player createDiaryRecord ["bpcommunity",
		[
			"Teamspeak",
				"
				Unseren Teamspeak findet ihr unter:<br/><br/>
				5.196.90.77<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["bpcommunity",
		[
			"Forum",
				"
				Unser Forum ist für Bewerbungen Fragen, Antworten und Changelogs gedacht. Ihr findet es unter:<br/><br/>
				www.rlp-clan.de <br/><br/>
				"
		]
	];
	
//Safezones

	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					Safe Zones bedeutet, dass töten / andere Verbrechen (auch nicht von außerhalb)verboten sind. Wenn ihr dort jemanden tötet oder jegliches Verbrechen ausübt, wird dies mit einem Ban bestraft.<br/><br/>
					
					Liste der Safe Zones:<br/><br/>
					Alle Marktplatz (begrenzt durch umliegende Straßen und Gebäuden)<br/><br/>
					Alle Vehicle Shops (Car Shop, Truck Shop, Air Shop)<br/><br/>
					Alle Garagen!<br/><br/>
					Alle Gunstores<br/><br/>
					Alle Polizei HQ's (Keine Checkpoints)<br/><br/>
					Alle Rebellen Außenposten - Polizisten sind befugt eine Razzia mit mindestens 4 Mann dort durchzuführen (maximal alle 20 min)<br/><br/>
					Bei Flucht in eine Solche darf Roleplay basierend in  Polizei HQ's und im Rebellen HQ gemordet werden.<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Regel",
				"
				1. Alle Polizisten müssen im TS3 sein.<br/>
				2. Bitte kommt ins Teamspeak bevor ihr auf den Server geht.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Bußgeldkatalog",
				"
				Geschwindigkeit > 10 km/h: 1000$<br/>
				Geschwindigkeit > 20 km/h: 5000$<br/>
				Geschwindigkeit > 30 km/h: 15000$<br/><br/>

				Fahren ohne Licht: 5000$<br/>
				Kart fahren ohne Karthelm: 8000$<br/>
				Kart fahren bei Nacht: 10000$<br/>
				Fahren ohne PKW-Führerschein: 10000$<br/>
				Fahren auf der falschen Fahrbahn: 10000$<br/>
				Falschparken: 15000$<br/>
				Fahren ohne LKW-Führerschein: 40000$<br/>
				Diebstahl/Führen e.fremden Fahrzeugs: 200000$<br/>
				Fahrerflucht: 100000$<br/><br/>

				Landen auf dafür nicht vorgesehenen Flächen: 40000$<br/>
				Fliegen ohne Kollisionslichter: 20000$<br/>
				Verstoß gegen die Mindestflughöhe über Städten: 70000$<br/>
				Landen in Städten ohne Erlaubnis der Polizei: 50000$<br/>
				Fliegen ohne Lizenz: 100000$<br/><br/>

				Notrufmissbrauch: 25000$<br/>
				Tankstellenraub: 250000$<br/>
				Behinderung der Justiz: 100000$<br/>
				Beamtenbeleidigung: 50000$<br/>
				Erpressung / Drohen: 60000$<br/>
				Bestechungsversuch: 80000$<br/>
				Amtsanmaßung: 80000$<br/>
				Umgehen von Checkpoints: 100000$<br/>
				Beschädigen von Checkpoints: 250000$<br/>
				Banküberfall: 500000$<br/>
				Mord: 600000$<br/><br/>

				Waffenbesitz ohne Lizenz: 100000$<br/>
				Schusswaffengebrauch innerhalb von Städten: 50000$<br/>
				Öffentliches Tragen einer Waffe innerhalb von Städten: 75000$<br/><br/>


				Versuchter Diebstahl eines Fahrzeugs: 12000$<br/>
				Versuchter Mord: 300000$<br/>
				Versuchter Raubüberfall: 225000$ + Gestohlene Summe (Geht an das Opfer zurück)<br/><br/>


				Illegaler Waffenbesitz: 200000$<br/>
				Führen eines illegalen Fahrzeugs: 300000$<br/>
				Illegales Flugobjekt: 500000$	<br/><br/>
				"
		]
	];
	


	player createDiaryRecord ["policerules",
		[
			"Grundsätzliches",
				"			
				1. Die Polizei ist für die gesamte Sicherheit der Bevölkerung von Altisverantwortlich.<br/><br/>

				2. Das einmischen in Polizei RP von3ten muss angekündigt werden!<br/><br/>

				3. Polizisten sind die ausführende Gewalt auf Altis und somit ist ihren Anweisungengrundsätzlich Folge zu leisten.<br/><br/>

				4. Polizisten sind auch Bürger von Altis und haben sich somit an das allgemeineRegelwerk zu halten. Im Folgenden wird hier der Großteil der situationsbedingtenVerhaltensweisen abgehandelt und umschrieben sowie reglementiert.<br/><br/>

				5. Polizisten handeln ihrem Rang entsprechend und sind stets Obrigkeitshörig.Somit ergibt sich, dass der ranghöchste Streifenteilnehmer die volleVerantwortung für das Verhalten der beteiligten Polizisten übernimmt und fürdieses haftbar ist.<br/><br/>

				6. Jeder Beamte hat die seinem Rang entsprechenden Mittel zu nutzen. Inbesonderen Fällen können Polizisten der unteren Ränge vom ranghohenPersonal entsprechend ausgerüstet werden, diese Ausrüstung ist unmittelbarnach Abschluss des Einsatzes wieder abzulegen und sachgemäß zu entsorgen.<br/><br/>

				7. Entsprechende Situationen sind:-Geiselnahmen.-Banküberfälle.-Gebietseinnahmen durch Terroristen.-Terroristische Handlungen mit Gewaltausschreitungen undübertriebener Härte.-Vorgehen von Ganggruppierungen mit übertriebener Härte(massiver Schusswaffengebrauch).<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge", 
				"
				1. Fahrzeuge, die in Parklücken stehen oder Ordnungsgemäß am Straßenrand geparkt wurden, dürfen nicht abgeschleppt werden.<br/>
				2. Fahrzeuge die verlassen, aufgebrochen oder fahrerlos ausschauen, können abgeschleppt werden.<br/>
				3. Falls ihr Zweifel habt, überprüft den Besitzer bevor ihr das Fahrzeug abschleppt.<br/>
				4. Bewaffnete Land und Wasserfahrzeuge dürfen nur bei Notfällen zum Einsatz kommen und sollten mit Bedacht und nicht gegen Infanterie eingesetzt werden.<br/><br/>
				
				Illegale Fahrzeuge<br/>
				1. Wird ein illegales Fahrzeug nach einer Verfolgung oder an einem Checkpoint gestoppt, muss der Fahrer gemäß den Regeln verhaftet werden und nach einer Verwarnung muss das Fahrzeug impounded werden und der Fahrer darf sich der Kontrolle nicht mehr widersetzten.<br/>
				2. Wird das illegale Fahzeug für illegale Aktivitäten benutz (Geiselnahme, Banküberfall, Drogenschmuggel etc.), darf das Fahrzeug zerstört werden, um die Sicherheit der Bewohner von Altis zu gewährleisten.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Bankraub",
				"
				1. Nach Möglichkeit ist unmittelbar das SEK anzufordern.<br/>

				2. Bei einem Banküberfall ist von der Polizei eine Sperrzone von 1.5km Radius um die Zentralbank auszurufen, welche als absolute Sperrzone fungiert. JedePerson die sich in diesem Radius aufhält ist festzusetzen oder entsprechend zubekämpfen.<br/><br/>

				3. Jeglicher Polizist im Einsatz wird zu einem Bankraub abgeordert und untersteht ab diesem Zeitpunkt auch der jeweiligen Einsatzleitung die den Banküberfall koordiniert.<br/><br/>

				4. Generell gilt bei einem Banküberfall die Autorisierung von tödlicher Waffengewalt, jedoch wird dazu angehalten, wenn möglich Verdächtige oder Täter festzusetzen (Tasern & festnehmen).<br/><br/>

				5. Weiter gilt, das Polizeipersonal entsprechend für den Banküberfall auszurüsten. Hierunter fallen auch gepanzerte Fahrzeuge und Waffen.<br/><br/>

				6. Das Zentralbankgebäude sowie das gesamte Bankgelände sind zunächst zu säubern und zu sichern bevor eventuelle Fahrzeuge durchsucht oder beschlagnahmt werden. Solange Kampfhandlungen anhalten ist eine Beschlagnahme nicht gestattet. Die Beschlagnahme von Diebesgut (Goldbarren) ist erst nach dem Ablauf von fünf Zeitminuten nach Beendigung der Kampfhandlungen gestattet.<br/><br/>
				
				7. Nach Beendigung des Einsatzes ist der Tresorraum sowie die Einrichtung als solche wieder Instand zu setzen (Tore verschließen, etwaige Fahrzeuge beschlagnahmen, Schranken wieder schließen).<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Razzien",
				"
					1. Zu Razziengebieten zählen alle illegalen Felder (Schlafmohn/Heroinfeld, Kokain, Mariuhana, Schildkrötengebiete), Verarbeiter, Gangverstecke (Ist keine Safezone, auch mit ATM) und Händler inklusive Schildkrötenhändler (Diese Gebiete sind keine Fluchtpunkte für illegal agierende Personen).<br/><br/>

					2. Eine Razzia ist durch einen Bundespolizist oder das SEK durchzuführen und benötigt die Einwilligung der Einsatzleitung. Hierbei ist zu beachten, dass das SEK eigenständig Razzien durchführen darf. Razzien sind ausschließlich einem Bundespolizisten oder dem SEK vorbehalten. Die Maximalzeit der Beamten innerhalb eines illegalen Gebietes beträgt 20 Minuten. Wenn nach dieser Zeitspanne keine Aktion gestartet wurde, ist der Abzug anzuordnen.<br/><br/>

					3. Bei Razzien ist grundlegend mit Beschuss zu rechnen. Die Polizeibeamten sind angehalten tödliche Waffengewalt erst nach einem Schusswechsel anzubringen, jedoch ist der Schutz des eigenen Lebens, und dessen der Kollegen vorrangig.<br/><br/>

					4. Während einer Razzia sind jegliche anwesenden Personen sofort in Gewahrsam zu nehmen (Unabhängig ob bewaffnet, als Geisel deklariert oder in anderer Form unbeteiligt).<br/><br/>

					5. Die Drogendealer sind als Solche nicht als Razziengebiete anzusehen.<br/><br/>
			
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Stadtprotokoll", 
				"
				1. Polizisten haben die wichtigsten Städte zu kontrollieren. - Kavala, Athira, Pyrgos and Sofia.(diese Regel kann vom Polizeichef oder anderen Regeln bezüglich der Aufteilung von Polizisten gelten aufgehoben werden<br/>
				2. Beamte sollten öfter bei den Garagen halt machen, um sicherzugehen das dort keine Autos die Spawnpunkte blockieren. Wenn der Besitzer des blockierenden Fahrzeugs nicht vor Ort ist, dann muss das Fahrzeug abgeschleppt werden.<br/>
				3. Beamte können in Städten Stelllung beziehen um kritische Punkte (z.B. Kavala Marktplatz) sicher zuhalten und um auf Fragen und Nachfragen von Zivilisten eingehen zu können.<br/>
				4. Bei einer Krise dürfen Polizisten eine Stadt abriegeln. z.B. Wenn starke rebellische Aktivitäten auftreten, Terrorwarnungen existieren oder Geseilnahmen eine Absperrung erfordern. Die Stadt gillt nun als Sperrgebiet und jeder darf von Polizisten durchsucht werden. Nachdem die Situation geklärt wurden, muss die Abriegelung aufgehoben werden.<br/>
				5. Polizei HQs zu betreten ist absolut verboten, hereinzuschiessen verstösst gegen die Safe-Zone Regel und kann mit einem Kick/ Ban bestraft werden. Der Aufenthalt außerhalb des Geländes ist nicht verbotem, es sei denn sie versuchen mit diversen Aktionen das öffentliche Ärgernis auf sich zu ziehen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Umgang mit Waffen", 
				"
				1. Ein Polizist hat NIEMALS die Berechtigung einen Zivilisten mit Waffen auszurüsten.<br/>
				2. Zivilisten dürfen innerhalb von Städten KEINE Waffen tragen. Die Waffe darf nicht sichtbar sein. Legale Waffen müssen daher im Rucksack sein.<br/>
				3. Zivilisten dürfen außerhalb von Städten ihr Waffe offen tragen.<br/>
				4. Bewaffnete Zivilisten dürfen nur mit einer 'Waffenlizenz' legale Waffen tragen. Das tragen einer illegalen Waffe ist in jeder Situation illegal.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Allgemeines Verhalten",
				"
				1. Jeder Mensch ist egal welcher Auffassung schützenswert und als solcher zu behandeln.<br/><br/>

				1. Jedem Bürger ist mit dem gebotenen Respekt und bestimmt aber freundlich gegenüber zu treten.<br/><br/>

				3.Ist ein Polizist laut der Meinung der Mehrheit der anwesenden Polizisten nicht in der geistlichen und mentalen Lage seinen Dienst ordnungsgemäß und richtig auszuführen, kann er von diesen aus seinem Dienst für eine bestimmte Zeit entfernt werden. (Ausnahme: ab cop rang 9 kann dies ohne die Mehrheit durchgeführt werden, also nur von diesem Polizisten mit entsprechendem Dienstgrad)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Inhaftieren und Bußgelder",
				"
				Das Inhaftieren ist dazu da, Kriminelle daran zu hindern der Zivilbevölkerung zu schaden. Bußgelder sind als Disziplinarmaßnahmen anzusehen.<br/><br/>

				1. Bevor man jemanden einsperrt muss man ihm den Grund mitteilen und die Möglichkeit geben, sich gegen die Vorwürfe die ihm zur last gelegt werden, zu verteidigen .<br/><br/<


				Die Bestrafung durch Bußgelder an die Zivilbevölkerung gilt als Warnung und als Disziplinarmaßnahme und darf nicht als Bedrohung eingesetzt werden.<br/><br/>

				1. Bußgelder müssen einen angemessenen Preis haben (siehe Bußgeldkatalog)<br/>
				2. Wenn jemand das Bußgeld nicht bezahlen möchte( Refuse to pay Ticket), ist dies ein Grund jemanden ins Gefängnis zu stecken.<br/>
				3. Bußgelder sind nicht verhandelbar.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Umgang mit Personen die das RP bzw. den Serverbetrieb massiv stören",
				"
				1. Es ist zu unterscheiden ob jemand den bürgerlichen Ablauf (RP) oder den Serverbetrieb (trolling) stört bzw. schadet.<br/><br/>

				2. Wer trolling betreibt ist ohne weitere Verhandlungen unmittelbar und längst möglich zu inhaftieren oder mit entsprechendem Abstand zum Geschehen zu isolieren (Handschellen und in die Ecke).<br/><br/>

				3. Wer den bürgerlichen Ablauf stört, ist darauf hinzuweisen und mit einem Platzverweis zu bestrafen. Wer diesem nicht Folge leistet ist ebenfalls angemessen zu inhaftieren. Diese Folgemaßnahme ist bereits bei der Aussprache des Platzverweises unmittelbar anzumerken.<br/><br/>
		]
	];
	
// Rebel Rules
	
	player createDiaryRecord ["policerules",
		[
			"Einsatzleitunge",
				"
				1. Die Einsatzleitung hat in der Serverperiode die Befehlsgewalt und ihren Anweisungen ist Folge zu leisten.<br/><br/>

				2. Ab dem Rang Kommissar kann sich jeder freiwillig zur Einsatzleitung melden.<br/><br/>

				3. Grundsätzlich hat der jeweilig höchstrangige Beamte den Anspruch auf die Einsatzleitung.<br/><br/>

				4. Wer sich zur Einsatzleitung meldet sollte mindestens eine Stunde Anwesenheit gewährleisten können.<br/><br/>

				5. Wer sich als Einsatzleitung abmeldet oder kurz nicht erreichbar ist, hat einen Vertreter zu ernennen.<br/><br/>

				6. Die Einsatzleitung ist für die Einteilung der Streifen bzw. Einsatzteams verantwortlich und darf diese nicht unnötigen Gefahren aussetzen.<br/><br/>

				7. Die Einsatzleitung hat auf jede Meldung von Bürgern entsprechend zu reagieren (Hierzu kann diese sich, zum Zwecke der Übersicht, einen Sekretär benennen).<br/><br/>
				"
		]
	];
	
	
	player createDiaryRecord ["policerules",
		[
			"Allgemeine Personen-/Fahrzeugkontrolle",
				"
				1. Polizeibeamte sind grundsätzlich dazu befugt jegliche Personen sowie Fahrzeuge anzuhalten um diese auf aktuelle Papiere (Lizenzen z.B. Führerschein, Fahrzeugzulassung (Ob der Fahrer, der Besitzer des Fahrzeuges ist)) zu kontrollieren.<br/><br/>

				2. Zum anhalten von Fahrzeugen ist durch Einsatzmittel (Yelp, ggf. Sirene oder Lichtzeichen) auf sich aufmerksam zu machen.<br/><br/>

				3. Während der Fahrzeugkontrollen sind die Lichtzeichen dauerhaft aufrecht zu erhalten (vorallem Nachts für die Kontrollen von größter Wichtigkeit).<br/><br/>

				4. Das Dienstfahrzeug ist vor dem angehaltenen Fahrzeug zu postieren. Die zu kontrollierenden Personen sind in den Zwischenraum der beiden Fahrzeuge zu führen.<br/><br/>

				5. Das Durchsuchen eines Fahrzeugs auf etwaige Substanzen oder Inhalte ist nur unter hinreichendem Verdacht zulässig.<br/><br/>

				6.Die Polizisten nehmen sich jederzeit das Recht vor, Personen und deren Rucksäcke zu kontrollieren wenn auch nur der geringste Verdacht besteht. <br/>
				-tragen von nicht ziviller Bekleidung<br/>
				-tragen von Waffengurten<br/>
				-auffälliges Verhalten z.b. Schlechte Fahrweise falsche Fahrweise<br/>
				-Besitz von Waffenschein <br/>
				-Stoppen an Polizei Checkpoints<br/><br/>

				7. Folgende Verdachtsmomente sind hinreichend:<br/>
				-Tragen einer illegalen/unzulässigen Waffe.<br/>
				-Positiver Drogen*/Alkoholtest.<br/>
				-Extrem auffälliges, nervöses Verhalten in der RP Situation (Das<br/>
				Ablehnen der Durchsuchung des Fahrzeuges ist hierbei kein auffälliges Verhalten).<br/>
				-Unmittelbare bzw. eindeutige Streckenführung (z.B. der Fahrtweg vom Kokainfeld zum Kokainverarbeiter o.ä.).<br/>
				-Vorherige Sichtung durch die Luftaufklärung.<br/><br/>
				"
		]
	];
	
	
	player createDiaryRecord ["policerules",
		[
			"Stoppen von Fahrzeugen",
				"
				1. Zunächst sind alle anzuhaltenden Fahrzeuge oder Flugobjekte (Helikopter) darauf hinzuweisen entsprechend anzuhalten oder zu landen (Yelp, Sirene & Lichtzeichen).<br/><br/>

				2. Fremde Fahrzeuge sind entsprechendes Eigentum und daher nach Möglichkeit nicht zu beschädigen. Polizeibeamte können bei unangebrachter Beschädigung von fremden Eigentum zur Haftung herangezogen werden (z.B. bei der Zerstörung des Fahrzeuges, Ersatz in Form des Preises).<br/><br/>

				3. Ungepanzerte Fahrzeuge (Alle Sammelfahrzeuge (HMMT, Tempest, Zamak, Truck Boxer etc.), sowie Offroader, SUV’s, Limousinen Quads und Karts) sind ausschließlich durch einen EMP oder Nagelbänder anzuhalten. Rammen dieser Fahrzeuge ist strickt untersagt.<br/><br/>

				4. Gepanzerte Fahrzeuge (Hunter & Ifrit) können mittels abdrengen oder ggf. anfahren (Rammen) zum anhalten bewegt werden.<br/><br/>

				5. Der EMP (Elektromagnetische Impuls) ist ein zulässig Mittel der Polizei ein Fahrzeug zu stoppen. Hierbei gilt es zu beachten, dass ein Fahrzeug vor Nutzung des EMPs gewarnt werden muss, außer es liegt ein dringender Grund zum sofortigen stoppen des Fahrzeugs vor (Geiselnahmen, Bankräube, vorangegangener Schusswechsel mit den Fahrzeuginsassen, illegales Fahrzeug).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Umgang mit illegalen Fahrzeugen",
				"
				1. Illegale Fahrzeuge als Solche sind der Ifrit, ein bewaffneter Offroader (HMG) sowie alle Fahrzeuge/Fluggefährte die für illegale Aktivitäten (mit Ausnahme von Sammelfahrzeugen wie z.B. dem Tempest o.ä.) genutzt wurden (z.B. Banküberfälle, Tankstellenraub, Überfälle, Schießereien, Geiselnahmen, Drogentouren etc.).<br/><br/>

				2. Ein illegales Fahrzeug ist immer zum nächstgelegenen Polizeihauptquartier zu befördern. Diese Fahrzeuge können dann gegen eine Kaution von 2 Millionen $ ausgelöst werden, ansonsten werden diese zerstört. Sollte der Inhaber des Gefährtes getötet worden oder nicht mehr auffindbar sein, wird das Fahrzeug direkt zur Zerstörung überführt. Ausnahmen sind hierbei Minderschwere vergehen oder eine hinreichende Erklärung der Sachlage durch den Betroffenen (RP). Hierbei ist auch die Möglichkeit des Wasserns (für die Serverperiode unzugänglich machen) ein legitimes Strafmittel.<br/><br/>

				"
		]
	];	
	
	player createDiaryRecord ["policerules",
		[
			"Geiselnahmen",
				"
				1. Auf die Kontaktaufnahme der Geiselnehmer ist stets zu reagieren.<br/>
				2. Es gilt bei einer Geiselnahme das SEK anzufordern.<br/>
				3. Das Leben der Geiseln hat immer Vorrang. Soll heißen, dass sollte ein eingreifen des SEK oder der normalen Einheiten keine Aussicht auf Erfolg haben, wird auf die Forderung der Geiselnehmer eingegangen. Nachdem der Geiselaustausch stattgefunden hat, wird dann nach den Geiselnehmern gefahndet um diese festzusetzen.<br/>
				4. Sollte das SEK nicht einsatzbereit sein, ist die Einsatzleitung für die Zuteilung einer Einheit zuständig, welche sich der Geiselnahme annimmt und diese koordiniert.<br/>
				5. max 500k pro Geisel.<br/>
				6. Keine Fake Geiseln.<br/>
				7. Können von Polizisten abgelehnt werden dann muss die Geisel befreit werden und darf nicht weiter festgehalten oder getötet werden sonst RDM.<br/>
				8. Dürfen nicht aus dem Grund gestartet werden nur Polizist zu töten.<br/><br/>

				"
		]
	];	
	
	player createDiaryRecord ["policerules",
		[
			"Allgemeiner Umgang bei Verhaftungen",
				"
				Allgemeiner Umgang bei Verhaftungen

				1. Eine festgesetzte Person ist zur weiteren Behandlung in eines der anliegenden Hauptquartiere zu überführen. Bei kleineren Delikten ist die Bearbeitung und Ausstellung von Bußgeldern vor Ort zulässig/wünschenswert.<br/><br/>

				2. Wiedersetzt sich eine Person der Festnahme ist Sie automatisch in das Hauptquartier zur weiteren Behandlung zu überführen.<br/><br/>

				3. Wenn bei der Festnahme äußere Umstände dazu führen, dass eine Bearbeitung vor Ort nicht mehr möglich ist, ist der Verhaftete ebenfalls zu überführen (Beschuss etc.).<br/><br/>

				4. Jede Person hat das Recht sich zu erklären (RP) bevor Ihm/Ihr eine entsprechende Strafe ausgestellt wird.<br/><br/>

				5. Man sollte auf das RP eingehen machen was die Polizistens sagen und seine Strafe akzeptieren. <br/><br/>

				6. Man sollte ein einigermaßen gutes RP vorweisen und nicht sagen sie können nicht nachweisen das ich das getan hab Ich muss nichst bezahlen.<br/><br/>

				7. Sollte man aus irgendeinem Grund wieder frei sein und kein Polizist hat einem gesagt das man freigelassen wird ist man GEZWUNGEN stehen zu bleiben und NICHT zu schiessen ansonsten gilt es als BUGUSING UND RDM.<br/><br/>
				"
		]
	];
	
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				1. Die Schranken dürfen nicht benutzt werden um Fahrzeuge oder Leute zu beschädigen oder zu töten
				2. Das besetzten eines Checkpoints von Rebellen ist erlaubt muss aber der Polizei gemeldet werden und auf der Karte makiert sein. 
				3. Wenn ein Checkpoint von Rebellen besetzt ist muss die Polizei diesen befreien notfalls auch mit Waffengewalt wenn es keine andere möglichkeit gibt.

				Gang Verstecke:

				1. das einehmen und aufhalten in diesen Gebieten ist illegal 
				2. Das raiden von Polizisten in diesen Gebieten erlaubt mit entsprechendem Rang und Anzahl(siehe Absatz Razzien )
				3. Wenn die Cops vorgewarnt haben darf falls keine Reaktion kommt scharf schiessen	
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Allgemeiner Umgang bei Verhaftungen", 
				"

				1. Eine festgesetzte Person ist zur weiteren Behandlung in eines der anliegenden Hauptquartiere zu überführen. Bei kleineren Delikten ist die Bearbeitung und Ausstellung von Bußgeldern vor Ort zulässig/wünschenswert. Wiedersetzt sich eine Person der Festnahme ist Sie automatisch in das Hauptquartier zur weiteren Behandlung zu überführen.<br/><br/>

				2. Wenn bei der Festnahme äußere Umstände dazu führen, dass eine Bearbeitung vor Ort nicht mehr möglich ist, ist der Verhaftete ebenfalls zu überführen (Beschuss etc.).<br/><br/>

				3. Jede Person hat das Recht sich zu erklären (RP) bevor Ihm/Ihr eine entsprechende Strafe ausgestellt wird.<br/><br/>
				
				4. Das Strafmaß als Solches ist immer an den vorliegenden Richtlinien auszurichten, kann jedoch bei zureichender Erklärung in gewissem Rahmen angepasst werden.<br/><br/>

				5. Die Entscheidung eines Beamten in Bezug auf ein Strafmaß ist nicht verhandelbar.<br/><br/>

				6. Ein Straftäter hat immer die Chance zweimalig seine Buße zu begleichen in geldlicher Form, danach wird er der JVA überstellt um seine Strafe in Form von Haft ab zu leisten (Gefängnis).<br/><br/>

				7. Bei einer Bußgeldstrafe mit einem Wert über 999.999$ (ab 1 Million Dollar) ist eine sofortige Überstellung an die JVA auszuführen (Gefängnis). Ebenfalls gilt diese Regelung bei zwei oder mehr Morden sowie Totschlag (Kapitalverbrechen). Hierbei gibt es keinerlei Diskussionsspielraum.<br/><br/>
				
				Tickets:<br/><br/>

				1. Je nach Erachten des Polzisten darf das Ticket vom wert des Ticketkatalogs um 50% nach oben und nach unten abweichen.<br/><br/>

				2. Wenn eine Person verhaftet und ein Ticket ausgestellt wird, müssen dieser Person die Gründe mitgeteilt werden,die zu der Verhaftung geführt haben.<br/><br/>


				3. Ein Straftäter hat immer die Chance zweimalig seine Buße zu begleichen in geldlicher Form, danach wird er der JVA überstellt um seine Strafe in Form von Haft ab zu leisten (Gefängnis).<br/><br/>

				4. Hat ein Verdächtiger ein Ticket bekommen und bezahlt, muss dieser frei gelassen werden.<br/><br/>

				
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Umgang mit flüchtigen Personen", 
				"
				1. Eine flüchtige Person ist zunächst zum Anhalten aufzufordern. Sollte sich die Person den Anweisungen der Polizei wiedersetzen, oder sollte es schon vorherigen Schusswechsel bzw. ein Feuergefecht gegeben haben, ist der Beamte befugt im Rahmen seiner Möglichkeiten die Person zum anhalten zubewegen (Tasern, Schusswaffengebrauch).<br/><br/>

				2. Sollte das SEK nicht einsatzbereit sein, ist die Einsatzleitung für die Zuteilung einer Einheit zuständig, welche sich der Geiselnahme annimmt und diese koordiniert.<br/><br/>
				"
		]
	];
	

// Controls Section


	player createDiaryRecord ["controls",
		[
			"hilfreiche Tipps",
				"
				Du gehst langsam?! Dann in Kombination probieren:<br/><br/>

				C: Kampfgeschwindigkeit<br/>
				Rechte Maustaste: Visier (ohne Waffe)<br/>
				W+S und S+W: Gehen/Rennen umschalten<br/>
				2x Shift: Gehen/Rennen umschalten<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["controls",
		[
			"Polizisten",
				"
				Manche dieser Befehle gelten nur, wenn man standartmäßig die ARMA 3 Steuerung aktiviert hat.<br/><br/>

				Shift+R: Festnehmen (Handschellen anlegen)<br/>
				Shift+L: Aktiviert das Blaulicht<br/>
				F: Aktiviert die Sirenen im Polizeifahrzeug<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["controls",
		[
			"Haltungen",
				"
				Manche dieser Befehle gelten nur, wenn man standartmäßig die ARMA 3 Steuerung aktiviert hat.<br/><br/>

				C: Kampfgeschwindigkeit<br/>
				X: Ducken/Aufstehen<br/>
				Y: Hinlegen/Aufstehen<br/>
				Strg links+S: Haltung nach unten (mit Waffe)<br/>
				Strg links+W: Haltung nach oben (mit Waffe)<br/>
				Strg links+A: Haltung nach links (mit Waffe)<br/>
				Strg links+D: Haltung nach rechts (mit Waffe)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["controls",
		[
			"Waffen",
				"
				Manche dieser Befehle gelten nur, wenn man standartmäßig die ARMA 3 Steuerung aktiviert hat.<br/><br/>
				
				Shift+H: Pistole ziehen, wegstecken<br/>
				Strg+H: Pistole ziehen, wegstecken<br/>				
				Shift+G: Niederschlagen (nur mit Waffe möglich)<br/>
				2x Strg links: Waffe senken, heben<br/>
				F: Schussmodus wechseln<br/>
				R: Nachladen<br/>
				Strg links+rechte Maustaste: Visirwechsel/Visiermodus<br/>
				G: Wefen (Granaten etc.)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["controls",
		[
			"Allgemeine Steuerung",
				"
				Manche dieser Befehle gelten nur, wenn man standartmäßig die ARMA 3 Steuerung aktiviert hat.<br/><br/>
				
				Y or Z: Öffnet das Player-Menü<br/>
				U: Lockt und unlockt eure Fahrzeuge<br/>
				F: Aktiviert die Sirenen im Polizeifahrzeug<br/>
				T: Öffnet das Inventar des Fahrzeugs<br/>
				I: Inventar<br/>
				N: Nachtsicht<br/>
				B: Fernglas oder Entfernungsmesser<br/><br/>
				"
		]
	];
    
    player createDiaryRecord ["news",
		[
			"Tempest Gerät",
				"
			Der Tempest Gerät hat ein upgrade bekommen.<br/>
			1. Kauft euch beim Truck Shop eures vertrauen einen Tempest Geraet. <br/>
			2. Fahr mit dem Tempest zu einem Abbaugebiet deiner Wahl stell ihn dort ab.<br/>
			3. Mit der Windows Taste (USE 10) kannst du nun den Tempest Ger�t anschalten (von au�en).<br/>
			4. Pass auf der Tempest verbraucht Benzin um zu arbeiten!<br/>
				"
		]
	];
    
    player createDiaryRecord ["news",
		[
			"Housing",
				"
			Tonics Housing System ist auf unserem Server.<br/>
			1. Um ein Haus zu kaufen braucht ihr eine Housing Lizenz die ihr beim Immobilien Händler kaufen könnt. <br/>
			2. Um mit dem Haus zu interagieren musst du auf das Haus zielen und die Windows Taste dr�cken(USE 10).<br/>
			3. Die Türen öffnet man mit U.<br/>
			4. Das virtuelle Inventar vom Haus lässt sich normal mit T öffen. Ihr könnt keine Goldbarren mehr im Haus Lagern!!!<br/>
			5. Um Storage Boxen auf zu stellen kauf euch diese bei einem Markt eurer wahl und stellt diese auf in dem ihr sie auswählt und auf benutzen klickt.<br/>
				"
		]
	];
    
    player createDiaryRecord ["news",
		[
			"Zentralbank",
				"
			Die neue Zentralbank erfordert nun 2 Items um sie zu berauben.<br/>
			1. Braucht ihr einen 'Bolzenschneider' um die Türen zu öffnen. <br/>
			2. Wenn ihr am Safe seid müsst ihr die 'blasting charge', welche ihr nur im Rebellen Markt kaufen könnt, am Safe platzieren.<br/>
			3. Nun dauert es 5 min in denen die Cops Zeit haben die Bombe zu entschärfen. Sollten sie das nicht schaffen könnt ihr dem Safe nun Goldbarren entnehmen.<br/>
			4. Jetzt müsst ihr die Goldbarren nunrnoch zum Gold Händler bringen. ACHTUNG: Ihr könnt Gold nur in Land Fahrzeugen transportieren! <br/>
			5. Der Safe ist so lange offen bis die Cops den Safe und die Türen reparieren.<br/>
				"
		]
	];
    
    player createDiaryRecord ["news",
		[
			"Gang System",
				"
			Ihr fragt euch wie das neue Gang System funktioniert?<br/><br/>
					
		  	Um eine Gang zu gründen geht wie immer in euer Spieler Menü und erstellt eine Gang.<br/>
            Die neuen Gangs sind teurer als früher dafür bleiben sie bestehen. <br/>
            Es gibt in Altis 3 Gang verstecke, diese gilt es einzunehmen um dadurch zugriff auf den speziellen Gang Shop zu erhalten.<br/>
            In diesem Shop gibt es waffen die nicht anders erlangt werden können.<br/>
            Die Gang hat auch eine gemeinsame Kasse. In diese Kasse kann aktuell nur eingezahlt werden.<br/>
            Allerdings kann man mit der gang Kasse in den Shops im Gang HQ bezahlen.<br/><br/>
                
		  "
		]
	];