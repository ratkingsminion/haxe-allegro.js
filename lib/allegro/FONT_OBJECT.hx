package allegro;

import js.html.Element; // correct?

@:native("FONT_OBJECT")	
@:publicFields
extern class FONT_OBJECT extends OBJECT {
	function new(element:Element, file:String, name:String, type:String);
	var element(default, null):Element;
	var file(default, null):String;
	var name(default, null):String;
}