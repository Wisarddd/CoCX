package classes.Items.Weapons
{
import classes.EventParser;
import classes.Items.Weapon;
import classes.PerkLib;
import classes.TimeAwareInterface;

public class Eclipse extends Weapon implements TimeAwareInterface
	{
		//Implementation of TimeAwareInterface
        //Recalculate Wizard's multiplier every hour
		public function timeChange():Boolean
		{
			updateWizardsMult();
			return false;
		}
	
		public function timeChangeLarge():Boolean {
            updateWizardsMult();
			return false;
		}
		
        //Normal weapon stuff
		public function Eclipse()
		{
			super("Eclipse", "Eclipse", "Eclipse", "an Eclipse", "bonk", 5, 1600,
					"Created using the blood and bones of a titan for material Eclipse as it is now called constantly craves for oblivion. As a corrupted sentient weapon it constantly craves death and suffering but more then anything the life of its owner for Eclipse obeys no master and seeks to destroy everything indescriminately. Due to its nature as an item infused with the essense of annihilation Eclipse weakens the power of healing spells.",
					"Wand, Weakens healing spell, Spellpower bonus for corruption", WT_WAND);
			withBuff('spellpower', +0.6);
			EventParser.timeAwareClassAdd(this);
		}
		
		public function calcWizardsMult():Number {
			var multadd:Number = 0.6;
            if (game && game.player)
                multadd += game.player.cor * 0.05;
			return multadd;
		}

        private static var lastCor:Number = 0;

        public function updateWizardsMult():void {
            if (game.player.cor != lastCor) {
				_buffs['spellpower'] = calcWizardsMult();
                if (game.player.weapon == this) {
                    //re-requip to update player's perk
                    afterUnequip(false);
                    afterEquip(false);
                }
            }
            lastCor = game.player.cor;
        }

        override public function get descBase():String {
            if (game && game.player)
                return _description + (
                    game.player.cor < 25 ? "\n\nYour pure aura almost breaks the flow of energy inside the wand, decreasing its power!\n" :
                    game.player.cor < 50 ? "\n\nYour pure aura sligtly interrupts your connection with the wand, decreasing its power.\n" :
                    game.player.cor < 75 ? "\n\nYour corrupted aura slightly increases the wand's power.\n" :
                    "\n\nYour corrupted energy flows through the wand, empowering it!\n");
            else
                return _description;
        }
		
		override public function canEquip(doOutput:Boolean):Boolean {
			if (game.player.level >= 40) return super.canEquip(doOutput);
			if(doOutput) outputText("You try and wield the legendary weapon but to your disapointment the item simply refuse to stay put in your hands. It would seem you yet lack the power and right to wield this item.");
			return false;
		}

		override public function get description():String {
			updateWizardsMult(); //To display *correct* values
			return super.description;
		}
	}
}
