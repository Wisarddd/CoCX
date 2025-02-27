/**
 * @author Ormael
 * Area with lvl 35-60 enemies.
 * Currently a Work in Progress
 */
package classes.Scenes.Areas 
{
import classes.*;
import classes.GlobalFlags.kFLAGS;
import classes.CoC;
import classes.Scenes.API.Encounters;
import classes.Scenes.API.GroupEncounter;
import classes.Scenes.Areas.Caves.*;
import classes.Scenes.Dungeons.EbonLabyrinth;
import classes.Scenes.Monsters.DarkElfScene;
import classes.Scenes.NPCs.Forgefather;
import classes.Scenes.SceneLib;

use namespace CoC;
	
	public class Caves extends BaseContent
	{
		public var darkelfScene:DarkElfScene = new DarkElfScene();
		public var cavewyrmScene:CaveWyrmScene = new CaveWyrmScene();
		public var displacerbeastScene:DisplacerBeastScene = new DisplacerBeastScene();
		public var darkslimeScene:DarkSlimeScene = new DarkSlimeScene();
		
		public function Caves() {
			onGameInit(init);
		}

		private var _cavesEncounter:GroupEncounter = null;
		public function get cavesEncounter():GroupEncounter {
			return _cavesEncounter;
		}

		private function init():void {
			_cavesEncounter = Encounters.group("caves", {
				name: "discoverashlands",
				when: function ():Boolean {
					return (player.level + combat.playerLevelAdjustment()) >= 35 && flags[kFLAGS.DISCOVERED_ASHLANDS] == 0
				},
				chance: 30,
				call: discoverAshlands
			}, {
				name: "discovertundra",
				when: function ():Boolean {
					return (player.level + combat.playerLevelAdjustment()) >= 35 && flags[kFLAGS.DISCOVERED_TUNDRA] == 0
				},
				chance: 30,
				call: discoverTundra
			}, {
				name: "discoverebonlab",
				when: function ():Boolean {
					return flags[kFLAGS.EBON_LABYRINTH] < 1
				},
				chance: 30,
				call: SceneLib.dungeons.ebonlabyrinth.ebonlabyrinthdiscovery
			}, {
				name: "gunparts",
				when: function ():Boolean {
					return player.hasStatusEffect(StatusEffects.TelAdreTripxiGuns5) && player.statusEffectv1(StatusEffects.TelAdreTripxiGuns5) == 0 && player.hasKeyItem("Touhouna M3") < 0
				},
				call: partsofTouhounaM3
			}, {
				name: "etna",
				when: function ():Boolean {
					return flags[kFLAGS.ETNA_AFFECTION] >= 5
				},
				call: manticoreEncounterFn
			}/*, {
					player.createStatusEffect(StatusEffects.InsideSmallSpace,0,0,0,0);
					//antworker.();
					clearOutput();
					//outputText("You spend one hour exploring the caves but you don't manage to find anything interesting, unless feeling like you are becoming slightly tougher counts.");
					break;
			}*/, {
				name: "mine",
				when: function ():Boolean {
					return player.hasKeyItem("Old Pickaxe") > 0 && Forgefather.materialsExplained
				},
				call: cavesMine
			}, {
				name: "cavewyrn",
				call: function ():void {
					player.createStatusEffect(StatusEffects.InsideSmallSpace,0,0,0,0);
					cavewyrmScene.berserkingCaveWyrmEncounter();
				}
			}, {
				name: "darkelf",
				call: function ():void {
					player.createStatusEffect(StatusEffects.InsideSmallSpace,0,0,0,0);
					darkelfScene.introDarkELfRangerCaves();
				}
			}, {
				name: "darkslime",
				call: function ():void {
					player.createStatusEffect(StatusEffects.InsideSmallSpace,0,0,0,0);
					darkslimeScene.cavesDarkSlimeEncounter();
				}
			}, {
				name: "displacerbeast",
				call: function ():void {
					player.createStatusEffect(StatusEffects.InsideSmallSpace,0,0,0,0);
					displacerbeastScene.displacerBeastEncounter();
				}
			}, {
				name: "",
				when: function ():Boolean {
					return true
				},
				call: findNothing
			}, {
				name: "findebon",
				call: findEbonBloom
			}, {
				name: "findcrystal",
				call: findCrystal
			}, {
				name: "findeyedrops",
				call: findEyeDrops
			}, {
				name: "findnothing",
				call: findNothing
			})
		}

		public function isDiscovered():Boolean {
			return flags[kFLAGS.DISCOVERED_CAVES] > 0;
		}
		public function timesExplored():int {
			return flags[kFLAGS.DISCOVERED_CAVES];
		}


		public function exploreCaves():void {
			clearOutput();
			flags[kFLAGS.DISCOVERED_CAVES]++;
			doNext(camp.returnToCampUseOneHour);
			cavesEncounter.execEncounter();
			flushOutputTextToGUI();
		}

		private function discoverTundra():void {
			clearOutput();
			outputText("While exploring one of the many tunnels you begin to see a bluish light, curious as to where this opens you take it all the way to the surface and begin to feel chilly, it's definitely cold out there. What awaits you beyond the exit is the sight of endless tundra and icebound mountains.\n\n");
			outputText("<b>You've discovered the Tundra!</b>");
			flags[kFLAGS.DISCOVERED_TUNDRA]++;
			doNext(camp.returnToCampUseTwoHours);
		}

		private function discoverAshlands():void {
			clearOutput();
			outputText("While exploring one of the many tunnels you begin to see a red light, curious as to where this opens you take it all the way to the surface as the heat starts to increase dramatically the cool fresh air of the tunnel replaced by a warm and smoky air, it's definitely very hot out there. ");
			outputText("What awaits you beyond the exit is the sight of a field of ashes and lava with volcanoes in the backside.\n\n");
			outputText("<b>You've discovered the Ashlands!</b>");
			flags[kFLAGS.DISCOVERED_ASHLANDS]++;
			doNext(camp.returnToCampUseTwoHours);
		}

		private function findEbonBloom():void {
			clearOutput();
			outputText("You're exploring the vast cave system when you come across a small cavern. As you head further into the cavern you spot something glinting just up ahead. A small crack in the ceiling lets a sliver of light shine down on a dark metallic looking flower growing on top of a stone pillar. ");
			outputText("Your eyes widen in surprise when you recognize it to be a rare Ebonbloom. Seeing that nothing else is around, you make your way over to the flower then try to pluck it. It doesn't budge at first but with a little more effort you manage to pull the flower free. ");
			if (silly()) outputText("You suddenly hear dramatic music play as the cavern around you begins to cave in. You don your brown explorer's hat and whip as you make your way out of the collapsing cavern, dodging falling rocks in the process. By the skin of your teeth you escape from the cavern with your treasure in hand. ");
			inventory.takeItem(useables.EBONBLO, camp.returnToCampUseOneHour);
		}

		private function findCrystal():void {
			clearOutput();
			outputText("As you explore the cave, you run into a weird neon blue crystal that glow in the dark. You pack it in your backpack in case it could be sold for a decent amount" + (silly() ? ", perhaps to a drug dealer" : "") + ". ");
			inventory.takeItem(consumables.METHIRC, camp.returnToCampUseOneHour);
		}

		private function findEyeDrops():void {
			clearOutput();
			outputText("As you explore the cave, you run into a bottle of eye drops. You pack it in your backpack in case it could be sold for a decent amount. ");
			inventory.takeItem(consumables.EYEDROP, camp.returnToCampUseOneHour);
		}

		private function findNothing():void {
			clearOutput();
			outputText("You spend one hour exploring the caves but you don't manage to find anything interesting, unless feeling like you are becoming slightly tougher counts.");
			dynStats("tou", .5);
			doNext(camp.returnToCampUseOneHour);
		}

		private function manticoreEncounterFn():void {
			player.createStatusEffect(StatusEffects.InsideSmallSpace, 0, 0, 0, 0);
			if (rand(2) == 0) {
				player.createStatusEffect(StatusEffects.WildManticore, 0, 0, 0, 0);
				SceneLib.etnaScene.repeatEnc();
			} else {
				SceneLib.bashemathScene.repeatEncWM();
			}
		}

		public function partsofTouhounaM3():void {
			clearOutput();
			outputText("As you explore the caves you run into what appears to be the half buried remains of some old contraption. Wait this might just be what that gun vendor was talking about! You proceed to dig up the items releasing this to indeed be the remains of a broken firearm.\n\n");
			outputText("You carefully put the pieces of the Touhouna M3 in your back and head back to your camp.\n\n");
			player.addStatusValue(StatusEffects.TelAdreTripxi, 2, 1);
			player.createKeyItem("Touhouna M3", 0, 0, 0, 0);
			doNext(camp.returnToCampUseOneHour);
		}

		private function cavesMine():void {
			clearOutput();
			outputText("You stumble across a vein of Ebony, this looks like suitable material for your gargoyle form.\n");
			outputText("Do you wish to mine it?");
			menu();
			addButton(0, "Yes", cavesSiteMine);
			addButton(1, "No", camp.returnToCampUseOneHour);
		}

		private function cavesSiteMine():void {
			if (Forgefather.materialsExplained != 1) doNext(camp.returnToCampUseOneHour);
			else {
				if (player.fatigue > player.maxFatigue() - 50) {
					outputText("\n\n<b>You are too tired to consider mining. Perhaps some rest will suffice?</b>");
					doNext(camp.returnToCampUseOneHour);
					return;
				}
				outputText("\n\nYou begin slamming your pickaxe against the ebony, spending the better part of the next two hours mining. This done, you bring back your prize to camp. ");
				var minedStones:Number = 13 + Math.floor(player.str / 20);
				minedStones = Math.round(minedStones);
				fatigue(50, USEFATG_PHYSICAL);
				SceneLib.forgefatherScene.incrementEbonySupply(minedStones);
				player.mineXP(player.MiningMulti());
				findGem();
				camp.returnToCampUseTwoHours();
			}
		}

		private function findGem():void {
			if (player.miningLevel > 4) {
				if (rand(4) == 0) {
					inventory.takeItem(useables.AMEGEM, camp.returnToCampUseTwoHours);
					player.mineXP(player.MiningMulti() * 2);
				}
				else {
					outputText("After attempt to mine Amethysts you ended with unusable piece.");
					doNext(camp.returnToCampUseTwoHours);
				}
			}
			else {
				outputText(" Your mining skill is too low to find any Amethysts.");
				doNext(camp.returnToCampUseTwoHours);
			}
		}

	}
}