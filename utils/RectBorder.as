import mx.core.ext.UIObjectExtensions;

class utils.RectBorder extends mx.skins.RectBorder {
	static var symbolName:String = "RectBorder";
	static var symbolOwner:Object = RectBorder;
	var className:String = "RectBorder";

	// All of these borders have the same size edges, 1 pixel.
	var offset:Number = 8;

	function init(Void):Void {
		super.init();
	}

	function drawBorder(Void):Void {
		// The graphics are on the symbol's timeline,
		// so all you need to do here is size the border.
		var w = __width - 8;
		var h = __height;
		
		_width = w;
		_height = h;
		_xscale = 100;
		_yscale = 100;
		
		var contents = this["contents"];
		contents._width = w;
		contents._height = h;
		contents._xscale = 100;
		contents._yscale = 100;
		contents.update(w, h);
/*
		var ml = this.attachMovie("middle_left", "middle_left", this.getNextHighestDepth());
		ml._height = __height - 16;
		ml._width = 8;
		ml._y = 8;
		ml._x = 0;
		
		var mr = this.attachMovie("middle_right", "middle_right", this.getNextHighestDepth());
		mr._height = __height - 16;
		mr._width = 8;
		mr._y = 8;
		mr._x = __width - mr._width;
*/
	}

	// Register the class as the RectBorder for all components to use.
	static function classConstruct():Boolean {
		UIObjectExtensions.Extensions();
		_global.styles.rectBorderClass = RectBorder;
		_global.skinRegistry["RectBorder"] = true;
		return true;
	}
	static var classConstructed:Boolean = classConstruct();
	static var UIObjectExtensionsDependency = UIObjectExtensions;
}