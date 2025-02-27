/**
 * Original code by aimozg on 27.01.14.
 * Extended for Mutations by Jtecx on 14.03.22.
 */
package classes.IMutations
{
import classes.IMutationPerkType;
import classes.Creature;
import classes.PerkClass;

    public class MutationTemplate extends IMutationPerkType
    {
        private static const mName:String = "PerkName Here";
        //v1 contains the mutation tier
        override public function mDesc(params:PerkClass, pTier:int = -1):String {
            var descS:String = "";
            pTier = (pTier == -1)? currentTier(this, player): pTier;
            if (pTier >= 1){
                descS += "";
            }
            if (pTier >= 2){
                descS += ", ";
            }
            if (pTier >= 3){
                descS += ", ";
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
                    this.requireHeartMutationSlot();
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
            //if (player.perkv3(this) == 1){} //This checks in player has the "true" mutation.
            /*
            if (pTier == 1) {
                pBuffs['spe.mult'] = 0;
            }
            if (pTier == 2){
                pBuffs['spe.mult'] = 0;
            }
            if (pTier == 3){
                pBuffs['spe.mult'] = 0;
            }*/
            return pBuffs;
        }

        public function MutationTemplate() {
            // replace SLOT_NONE with other SLOT_XXXX constant
            super(mName + " IM", mName, SLOT_NONE, 3, true);
        }

    }
}
