package jallegro;

import js.html.AudioElement;

@:native("SAMPLE_OBJECT")	
@:publicFields
extern class SAMPLE_OBJECT {
	function new(element:AudioElement, file:String, volume:Float, ready:Bool, type:String);
	var element(default, null):AudioElement;
	var file(default, null):String;
	var volume(default, null):Float;
	var ready(default, null):Bool;
	var type(default, null):String;
}