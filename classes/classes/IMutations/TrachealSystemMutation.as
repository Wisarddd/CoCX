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

public class TrachealSystemMutation extends IMutationPerkType
    {
        private static const mName:String = "Tracheal System";
        //v1 contains the mutation tier
        override public function mDesc(params:PerkClass, pTier:int = -1):String {
            var descS:String = "";
            pTier = (pTier == -1)? currentTier(this, player): pTier;
            if (pTier >= 1) descS += "Your body possesses a ";
            if (pTier == 1){
                descS += "rudimentary";
            }
            if (pTier == 2){
                descS += "basic";
            }
            if (pTier == 3){
                descS += "half developed";
            }
            if (pTier == 4){
                descS += "fully developed";
            }
            if (descS != "")descS += " respiratory system modeled after insects.";
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
                case 4:
                    sufval = "(Final Form)";
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
                    this.requireAdaptationsMutationSlot()
                    .requireRacialGroup(Races.InsectRaces, "Any insect race");
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
                pBuffs['str.mult'] = 0.01;
                pBuffs['spe.mult'] = 0.02;
            }
            else if (pTier == 2){
                pBuffs['str.mult'] = 0.03;
                pBuffs['spe.mult'] = 0.05;
                pBuffs['tou.mult'] = 0.01;
            }
            else if (pTier == 3){
                pBuffs['str.mult'] = 0.07;
                pBuffs['spe.mult'] = 0.1;
                pBuffs['tou.mult'] = 0.04;
            }
            else if (pTier == 4){
                pBuffs['str.mult'] = 0.15;
                pBuffs['spe.mult'] = 0.2;
                pBuffs['tou.mult'] = 0.1;
            }
            return pBuffs;
        }

        public function TrachealSystemMutation() {
            super(mName + " IM", mName, SLOT_ADAPTATIONS, 4);
        }

    }
}
