package allegro;

import js.html.CanvasRenderingContext2D;

@:native("BITMAP_OBJECT")	
@:publicFields
extern class BITMAP_OBJECT extends OBJECT {
	function new(w:Int, h:Int, canvas:BITMAP_OBJECT, context:CanvasRenderingContext2D, ready:Bool, type:String);
	var w(default, null):Int;
	var h(default, null):Int;
	var canvas(default, null):BITMAP_OBJECT;
	var context(default, null):CanvasRenderingContext2D;
	var ready(default, null):Bool;
}