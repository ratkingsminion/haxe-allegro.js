(function (console) { "use strict";
var Main = function() {
	this.score = 0;
	this.player_y = 100;
	this.player_x = 100;
	this.apple_y = 200;
	this.apple_x = 200;
	window.allegro_init_all("canvas_id",640,480);
	this.man = window.load_bmp("assets/man.png");
	this.apple = window.load_bmp("assets/apple.png");
	this.bg = window.load_bmp("assets/grass.jpg");
	this.munch = window.load_sample("assets/munch.mp3");
	window.ready($bind(this,this.ready));
};
Main.main = function() {
	new Main();
};
Main.prototype = {
	draw: function() {
		window.draw_sprite(window.canvas,this.bg,this.bg.w / 2,this.bg.h / 2);
		window.draw_sprite(window.canvas,this.man,this.player_x,this.player_y);
		window.draw_sprite(window.canvas,this.apple,this.apple_x,this.apple_y);
		window.textout(window.canvas,window.font,"Score: " + this.score,10,30,24,window.makecol(255,255,255));
	}
	,update: function() {
		if(window.key[window.KEY_W] || window.key[window.KEY_UP]) this.player_y -= 4;
		if(window.key[window.KEY_S] || window.key[window.KEY_DOWN]) this.player_y += 4;
		if(window.key[window.KEY_A] || window.key[window.KEY_LEFT]) this.player_x -= 4;
		if(window.key[window.KEY_D] || window.key[window.KEY_RIGHT]) this.player_x += 4;
		if(window.distance(this.player_x,this.player_y,this.apple_x,this.apple_y) < 20) {
			window.play_sample(this.munch);
			this.apple_x = window.rand() % (window.SCREEN_W - 32);
			this.apple_y = window.rand() % (window.SCREEN_H - 32);
			this.score++;
			window.log("Apple eaten!");
		}
	}
	,ready: function() {
		var _g = this;
		window.loop(function() {
			_g.update();
			_g.draw();
		},window.BPS_TO_TIMER(60));
	}
};
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
