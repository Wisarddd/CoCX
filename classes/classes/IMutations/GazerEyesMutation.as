/**
 * Original code by aimozg on 27.01.14.
 * Extended for Mutations by Jtecx on 14.03.22.
 */
package classes.IMutations
{
import classes.PerkClass;
import classes.IMutationPerkType;
import classes.Creature;
import classes.Races;

public class GazerEyesMutation extends IMutationPerkType
    {
        private static const mName:String = "Gazer Eyes";
        //v1 contains the mutation tier
        override public function mDesc(params:PerkClass, pTier:int = -1):String {
            var descS:String = "";
            pTier = (pTier == -1)? currentTier(this, player): pTier;
            if (pTier >= 1){
                descS += "Keep true sight at all times and empower gaze attacks";
            }
            if (pTier >= 2){
                descS += ", empower your ability to cast multiple spells as a Gazer if available";
            }
            if (pTier >= 3){
                descS += ", increase spell critical hit chance by 10%";
            }
            if (descS != "")descS += ".";
            return descS;
        }

        //Name. Need it say more?
        override public function name(params:PerkClass=null):String {
            var sufval:String;
            switch (currentTier(this, player)){
                case 2:
                    sufval = "(Primitive)";
                    break;
                case 3:
                    sufval = "(Evolved)";
                    break;
                default:
                    sufval = "";
            }
            return mName + sufval;
        }

        //Mutation Requirements
        override public function pReqs(pCheck:int = -1):void{
            try{
                var pTier:int = (pCheck != -1 ? pCheck : currentTier(this, player));
                //This helps keep the requirements output clean.
                this.requirements = [];
                if (pTier == 0){
                    this.requireEyesMutationSlot()
                        .requireRace(Races.GAZER);
                }
                else{
                    var pLvl:int = pTier * 30;
                    this.requireLevel(pLvl);
                }
            }catch(e:Error){
                trace(e.getStackTrace());
            }
        }
        
        //Mutations Buffs
        override public function buffsForTier(pTier:int, target:Creature):Object {
            var pBuffs:Object = {};
            if (pTier == 1){
                pBuffs['int.mult'] = 0.05;
            }
            if (pTier == 2){
                pBuffs['int.mult'] = 0.15;
                pBuffs['lib.mult'] = 0.05;
            }
            if (pTier == 3){
                pBuffs['int.mult'] = 0.25;
                pBuffs['lib.mult'] = 0.10;
            }
            return pBuffs;
        }

        public function GazerEyesMutation() {
            super(mName + " IM", mName, SLOT_EYES, 3);
        }

    }
}
