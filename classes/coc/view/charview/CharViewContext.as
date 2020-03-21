/**
 * Coded by aimozg on 27.08.2017.
 */
package coc.view.charview {
import classes.BodyParts.Antennae;
import classes.BodyParts.Arms;
import classes.BodyParts.Beard;
import classes.BodyParts.Butt;
import classes.BodyParts.Claws;
import classes.BodyParts.Ears;
import classes.BodyParts.Eyes;
import classes.BodyParts.Face;
import classes.BodyParts.Gills;
import classes.BodyParts.Hair;
import classes.BodyParts.Hips;
import classes.BodyParts.Horns;
import classes.BodyParts.LowerBody;
import classes.BodyParts.Piercing;
import classes.BodyParts.RearBody;
import classes.BodyParts.Skin;
import classes.BodyParts.Tail;
import classes.BodyParts.Tongue;
import classes.BodyParts.Wings;
import classes.CoC;
import classes.Items.ArmorLib;
import classes.Player;
import classes.StatusEffects;
import classes.CockTypesEnum;
import classes.lists.BreastCup;
import classes.lists.Gender;

import coc.view.*;
import coc.xlogic.ExecContext;

public class CharViewContext extends ExecContext {
	private var charview:CharView;
	public function CharViewContext(charview:CharView, character:*) {
		var player:Player = character as Player;
		var game:CoC = CoC.instance;
		super([
			{}, // local variables
			character,
			{
				showClothing: [LowerBody.LION,LowerBody.GARGOYLE,LowerBody.GARGOYLE_2].indexOf(player.lowerBody) <= 0,
				showArmClothing: [Arms.LION,Arms.DISPLACER,Arms.GARGOYLE,Arms.GARGOYLE_2,Arms.YETI,Arms.HINEZUMI].indexOf(player.arms.type) <= 0,
				showLegClothing: [LowerBody.YETI,LowerBody.HOOFED,LowerBody.HARPY,LowerBody.GOO,LowerBody.NAGA,LowerBody.DRIDER,LowerBody.HINEZUMI].indexOf(player.lowerBody) <= 0,
				PlayerHasViewableOutfit: player.isWearingArmor(),

				Antennae     : Antennae,
				Arms         : Arms,
				Beard        : Beard,
				BreastCup    : BreastCup,
				Butt         : Butt,
				Claws        : Claws,
				CockTypesEnum: CockTypesEnum,
				Ears         : Ears,
				Eyes         : Eyes,
				Face         : Face,
				Gender       : Gender,
				Gills        : Gills,
				Hair         : Hair,
				Hips         : Hips,
				Horns        : Horns,
				LowerBody    : LowerBody,
				Neck         : Neck,
				Pattern      : Pattern,
				Piercing     : Piercing,
				RearBody     : RearBody,
				Skin         : Skin,
				Tail         : Tail,
				Tongue       : Tongue,
				UnderBody    : UnderBody,
				Wings        : Wings,
				StatusEffects: StatusEffects,

				// Viewable Clothing lists
				yukiDress: player.armor == game.armors.BLIZZ_K,
				sakuraPetalKimono: player.armor == game.armors.SPKIMO,
				whiteKimono: player.armor == game.armors.WKIMONO,
				blueKimono: player.armor == game.armors.BKIMONO,
				redKimono: player.armor == game.armors.RKIMONO,
				purpleKimono: player.armor == game.armors.PKIMONO,
				blackKimono: player.armor == game.armors.BLKIMONO,
				centaurBlackguardArmor: player.armor == game.armors.CTPALAD,
				centaurPaladinArmor: player.armor == game.armors.CTPALAD,

				// Viewable neck Accessory lists
				blueScarf: player.necklace == game.necklaces.BWSCARF,
				greenScarf: player.necklace == game.necklaces.GWSCARF,
				purpleScarf: player.necklace == game.necklaces.PWSCARF,
				yellowScarf: player.necklace == game.necklaces.YWSCARF,

				// Viewable head Accessory lists
				foxHairpin: player.headJewelry == game.headjewelries.FOXHAIR,
				goldenNagaHairpin: player.headJewelry == game.headjewelries.GNHAIR,
				MachinistGoggles: player.headJewelry == game.headjewelries.MACHGOG,
				SATechGoggle: player.headJewelry == game.headjewelries.SATGOG,
				ScannerGoggle: player.headJewelry == game.headjewelries.SCANGOG,
				//sphinxRegalia: player.headJewelry == game.headjewelries.SphinxAS
				YukiHairpin: player.headJewelry == game.headjewelries.SNOWFH
			}
		]);
		this.charview = charview;
	}
}
}

import classes.BodyParts.Skin;

// Revamp compatibility layer
class Neck {

}
class Pattern {
	public static const NONE:int                    = classes.BodyParts.Skin.PATTERN_NONE;
	public static const MAGICAL_TATTOO:int          = classes.BodyParts.Skin.PATTERN_MAGICAL_TATTOO;
	public static const ORCA_UNDERBODY:int          = classes.BodyParts.Skin.PATTERN_ORCA_UNDERBODY;
	public static const BEE_STRIPES:int             = classes.BodyParts.Skin.PATTERN_BEE_STRIPES;
	public static const TIGER_STRIPES:int           = classes.BodyParts.Skin.PATTERN_TIGER_STRIPES;
	public static const BATTLE_TATTOO:int           = classes.BodyParts.Skin.PATTERN_BATTLE_TATTOO;
	public static const SPOTTED:int                 = classes.BodyParts.Skin.PATTERN_SPOTTED;
	public static const LIGHTNING_SHAPED_TATTOO:int = classes.BodyParts.Skin.PATTERN_LIGHTNING_SHAPED_TATTOO;
	public static const RED_PANDA_UNDERBODY:int     = classes.BodyParts.Skin.PATTERN_RED_PANDA_UNDERBODY;
	public static const SCAR_SHAPED_TATTOO:int      = classes.BodyParts.Skin.PATTERN_SCAR_SHAPED_TATTOO;
	public static const WHITE_BLACK_VEINS:int       = classes.BodyParts.Skin.PATTERN_WHITE_BLACK_VEINS;
}
class UnderBody {

}
