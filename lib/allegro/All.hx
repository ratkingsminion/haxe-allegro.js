package allegro;

import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;

// jAllegro was made by Sos Sosowski
// https://github.com/TheSos/jallegro

@:native("window")
@:publicFields
extern class All {
	// CONFIGURATION ROUTINES
	static function install_allegro():Void;
	static function allegro_init():Void;
	static function allegro_init_all(id:String, w:Int, h:Int, ?menu:Bool, ?enable_keys:Bool):Void;
	
	// MOUSE ROUTINES
	static var mouse_b(default, null):Int;
	static var mouse_pressed(default, null):Int;
	static var mouse_released(default, null):Int;
	static var mouse_x(default, null):Int;
	static var mouse_y(default, null):Int;
	static var mouse_z(default, null):Int;
	static var mouse_mx(default, null):Int;
	static var mouse_my(default, null):Int;
	static var mouse_mz(default, null):Int;
	static function install_mouse(?menu:Bool):Int;
	static function remove_mouse():Int;
	static function show_mouse():Int;
	static function hide_mouse():Int;
	
	// TIMER ROUTINES
	static function SECS_TO_TIMER(secs:Float):Float;
	static function MSEC_TO_TIMER(msecs:Int):Int;
	static function BPS_TO_TIMER(bps:Float):Float;
	static function BPM_TO_TIMER(bpm:Int):Float;
	static function install_timer():Void;
	static function time():Int;
	static function install_int(procedure:Void->Void, msec:Int):Void;
	static function install_int_ex(procedure:Void->Void, speed:Float):Void;
	static function loop(procedure:Void->Void, speed:Float):Void;
	static function loading_bar(progress:Float):Void;
	static function ready(procedure:Void->Void, ?bar:Float->Void):Void;
	static function remove_int(procedure:Void->Void):Void;
	static function remove_all_ints():Void;
	
	// KEYBOARD ROUTINES
	static var KEY_A(default, null):Int;
	static var KEY_B(default, null):Int;
	static var KEY_C(default, null):Int;
	static var KEY_D(default, null):Int;
	static var KEY_E(default, null):Int;
	static var KEY_F(default, null):Int;
	static var KEY_G(default, null):Int;
	static var KEY_H(default, null):Int;
	static var KEY_I(default, null):Int;
	static var KEY_J(default, null):Int;
	static var KEY_K(default, null):Int;
	static var KEY_L(default, null):Int;
	static var KEY_M(default, null):Int;
	static var KEY_N(default, null):Int;
	static var KEY_O(default, null):Int;
	static var KEY_P(default, null):Int;
	static var KEY_Q(default, null):Int;
	static var KEY_R(default, null):Int;
	static var KEY_S(default, null):Int;
	static var KEY_T(default, null):Int;
	static var KEY_U(default, null):Int;
	static var KEY_V(default, null):Int;
	static var KEY_W(default, null):Int;
	static var KEY_X(default, null):Int;
	static var KEY_Y(default, null):Int;
	static var KEY_Z(default, null):Int;
	static var KEY_0(default, null):Int;
	static var KEY_1(default, null):Int;
	static var KEY_2(default, null):Int;
	static var KEY_3(default, null):Int;
	static var KEY_4(default, null):Int;
	static var KEY_5(default, null):Int;
	static var KEY_6(default, null):Int;
	static var KEY_7(default, null):Int;
	static var KEY_8(default, null):Int;
	static var KEY_9(default, null):Int;
	static var KEY_0_PAD(default, null):Int;
	static var KEY_1_PAD(default, null):Int;
	static var KEY_2_PAD(default, null):Int;
	static var KEY_3_PAD(default, null):Int;
	static var KEY_4_PAD(default, null):Int;
	static var KEY_5_PAD(default, null):Int;
	static var KEY_6_PAD(default, null):Int;
	static var KEY_7_PAD(default, null):Int;
	static var KEY_8_PAD(default, null):Int;
	static var KEY_9_PAD(default, null):Int;
	static var KEY_F1(default, null):Int;
	static var KEY_ESC(default, null):Int;
	static var KEY_TILDE(default, null):Int;
	static var KEY_MINUS(default, null):Int;
	static var KEY_EQUALS(default, null):Int;
	static var KEY_BACKSPACE(default, null):Int;
	static var KEY_TAB(default, null):Int;
	static var KEY_OPENBRACE(default, null):Int;
	static var KEY_CLOSEBRACE(default, null):Int;
	static var KEY_ENTER(default, null):Int;
	static var KEY_COLON(default, null):Int;
	static var KEY_QUOTE(default, null):Int;
	static var KEY_BACKSLASH(default, null):Int;
	static var KEY_COMMA(default, null):Int;
	static var KEY_STOP(default, null):Int;
	static var KEY_SLASH(default, null):Int;
	static var KEY_SPACE(default, null):Int;
	static var KEY_INSERT(default, null):Int;
	static var KEY_DEL(default, null):Int;
	static var KEY_HOME(default, null):Int;
	static var KEY_END(default, null):Int;
	static var KEY_PGUP(default, null):Int;
	static var KEY_PGDN(default, null):Int;
	static var KEY_LEFT(default, null):Int;
	static var KEY_RIGHT(default, null):Int;
	static var KEY_UP(default, null):Int;
	static var KEY_DOWN(default, null):Int;
	static var KEY_SLASH_PAD(default, null):Int;
	static var KEY_ASTERISK(default, null):Int;
	static var KEY_MINUS_PAD(default, null):Int;
	static var KEY_PLUS_PAD(default, null):Int;
	static var KEY_ENTER_PAD(default, null):Int;
	static var KEY_PRTSCR(default, null):Int;
	static var KEY_PAUSE(default, null):Int;
	static var KEY_EQUALS_PAD(default, null):Int;
	static var KEY_LSHIFT(default, null):Int;
	static var KEY_RSHIFT(default, null):Int;
	static var KEY_LCONTROL(default, null):Int;
	static var KEY_RCONTROL(default, null):Int;
	static var KEY_ALT(default, null):Int;
	static var KEY_ALTGR(default, null):Int;
	static var KEY_LWIN(default, null):Int;
	static var KEY_RWIN(default, null):Int;
	static var KEY_MENU(default, null):Int;
	static var KEY_SCRLOCK(default, null):Int;
	static var KEY_NUMLOCK(default, null):Int;
	static var KEY_CAPSLOCK(default, null):Int;
	static var key(default, null):Array<Bool>;
	static var pressed(default, null):Array<Bool>;
	static var released(default, null):Array<Bool>;
	static function install_keyboard(?enable_keys:Bool):Int;
	static function remove_keyboard():Int;
	
	// JOYSTICK ROUTINES

	// SENSOR ROUTINES

	// TOUCH ROUTINES
	
	// BITMAP OBJECTS
	static function create_bitmap(width:Int, height:Int):BITMAP_OBJECT;
	static function load_bitmap(filename:String):BITMAP_OBJECT;
	static function load_bmp(filename:String):BITMAP_OBJECT;
	
	// GRAPHICS MODES
	static var canvas(default, null):BITMAP_OBJECT;
	static var SCREEN_W(default, null):Int;
	static var SCREEN_H(default, null):Int;
	static var font(default, null):FONT_OBJECT;
	static function set_gfx_mode(canvas:String, width:Int, height:Int):Int;
	
	// DRAWING PRIMITIVES
	static var PI(default, null):Float;
	static var PI2(default, null):Float;
	static var PI_2(default, null):Float;
	static var PI_3(default, null):Float;
	static var PI_4(default, null):Float;
	static function RAD(d:Float):Float;
	static function DEG(d:Float):Float;
	static function makecol(r:Int, g:Int, b:Int, ?a:Int):Int;
	static function makecolf(r:Float, g:Float, b:Float, ?a:Float):Int;
	static function getr(colour:Int):Int;
	static function getg(colour:Int):Int;
	static function getb(colour:Int):Int;
	static function geta(colour:Int):Int;
	static function getrf(colour:Int):Float;
	static function getgf(colour:Int):Float;
	static function getbf(colour:Int):Float;
	static function getaf(colour:Int):Float;
	static function getpixel(bitmap:BITMAP_OBJECT, x:Int, y:Int):Int;
	static function putpixel(bitmap:BITMAP_OBJECT, x:Int, y:Int, colour:Int):Void;
	static function clear_bitmap(bitmap:BITMAP_OBJECT):Void;
	static function clear_to_color(bitmap:BITMAP_OBJECT, colour:Int):Void;
	static function line(bitmap:BITMAP_OBJECT, x1:Float, y1:Float, x2:Float, y2:Float, colour:Int, width:Float):Void;
	static function vline(bitmap:BITMAP_OBJECT, x:Float, y1:Float, y2:Float, colour:Int, width:Float):Void;
	static function hline(bitmap:BITMAP_OBJECT, x1:Float, y:Float, x2:Float, colour:Int, width:Float):Void;
	static function triangle(bitmap:BITMAP_OBJECT, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, colour:Int, width:Float):Void;
	static function trianglefill(bitmap:BITMAP_OBJECT, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, colour:Int):Void;
	static function polygon(bitmap:BITMAP_OBJECT, vertices:Int, points:Array<Float>, colour:Int, width:Float):Void;
	static function polygonfill(bitmap:BITMAP_OBJECT, vertices:Int, points:Array<Float>, colour:Int):Void;
	static function rect(bitmap:BITMAP_OBJECT, x1:Float, y1:Float, x2:Float, y2:Float, colour:Int, width:Float):Void;
	static function rectfill(bitmap:BITMAP_OBJECT, x1:Float, y1:Float, x2:Float, y2:Float, colour:Int):Void;
	static function circle(bitmap:BITMAP_OBJECT, x:Float, y:Float, radius:Float, colour:Int, width:Float):Void;
	static function circlefill(bitmap:BITMAP_OBJECT, x:Float, y:Float, radius:Float, colour:Int):Void;
	static function arc(bitmap:BITMAP_OBJECT, x:Float, y:Float, ang1:Float, ang2:Float, colour:Int, r:Float, width:Float):Void;
	static function arcfill(bitmap:BITMAP_OBJECT, x:Float, y:Float, ang1:Float, ang2:Float, colour:Int, r:Float):Void;
	
	// BLITTING AND SPRITES
	static function draw_sprite(bmp:BITMAP_OBJECT, sprite:BITMAP_OBJECT, x:Float, y:Float):Void;
	static function stretch_sprite(bmp:BITMAP_OBJECT, sprite:BITMAP_OBJECT, x:Float, y:Float, w:Float, h:Float):Void;
	static function rotate_sprite(bmp:BITMAP_OBJECT, sprite:BITMAP_OBJECT, x:Float, y:Float, angle:Float):Void;
	static function pivot_sprite(bmp:BITMAP_OBJECT, sprite:BITMAP_OBJECT, x:Float, y:Float, cx:Float, cy:Float, angle:Float):Void;
	static function rotate_scaled_sprite(bmp:BITMAP_OBJECT, sprite:BITMAP_OBJECT, x:Float, y:Float, angle:Float, scale:Float):Void;
	static function pivot_scaled_sprite(bmp:BITMAP_OBJECT, sprite:BITMAP_OBJECT, x:Float, y:Int, cx:Float, cy:Float, angle:Float, scale:Float):Void;
	static function blit(source:BITMAP_OBJECT, dest:BITMAP_OBJECT, sx:Int, sy:Int, dx:Int, dy:Int, w:Int, h:Int):Void;
	static function stretch_blit(source:BITMAP_OBJECT, dest:BITMAP_OBJECT, sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int):Void;
	
	// TEXT OUTPUT
	static function load_font(filename:String):FONT_OBJECT;
	static function create_font(family:String):FONT_OBJECT;
	static function textout(bitmap:BITMAP_OBJECT, f:FONT_OBJECT, s:String, x:Float, y:Float, size:Float, colour:Int, ?outline:Int, ?width:Float):Void;
	static function textout_centre(bitmap:BITMAP_OBJECT, f:FONT_OBJECT, s:String, x:Float, y:Float, size:Float, colour:Int, ?outline:Int, ?width:Float):Void;
	static function textout_right(bitmap:BITMAP_OBJECT, f:FONT_OBJECT, s:String, x:Float, y:Float, size:Float, colour:Int, ?outline:Int, ?width:Float):Void;

	// SOUND ROUTINES
	static function install_sound():Void;
	static function set_volume(volume:Float):Void;
	static function get_volume():Float;
	static function load_sample(filename:String):SAMPLE_OBJECT;
	static function destroy_sample(filename:String):Void;
	static function play_sample(sample:SAMPLE_OBJECT, ?vol:Float, ?freq:Float, ?loop:Bool):Void;
	static function adjust_sample(sample:SAMPLE_OBJECT, vol:Float, freq:Float, loop:Bool):Void;
	static function stop_sample(sample:SAMPLE_OBJECT):Void;
	static function pause_sample(sample:SAMPLE_OBJECT):Void;
	
	// HELPER MATH FUNCTIONS
	static function rand():Int;
	static function rand32():Int;
	static function frand():Float;
	static function abs(a:Float):Float;
	static function length(x:Float, y:Float):Float;
	static function distance(x1:Float, y1:Float, x2:Float, y2:Float):Float;
	static function distance2(x1:Float, y1:Float, x2:Float, y2:Float):Float;
	static function linedist(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Float;
	static function lerp(from:Float, to:Float, progress:Float):Float;
	static function dot(x1:Float, y1:Float, x2:Float, y2:Float):Float;
	static function sgn(a:Float):Float;
	static function angle(x1:Float, y1:Float, x2:Float, y2:Float):Float;
	static function anglediff(a:Float, b:Float):Float;
	static function clamp(value:Float, min:Float, max:Float):Float;
	static function scale(value:Float, min:Float, max:Float, min2:Float, max2:Float):Float;
	static function scaleclamp(value:Float, min:Float, max:Float, min2:Float, max2:Float):Float;
	
	// DEBUG FUNCTIONS
	static var ALLEGRO_CONSOLE(default, default):Bool;
	static function enable_debug(id:String):Void;
	static function log(string:String):Void;
	static function wipe_log():Void;
}