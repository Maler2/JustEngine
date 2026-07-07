package options;

#if flash
import flash.text.TextField;
#end
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;

class ExtraOptionsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Extra Options';
		rpcTitle = 'Extra Options Menu'; // for Discord RPC

		// Options Here
		var option:Option = new Option('Icon On The Side', // name
			'If checked, Move The Icon To THe Side', // descryption
			'iconSide', // variable name on ClientPrefs.hx
			'bool'); // data type
		addOption(option);

		var option2:Option = new Option('Underlay Opacity', 
			'Set the transparency level of the black bar behind the strum notes.', 
			'underlayOpacity', 
			INT);
		
		option2.scrollSpeed = 50; 
		option2.minValue = 0;   
		option2.maxValue = 100; 
		option2.changeValue = 10; 
		option2.displayFormat = '%v%'; 
		addOption(option2); 
		super();
	}
}