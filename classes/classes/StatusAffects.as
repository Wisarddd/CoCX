package classes
{
	import classes.StatusAffects.CombatStatusAffect;

	/**
	 * IMPORTANT NOTE:
	 * You can rename the constants BUT NOT the string ids (they are stored in saves).
	 */
	public class StatusAffects
	{
		// Non-combat player perks
		public static const AllNaturalOnaholeUsed:StatusAffectType = mk("all-natural onahole used");
		public static const AndysSmoke:StatusAffectType = mk("Andy's Smoke"); //v1: Hours; v2: Speed; v3: Intelligence
		public static const AteEgg:StatusAffectType = mk("ateEgg");
		public static const AnemoneArousal:StatusAffectType = mk("Anemone Arousal");
		public static const BimboChampagne:StatusAffectType = mk("Bimbo Champagne");
		public static const Birthed:StatusAffectType = mk("Birthed");
		public static const BirthedImps:StatusAffectType = mk("Birthed Imps");
		public static const BlackCatBeer:StatusAffectType = mk("Black Cat Beer");
		public static const BlackNipples:StatusAffectType = mk("Black Nipples");
		public static const BlowjobOn:StatusAffectType = mk("BlowjobOn");
		public static const BoatDiscovery:StatusAffectType = mk("Boat Discovery");
		public static const BonusACapacity:StatusAffectType = mk("Bonus aCapacity");
		public static const BonusVCapacity:StatusAffectType = mk("Bonus vCapacity");
		public static const BottledMilk:StatusAffectType = mk("Bottled Milk");
		public static const BreastsMilked:StatusAffectType = mk("Breasts Milked");
		public static const BSwordBroken:StatusAffectType = mk("BSwordBroken");
		public static const BuiltMilker:StatusAffectType = mk("BUILT: Milker");
		public static const BurpChanged:StatusAffectType = mk("Burp Changed");
		public static const ButtStretched:StatusAffectType = mk("ButtStretched");
		public static const CampAnemoneTrigger:StatusAffectType = mk("Camp Anemone Trigger");
		public static const CampMarble:StatusAffectType = mk("Camp Marble");
		public static const CampRathazul:StatusAffectType = mk("Camp Rathazul");
		public static const ClaraCombatRounds:StatusAffectType = mk("Clara Combat Rounds");
		public static const ClaraFoughtInCamp:StatusAffectType = mk("Clara Fought In Camp");
		public static const CockPumped:StatusAffectType = mk("Cock Pumped");
		public static const Contraceptives:StatusAffectType = mk("Contraceptives");
		public static const CuntStretched:StatusAffectType = mk("CuntStretched");
		public static const DefenseCanopy:StatusAffectType = mk("Defense: Canopy");
		public static const DeluxeOnaholeUsed:StatusAffectType = mk("deluxe onahole used");
		public static const DogWarning:StatusAffectType = mk("dog warning");
		public static const DragonBreathBoost:StatusAffectType = mk("Dragon Breath Boost");
		public static const DragonBreathCooldown:StatusAffectType = mk("Dragon Breath Cooldown");
		public static const Dysfunction:StatusAffectType = mk("dysfunction");
		public static const Edryn:StatusAffectType = mk("Edryn");
		public static const Eggchest:StatusAffectType = mk("eggchest");
		public static const Eggs:StatusAffectType = mk("eggs");
		public static const EmberFuckCooldown:StatusAffectType = mk("ember fuck cooldown");
		public static const EmberMilk:StatusAffectType = mk("Ember's Milk");
		public static const EmberNapping:StatusAffectType = mk("Ember Napping");
		public static const EverRapedJojo:StatusAffectType = mk("Ever Raped Jojo");
		public static const Exgartuan:StatusAffectType = mk("Exgartuan");
		public static const ExploredDeepwoods:StatusAffectType = mk("exploredDeepwoods");
		public static const FaerieFemFuck:StatusAffectType = mk("Faerie Fem Fuck");
		public static const FaerieFucked:StatusAffectType = mk("Faerie Fucked");
		public static const FappedGenderless:StatusAffectType = mk("fapped genderless");
		public static const Feeder:StatusAffectType = mk("Feeder");
		public static const FeedingEuphoria:StatusAffectType = mk("Manticore's Metabolism"); //v1: Hours; v2: Speed
		public static const Fertilized:StatusAffectType = mk("Fertilized");
		public static const FetishOn:StatusAffectType = mk("fetishON");
		public static const FoundFactory:StatusAffectType = mk("Found Factory");
		public static const FuckedMarble:StatusAffectType = mk("FuckedMarble");
		public static const Fullness:StatusAffectType = mk("Fullness"); //Alternative to hunger
		public static const Goojob:StatusAffectType = mk("GOOJOB");
		public static const GooStuffed:StatusAffectType = mk("gooStuffed");
		public static const Groundpound:StatusAffectType = mk("Groundpound");
		public static const HairdresserMeeting:StatusAffectType = mk("hairdresser meeting");
		public static const Hangover:StatusAffectType = mk("Hangover");
		public static const Heat:StatusAffectType = mk("heat");
		public static const HorseWarning:StatusAffectType = mk("horse warning");
		public static const IcePrisonSpell:StatusAffectType = mk("Ice Prison Spell");
		public static const ImmolationSpell:StatusAffectType = mk("Immolation Spell");
		public static const ImpGangBang:StatusAffectType = mk("Imp GangBang");
		public static const Infested:StatusAffectType = mk("infested");
		public static const IzmaBlowing:StatusAffectType = mk("IzmaBlowing");
		public static const IzumisPipeSmoke:StatusAffectType = mk("Izumis Pipe Smoke");
		public static const JerkingIzma:StatusAffectType = mk("JerkingIzma");
		public static const Jizzpants:StatusAffectType = mk("Jizzpants");
		public static const JojoMeditationCount:StatusAffectType = mk("Jojo Meditation Count");
		public static const JojoNightWatch:StatusAffectType = mk("JojoNightWatch");
		public static const JojoTFOffer:StatusAffectType = mk("JojoTFOffer");
		public static const Kelt:StatusAffectType = mk("Kelt");
		public static const KeltBJ:StatusAffectType = mk("KeltBJ");
		public static const KeltBadEndWarning:StatusAffectType = mk("Kelt Bad End Warning");
		public static const KeltOff:StatusAffectType = mk("KeltOff");
		public static const Kindra:StatusAffectType = mk("Kindra");
		public static const KnowsArouse:StatusAffectType = mk("Knows Arouse");
		public static const KnowsBarrage:StatusAffectType = mk("Knows Barrage");
		public static const KnowsBlind:StatusAffectType = mk("Knows Blind");
		public static const KnowsBlink:StatusAffectType = mk("Knows Blink");
		public static const KnowsBlizzard:StatusAffectType = mk("Knows Blizzard");
		public static const KnowsCharge:StatusAffectType = mk("Knows Charge");//Charge Weapon
		public static const KnowsChargeA:StatusAffectType = mk("Knows Charge Armor");
		public static const KnowsComet:StatusAffectType = mk("Knows Comet");
		public static const KnowsDracoSweep:StatusAffectType = mk("Knows Draco Sweep");
		public static const KnowsFireStorm:StatusAffectType = mk("Knows Fire Storm");
		public static const KnowsHeal:StatusAffectType = mk("Knows Heal");
		public static const KnowsIceRain:StatusAffectType = mk("Knows Ice Rain");
		public static const KnowsIceSpike:StatusAffectType = mk("Knows Ice Spike");
		public static const KnowsManyBirds:StatusAffectType = mk("Knows Many Birds");
		public static const KnowsMight:StatusAffectType = mk("Knows Might");
		public static const KnowsSidewinder:StatusAffectType = mk("Knows Sidewinder");
		public static const KnowsTripleThrust:StatusAffectType = mk("Knows Triple Thrust");
		public static const KnowsVioletPupilTransformation:StatusAffectType = mk("Knows Violet Pupil Transformation");
		public static const KnowsWereBeast:StatusAffectType = mk("Knows Were-Beast");
		public static const KnowsWhitefire:StatusAffectType = mk("Knows Whitefire");
		public static const LactationEndurance:StatusAffectType = mk("Lactation Endurance");
		public static const LactationReduction:StatusAffectType = mk("Lactation Reduction");
		public static const LactationReduc0:StatusAffectType = mk("Lactation Reduc0");
		public static const LactationReduc1:StatusAffectType = mk("Lactation Reduc1");
		public static const LactationReduc2:StatusAffectType = mk("Lactation Reduc2");
		public static const LactationReduc3:StatusAffectType = mk("Lactation Reduc3");
		public static const LootEgg:StatusAffectType = mk("lootEgg");
		public static const LostVillagerSpecial:StatusAffectType = mk("lostVillagerSpecial");
		public static const Luststick:StatusAffectType = mk("Luststick");
		public static const LustStickApplied:StatusAffectType = mk("Lust Stick Applied");
		public static const LustyTongue:StatusAffectType = mk("LustyTongue");
		public static const MalonVisitedPostAddiction:StatusAffectType = mk("Malon Visited Post Addiction");
		public static const Marble:StatusAffectType = mk("Marble");
		public static const MarbleHasItem:StatusAffectType = mk("MarbleHasItem");
		public static const MarbleItemCooldown:StatusAffectType = mk("MarbleItemCooldown");
		public static const MarbleRapeAttempted:StatusAffectType = mk("Marble Rape Attempted");
		public static const MarblesMilk:StatusAffectType = mk("Marbles Milk");
		public static const MarbleSpecials:StatusAffectType = mk("MarbleSpecials");
		public static const MarbleWithdrawl:StatusAffectType = mk("MarbleWithdrawl");
		public static const Meditated:StatusAffectType = mk("Meditated"); // DEPRECATED
		public static const MeanToNaga:StatusAffectType = mk("MeanToNaga");
		public static const MeetWanderer:StatusAffectType = mk("meet wanderer");
		public static const MetRathazul:StatusAffectType = mk("metRathazul");
		public static const MetWorms:StatusAffectType = mk("metWorms");
		public static const MetWhitney:StatusAffectType = mk("Met Whitney");
		public static const Milked:StatusAffectType = mk("Milked");
		public static const MinoPlusCowgirl:StatusAffectType = mk("Mino + Cowgirl");
		public static const Naga:StatusAffectType = mk("Naga");
		public static const NakedOn:StatusAffectType = mk("NakedOn");
		public static const NoJojo:StatusAffectType = mk("noJojo");
		public static const NoMoreMarble:StatusAffectType = mk("No More Marble");
		public static const Oswald:StatusAffectType = mk("Oswald");
		public static const PlainOnaholeUsed:StatusAffectType = mk("plain onahole used");
		public static const PhoukaWhiskeyAffect:StatusAffectType = mk("PhoukaWhiskeyAffect");
		public static const PostAkbalSubmission:StatusAffectType = mk("Post Akbal Submission");
		public static const PostAnemoneBeatdown:StatusAffectType = mk("Post Anemone Beatdown");
		public static const PureCampJojo:StatusAffectType = mk("PureCampJojo");
		public static const RathazulArmor:StatusAffectType = mk("RathazulArmor");
		public static const RepeatSuccubi:StatusAffectType = mk("repeatSuccubi");
		public static const Rut:StatusAffectType = mk("rut");
		public static const SharkGirl:StatusAffectType = mk("Shark-Girl");
		public static const ShieldingSpell:StatusAffectType = mk("Shielding Spell");
		public static const SlimeCraving:StatusAffectType = mk("Slime Craving");
		public static const SlimeCravingFeed:StatusAffectType = mk("Slime Craving Feed");
		public static const SlimeCravingOutput:StatusAffectType = mk("Slime Craving Output");
		public static const SuccubiFirst:StatusAffectType = mk("SuccubiFirst");
		public static const SuccubiNight:StatusAffectType = mk("succubiNight");
		public static const TakenGroPlus:StatusAffectType = mk("TakenGro+");
		public static const TakenLactaid:StatusAffectType = mk("TakenLactaid");
		public static const Tamani:StatusAffectType = mk("Tamani");									//Used only for compatibility with old save files, otherwise no longer in use
		public static const TamaniFemaleEncounter:StatusAffectType = mk("Tamani Female Encounter");	//Used only for compatibility with old save files, otherwise no longer in use
		public static const TelAdre:StatusAffectType = mk("Tel'Adre");
		public static const TentacleBadEndCounter:StatusAffectType = mk("TentacleBadEndCounter");
		public static const TentacleJojo:StatusAffectType = mk("Tentacle Jojo");
		public static const TensionReleased:StatusAffectType = mk("TensionReleased");
		public static const TribulationCountdown:StatusAffectType = mk("TribulationCountdown");
		public static const TF2:StatusAffectType = mk("TF2");
		public static const TookBlessedSword:StatusAffectType = mk("Took Blessed Sword");
		
		//Old status plots. DEPRECATED, DO NOT USE. Currently cannot be removed without breaking existing saves.
		public static const DungeonShutDown:StatusAffectType = mk("DungeonShutDown");
		public static const FactoryOmnibusDefeated:StatusAffectType = mk("FactoryOmnibusDefeated");
		public static const FactoryOverload:StatusAffectType = mk("FactoryOverload");
		public static const FactoryIncubusDefeated:StatusAffectType = mk("FactoryIncubusDefeated");
		public static const IncubusBribed:StatusAffectType = mk("IncubusBribed");
		public static const FactorySuccubusDefeated:StatusAffectType = mk("FactorySuccubusDefeated");		
		public static const MaraeComplete:StatusAffectType = mk("Marae Complete");
		public static const MaraesLethicite:StatusAffectType = mk("Marae's Lethicite");
		public static const MaraesQuestStart:StatusAffectType = mk("Marae's Quest Start");
		public static const MetCorruptMarae:StatusAffectType = mk("Met Corrupt Marae");
		public static const MetMarae:StatusAffectType = mk("Met Marae");
		
		//Prisoner status effects.
		public static const PrisonCaptorEllyStatus:StatusAffectType = mk("prisonCaptorEllyStatus");
		public static const PrisonCaptorEllyQuest:StatusAffectType = mk("prisonCaptorEllyQuest");
		public static const PrisonCaptorEllyPet:StatusAffectType = mk("prisonCaptorEllyPet");
		public static const PrisonCaptorEllyBillie:StatusAffectType = mk("prisonCaptorEllyBillie");
		public static const PrisonCaptorEllyScruffy:StatusAffectType = mk("prisonCaptorEllyScruffy");
		public static const PrisonRestraints:StatusAffectType = mk("prisonRestraint");
		public static const PrisonCaptorEllyScratch:StatusAffectType = mk("prisonCaptorEllyScatch");
		
		
		public static const UmasMassage:StatusAffectType = mk("Uma's Massage"); //v1 = bonus index; v2 = bonus value; v3 = remaining time
		public static const Uniball:StatusAffectType = mk("Uniball");
		public static const UsedNaturalSelfStim:StatusAffectType = mk("used natural self-stim");
		public static const used_self_dash_stim:StatusAffectType = mk("used self-stim");
		public static const Victoria:StatusAffectType = mk("Victoria");
		public static const VoluntaryDemonpack:StatusAffectType = mk("Voluntary Demonpack");
		public static const WormOffer:StatusAffectType = mk("WormOffer");
		public static const WormPlugged:StatusAffectType = mk("worm plugged");
		public static const WormsHalf:StatusAffectType = mk("wormsHalf");
		public static const WormsOff:StatusAffectType = mk("wormsOff");
		public static const WormsOn:StatusAffectType = mk("wormsOn");
		public static const WandererDemon:StatusAffectType = mk("wanderer demon");
		public static const WandererHuman:StatusAffectType = mk("wanderer human");
		public static const Yara:StatusAffectType = mk("Yara");

		// monster
		public static const AbilityCooldown1:StatusAffectType = mk("Ability Cooldown 1");
		public static const AbilityCooldown2:StatusAffectType = mk("Ability Cooldown 2");
		public static const AbilityCooldown3:StatusAffectType = mk("Ability Cooldown 3");
		public static const Attacks:StatusAffectType = mk("attacks");
		public static const BimboBrawl:StatusAffectType = mk("bimboBrawl");
		public static const BowCooldown:StatusAffectType = mk("Bow Cooldown");
		public static const BowDisabled:StatusAffectType = mk("Bow Disabled");
		public static const Charged:StatusAffectType = mk("Charged");
		public static const Climbed:StatusAffectType = mk("Climbed");
		public static const Concentration:StatusAffectType = mk("Concentration");
		public static const Constricted:StatusAffectType = mk("Constricted");
		public static const ConstrictedScylla:StatusAffectType = mk("Constricted Scylla");
		public static const CoonWhip:StatusAffectType = mk("Coon Whip");
		public static const Counter:StatusAffectType = mk("Counter");
		public static const DomFight:StatusAffectType = mk("domfight");
		public static const DrankMinoCum:StatusAffectType = mk("drank mino cum");
		public static const DrankMinoCum2:StatusAffectType = mk("drank mino cum2")
		public static const Drunk:StatusAffectType = mk("Drunk");
		public static const Earthshield:StatusAffectType = mk("Earthshield");
		public static const Fear:StatusAffectType = mk("Fear");
		public static const FearCounter:StatusAffectType = mk("FearCounter");
		public static const GenericRunDisabled:StatusAffectType = mk("Generic Run Disabled");
		public static const Gigafire:StatusAffectType = mk("Gigafire");
		public static const GooEngulf:StatusAffectType = mk("Goo Engulf");
		public static const GottaOpenGift:StatusAffectType = mk("Gotta Open Gift");
		public static const HolliBurning:StatusAffectType = mk("Holli Burning");
		public static const Illusion:StatusAffectType = mk("Illusion");
		public static const ImpSkip:StatusAffectType = mk("ImpSkip");
		public static const ImpUber:StatusAffectType = mk("ImpUber");
		public static const JojoIsAssisting:StatusAffectType = mk("Jojo Is Assisting");
		public static const JojoPyre:StatusAffectType = mk("Jojo Pyre");
		public static const Keen:StatusAffectType = mk("keen");
		public static const Level:StatusAffectType = mk("level");
		public static const KitsuneFight:StatusAffectType = mk("Kitsune Fight");
		public static const LustAura:StatusAffectType = mk("Lust Aura");
		public static const LustStick:StatusAffectType = mk("LustStick");
		public static const Milk:StatusAffectType = mk("milk");
		public static const MilkyUrta:StatusAffectType = mk("Milky Urta");
		public static const MinoMilk:StatusAffectType = mk("Mino Milk");
		public static const MinotaurEntangled:StatusAffectType = mk("Minotaur Entangled");
		public static const MissFirstRound:StatusAffectType = mk("miss first round");
		public static const NoLoot:StatusAffectType = mk("No Loot");
		public static const PCTailTangle:StatusAffectType = mk("PCTailTangle");
		public static const PeachLootLoss:StatusAffectType = mk("Peach Loot Loss");
		// @aimozg i don't know and do not fucking care if these two should be merged
		public static const PhyllaFight:StatusAffectType = mk("PhyllaFight");
		public static const phyllafight:StatusAffectType = mk("phyllafight");
		public static const Platoon:StatusAffectType = mk("platoon");
		public static const QueenBind:StatusAffectType = mk("QueenBind");
		public static const TailSlamWhip:StatusAffectType = mk("Tail Slam Whip");
		// @aimozg HA HA HA
		public static const GiantBoulder:StatusAffectType = mk("Giant Boulder");
		public static const Round:StatusAffectType = mk("Round");
		public static const round:StatusAffectType = mk("round");
		public static const RunDisabled:StatusAffectType = mk("Run Disabled");
		public static const Shell:StatusAffectType = mk("Shell");
		public static const SirenSong:StatusAffectType = mk("Siren Song");
		public static const Spar:StatusAffectType = mk("spar");
		public static const Sparring:StatusAffectType = mk("sparring");
		public static const spiderfight:StatusAffectType = mk("spiderfight");
		public static const StunCooldown:StatusAffectType = mk("Stun Cooldown");
		public static const TentacleCoolDown:StatusAffectType = mk("TentacleCoolDown");
		public static const Timer:StatusAffectType = mk("Timer");
		public static const TimesBashed:StatusAffectType = mk("TimesBashed");
		public static const TimesCharmed:StatusAffectType = mk("TimesCharmed");
		public static const Uber:StatusAffectType = mk("Uber");
		public static const UrtaSecondWinded:StatusAffectType = mk("Urta Second Winded");
		public static const UsedTitsmother:StatusAffectType = mk("UsedTitsmother");
		public static const Vala:StatusAffectType = mk("vala");
		public static const Vapula:StatusAffectType = mk("Vapula");
		public static const WhipReady:StatusAffectType = mk("Whip Ready");
		
		//metamorph
		public static const UnlockedFur:StatusAffectType = mk("Unlocked Fur");//użyć fox fur lub inne skin tf scene text
		public static const UnlockedScales:StatusAffectType = mk("Unlocked Scales");
		public static const UnlockedChitin:StatusAffectType = mk("Unlocked Chitin");
	//	public static const Unlocked:StatusAffectType = mk("Unlocked ");//pozostałe typy skóry tutaj a także partial skin types
	//	public static const Unlocked:StatusAffectType = mk("Unlocked ");//pozostałe typy skóry tutaj a także partial skin types
	//	public static const Unlocked:StatusAffectType = mk("Unlocked ");//pozostałe typy skóry tutaj a także partial skin types
		public static const UnlockedTattoed:StatusAffectType = mk("Unlocked Tattoed");
		public static const UnlockedFishGills:StatusAffectType = mk("Unlocked Fish Gills");
		
		public static const UnlockedFoxLowerBody:StatusAffectType = mk("Unlocked Fox Lower Body");
		public static const UnlockedFoxArms:StatusAffectType = mk("Unlocked Fox Arms");
		public static const UnlockedFoxEars:StatusAffectType = mk("Unlocked Fox Ears");
		public static const UnlockedFoxTail:StatusAffectType = mk("Unlocked Fox Tail");
		public static const UnlockedFoxFace:StatusAffectType = mk("Unlocked Fox Face");
		public static const UnlockedFoxEyes:StatusAffectType = mk("Unlocked Fox Eyes");
		public static const UnlockedFoxTail2nd:StatusAffectType = mk("Unlocked Fox Tail 2nd");
		public static const UnlockedFoxTail3rd:StatusAffectType = mk("Unlocked Fox Tail 3rd");
		public static const UnlockedFoxTail4th:StatusAffectType = mk("Unlocked Fox Tail 4th");
		public static const UnlockedFoxTail5th:StatusAffectType = mk("Unlocked Fox Tail 5th");
		public static const UnlockedFoxTail6th:StatusAffectType = mk("Unlocked Fox Tail 6th");
		public static const UnlockedKitsuneArms:StatusAffectType = mk("Unlocked Kitsune Arms");
		public static const UnlockedDemonTail:StatusAffectType = mk("Unlocked Demon Tail");
		public static const UnlockedDemonHorns:StatusAffectType = mk("Unlocked Demon Horns");
		public static const UnlockedDemonTonuge:StatusAffectType = mk("Unlocked Demon Tonuge");
		public static const UnlockedDemonHighHeels:StatusAffectType = mk("Unlocked Demon High Heels");
		public static const UnlockedDemonClawedLegs:StatusAffectType = mk("Unlocked Demon Clawed Legs");
		public static const UnlockedDemonTinyBatWings:StatusAffectType = mk("Unlocked Tiny Bat Wings");
		public static const UnlockedDemonLargeBatWings:StatusAffectType = mk("Unlocked Large Bat Wings");
		public static const UnlockedDemonLargeBatWings2:StatusAffectType = mk("Unlocked Large Bat Wings (2nd pair)");
		public static const UnlockedLizardLegs:StatusAffectType = mk("Unlocked Lizard Legs");
		public static const UnlockedLizardArms:StatusAffectType = mk("Unlocked Lizard Arms");
		public static const UnlockedLizardTail:StatusAffectType = mk("Unlocked Lizard Tail");
		public static const UnlockedLizardEyes:StatusAffectType = mk("Unlocked Lizard Eyes");
		public static const UnlockedLizardEars:StatusAffectType = mk("Unlocked Lizard Ears");
		public static const UnlockedLizardFace:StatusAffectType = mk("Unlocked Lizard Face");
		public static const UnlockedBeeAntennae:StatusAffectType = mk("Unlocked Bee Antennae");
		public static const UnlockedBeeArms:StatusAffectType = mk("Unlocked Bee Arms");
		public static const UnlockedBeeLegs:StatusAffectType = mk("Unlocked Bee Legs");
		public static const UnlockedBeeTail:StatusAffectType = mk("Unlocked Bee Tail");
		public static const UnlockedBeeWingsSmall:StatusAffectType = mk("Unlocked Bee Wings Small");
		public static const UnlockedBeeWingsLarge:StatusAffectType = mk("Unlocked Bee Wings Large");
		public static const UnlockedHarpyLegs:StatusAffectType = mk("Unlocked Harpy Legs");
		public static const UnlockedHarpyTail:StatusAffectType = mk("Unlocked Harpy Tail");
		public static const UnlockedHarpyArms:StatusAffectType = mk("Unlocked Harpy Arms");
		public static const UnlockedHarpyHair:StatusAffectType = mk("Unlocked Harpy Hair");
		public static const UnlockedHarpyWings:StatusAffectType = mk("Unlocked Harpy Wings");
		public static const UnlockedElfinEars:StatusAffectType = mk("Unlocked Elfin Ears");
		public static const UnlockedSpiderFourEyes:StatusAffectType = mk("Unlocked Spider Four Eyes");
		public static const UnlockedSpiderFangs:StatusAffectType = mk("Unlocked Spider Fangs");
		public static const UnlockedSpiderArms:StatusAffectType = mk("Unlocked Spider Arms");
		public static const UnlockedSpiderLegs:StatusAffectType = mk("Unlocked Spider Legs");
		public static const UnlockedSpiderTail:StatusAffectType = mk("Unlocked Spider Tail");
		public static const UnlockedDriderLegs:StatusAffectType = mk("Unlocked Drider Legs");
		public static const UnlockedSharkTeeth:StatusAffectType = mk("Unlocked Shark Teeth");
		public static const UnlockedSharkTail:StatusAffectType = mk("Unlocked Shark Tail");
		public static const UnlockedSharkLegs:StatusAffectType = mk("Unlocked Shark Legs");
		public static const UnlockedSharkArms:StatusAffectType = mk("Unlocked Shark Arms");
		public static const UnlockedSharkFin:StatusAffectType = mk("Unlocked Shark Fin");
	//	public static const UnlockedGoo:StatusAffectType = mk("Unlocked Goo ");
	//	public static const UnlockedGoo:StatusAffectType = mk("Unlocked Goo ");
	//	public static const UnlockedGoo:StatusAffectType = mk("Unlocked Goo ");
	//	public static const UnlockedGoo:StatusAffectType = mk("Unlocked Goo ");
		public static const UnlockedDraconicX2:StatusAffectType = mk("Unlocked Draconic Horns");
		public static const UnlockedDraconicX4:StatusAffectType = mk("Unlocked Draconic Horns (2nd pair)");
	//	public static const Unlocked:StatusAffectType = mk("Unlocked ");
	//	public static const Unlocked:StatusAffectType = mk("Unlocked ");
	//	public static const Unlocked:StatusAffectType = mk("Unlocked ");
	//	public static const Unlocked:StatusAffectType = mk("Unlocked ");
	//	public static const Unlocked:StatusAffectType = mk("Unlocked ");

		// combat
		public static const AcidSlap:CombatStatusAffect = mk2("Acid Slap");
		public static const AkbalSpeed:CombatStatusAffect = mk2("Akbal Speed");
		public static const AmilyVenom:CombatStatusAffect = mk2("Amily Venom");
		public static const AnemoneVenom:CombatStatusAffect = mk2("Anemone Venom");
		public static const AttackDisabled:CombatStatusAffect = mk2("Attack Disabled");
		public static const BasiliskCompulsion:CombatStatusAffect = mk2("Basilisk Compulsion");
		public static const BasiliskSlow:CombatStatusAffect = mk2("BasiliskSlow");
		public static const BathedInHotSpring:CombatStatusAffect = mk2("Bathed In Hot Spring");
		public static const Berzerking:CombatStatusAffect = mk2("Berzerking");
		public static const Blind:CombatStatusAffect = mk2("Blind");
		public static const Blink:CombatStatusAffect = mk2("Blink");
		public static const Blizzard:CombatStatusAffect = mk2("Blizzard");
		public static const Bound:CombatStatusAffect = mk2("Bound");
		public static const BurnDoT:CombatStatusAffect = mk2("Burn DoT");
		public static const CalledShot:CombatStatusAffect = mk2("Called Shot");
		public static const ChanneledAttack:CombatStatusAffect = mk2("Channeled Attack");
		public static const ChanneledAttackType:CombatStatusAffect = mk2("Channeled Attack Type");
		public static const ChargeArmor:CombatStatusAffect = mk2("Charge Armor");
		public static const ChargeWeapon:CombatStatusAffect = mk2("Charge Weapon");
		public static const Chokeslam:CombatStatusAffect = mk2("Chokeslam");
		public static const Confusion:CombatStatusAffect = mk2("Confusion");
		public static const DemonSeed:CombatStatusAffect = mk2("DemonSeed");
		public static const Disarmed:CombatStatusAffect = mk2("Disarmed");
		public static const DriderKiss:CombatStatusAffect = mk2("Drider Kiss");
		public static const EzekielCurse:CombatStatusAffect = mk2("Ezekiel Curse");
		public static const FirstAttack:CombatStatusAffect = mk2("FirstAttack");
		public static const FirstAttackMantis:CombatStatusAffect = mk2("FirstAttackMantis");
		public static const FirstStrike:CombatStatusAffect = mk2("FirstStrike");
		public static const Flying:CombatStatusAffect = mk2("Flying");
		public static const FlyingNoStun:CombatStatusAffect = mk2("FlyingNoStun");
		public static const FreezingBreathStun:CombatStatusAffect = mk2("FreezingBreathStun");
		public static const Frostbite:CombatStatusAffect = mk2("Frostbite");
		public static const GiantGrabbed:CombatStatusAffect = mk2("Giant Grabbed");
		public static const GiantStrLoss:CombatStatusAffect = mk2("GiantStrLoss");
		public static const GnollSpear:CombatStatusAffect = mk2("Gnoll Spear");
		public static const GooArmorBind:CombatStatusAffect = mk2("GooArmorBind");
		public static const GooArmorSilence:CombatStatusAffect = mk2("GooArmorSilence");
		public static const GooBind:CombatStatusAffect = mk2("GooBind");
		public static const HarpyBind:CombatStatusAffect = mk2("HarpyBind");
		public static const HolliConstrict:CombatStatusAffect = mk2("Holli Constrict");
		public static const ImmolationDoT:CombatStatusAffect = mk2("Immolation DoT");
		public static const InfestAttempted:CombatStatusAffect = mk2("infestAttempted");
		public static const InkBlind:CombatStatusAffect = mk2("Ink Blind");
		public static const IsabellaStunned:CombatStatusAffect = mk2("Isabella Stunned");
		public static const IzmaBleed:CombatStatusAffect = mk2("Izma Bleed");
		public static const KissOfDeath:CombatStatusAffect = mk2("Kiss of Death");
		public static const LizanBlowpipe:CombatStatusAffect = mk2("Lizan Blowpipe");
		public static const LustStones:CombatStatusAffect = mk2("lust stones");
		public static const lustvenom:CombatStatusAffect = mk2("lust venom");
		public static const Lustzerking:CombatStatusAffect = mk2("Lustzerking");
		public static const MedusaVenom:CombatStatusAffect = mk2("Medusa Venom");
		public static const Might:CombatStatusAffect = mk2("Might");
		public static const MonsterAttacksDisabled:CombatStatusAffect = mk2("Monster Attacks Disabled");
		public static const NagaBind:CombatStatusAffect = mk2("Naga Bind");
		public static const NagaVenom:CombatStatusAffect = mk2("Naga Venom");
		public static const NoFlee:CombatStatusAffect = mk2("NoFlee");
		public static const ParalyzeVenom:CombatStatusAffect = mk2("paralyze venom");
		public static const PhysicalDisabled:CombatStatusAffect = mk2("Physical Disabled");
		public static const Poison:CombatStatusAffect = mk2("Poison");
		public static const Sandstorm:CombatStatusAffect = mk2("sandstorm");
		public static const Sealed:CombatStatusAffect = mk2("Sealed");
		public static const SharkBiteBleed:CombatStatusAffect = mk2("Shark Bite Bleed");
		public static const SheilaOil:CombatStatusAffect = mk2("Sheila Oil");
		public static const Shielding:CombatStatusAffect = mk2("Sheilding");
		public static const StoneLust:CombatStatusAffect = mk2("Stone Lust");
		public static const Stunned:CombatStatusAffect = mk2("Stunned");
		public static const TailWhip:CombatStatusAffect = mk2("Tail Whip");
		public static const TemporaryHeat:CombatStatusAffect = mk2("Temporary Heat");
		public static const TentacleBind:CombatStatusAffect = mk2("TentacleBind");
		public static const ThroatPunch:CombatStatusAffect = mk2("Throat Punch");
		public static const Titsmother:CombatStatusAffect = mk2("Titsmother");
		public static const TwuWuv:CombatStatusAffect = mk2("Twu Wuv");
		public static const UBERWEB:CombatStatusAffect = mk2("UBERWEB");
		public static const UnderwaterCombatBoost:CombatStatusAffect = mk2("UnderwaterCombatBoost");
		public static const VioletPupilTransformation:CombatStatusAffect = mk2("Violet Pupil Transformation");
		public static const Web:CombatStatusAffect = mk2("Web");
		public static const WebSilence:CombatStatusAffect = mk2("Web-Silence");
		public static const Whispered:CombatStatusAffect = mk2("Whispered");
		public static const WolfHold:CombatStatusAffect = mk2("Wolf Hold");
		
		public static const CooldownCompellingAria:StatusAffectType = mk2("Cooldown Compelling Aria");
		public static const CooldownFascinate:StatusAffectType = mk("Cooldown Fascinate");
		public static const CooldownFreezingBreath:StatusAffectType = mk("Cooldown Freezing Breath (F)");
		public static const CooldownFreezingBreathYeti:StatusAffectType = mk("Cooldown Freezing Breath (Y)");
		public static const CooldownIllusion:StatusAffectType = mk2("Cooldown Illusion");
		public static const CooldownInkSpray:StatusAffectType = mk("Cooldown Ink Spray");
		public static const CooldownPhoenixFireBreath:StatusAffectType = mk("Cooldown Phoenix Fire Breath");
		public static const CooldownStoneClaw:StatusAffectType = mk("Cooldown Stone Claw");
		public static const CooldownTailSlam:StatusAffectType = mk("Cooldown Tail Slam");
		public static const CooldownTailSmack:StatusAffectType = mk("Cooldown Tail Smack");
		public static const CooldownTerror:StatusAffectType = mk2("Cooldown Terror");
		public static const CooldownWingBuffet:StatusAffectType = mk2("Cooldown Wing Buffet");
		
		public static const RemovedArmor:CombatStatusAffect = mk2("Removed Armor");
		public static const JCLustLevel:CombatStatusAffect = mk2("JC Lust Level");
		public static const MirroredAttack:CombatStatusAffect = mk2("Mirrored Attack");
		public static const KnockedBack:CombatStatusAffect = mk2("Knocked Back");
		public static const Tentagrappled:CombatStatusAffect = mk2("Tentagrappled");
		public static const TentagrappleCooldown:CombatStatusAffect = mk2("Tentagrapple Cooldown");
		public static const ShowerDotEffect:CombatStatusAffect = mk2("Shower Dot Effect");
		public static const GardenerSapSpeed:CombatStatusAffect = mk2("Sap Speed");
		public static const VineHealUsed:CombatStatusAffect = mk2("Vine Heal Used");
		public static const DriderIncubusVenom:CombatStatusAffect = mk2("Drider Incubus Venom");
		public static const TaintedMind:CombatStatusAffect = mk2("Tainted Mind");
		public static const PurpleHaze:CombatStatusAffect = mk2("Purple Haze");
		public static const MinotaurKingMusk:CombatStatusAffect = mk2("Minotaur King Musk");
 		public static const MinotaurKingsTouch:CombatStatusAffect = mk2("Minotaur Kings Touch");
		public static const LethicesRapeTentacles:CombatStatusAffect = mk2("Lethices Rape Tentacles");
		public static const OnFire:CombatStatusAffect = mk2("On Fire");
		public static const LethicesShell:CombatStatusAffect = mk2("Lethices Magic Shell");
		public static const WhipSilence:CombatStatusAffect = mk2("Whip Silence");
		public static const PigbysHands:CombatStatusAffect = mk2("Pigbys Hands");

		/**
		 * Creates non-combat status affect
		 */
		private static function mk(id:String):StatusAffectType
		{
			return new StatusAffectType(id);
		}

		/**
		 * Creates combat status affect
		 */
		private static function mk2(id:String):CombatStatusAffect
		{
			return new CombatStatusAffect(id);
		}
	}
}
