package;

import jallegro.All;
import jallegro.BITMAP_OBJECT;
import jallegro.SAMPLE_OBJECT;

class Main {	
	var man:BITMAP_OBJECT;
	var apple:BITMAP_OBJECT;
	var bg:BITMAP_OBJECT;
	var munch:SAMPLE_OBJECT;
	var apple_x = 200;
	var apple_y = 200;
	var player_x = 100;
	var player_y = 100;
	var score = 0;

	function draw() {
		All.draw_sprite(All.canvas, bg, 0, 0);
		All.draw_sprite(All.canvas, man, player_x, player_y);
		All.draw_sprite(All.canvas, apple, apple_x, apple_y);
		All.textout(All.canvas, All.font, "Score: " + score, 10, 20, 24, All.makecol(255, 255, 255));
	}

	function update() {
		if (All.key[All.KEY_UP]) player_y -= 4;
		if (All.key[All.KEY_DOWN]) player_y += 4;
		if (All.key[All.KEY_LEFT]) player_x -= 4;
		if (All.key[All.KEY_RIGHT]) player_x += 4;
		if (All.distance(player_x, player_y, apple_x, apple_y) < 20) {
			All.play_sample(munch);
			apple_x = All.rand() % (All.SCREEN_W - 32);
			apple_y = All.rand() % (All.SCREEN_H - 32);
			score++;
			All.log("Apple eaten!");
		}
	}
	
	function ready() {
		All.loop(function() {
			update();
			draw();
		}, All.BPS_TO_TIMER(60));
	}

	// constructor, init the assets
	function new() {
		//All.enable_debug('debug');
		All.allegro_init_all("canvas_id", 640, 480);
		man = All.load_bmp("assets/man.png");
		apple = All.load_bmp("assets/apple.png");
		bg = All.load_bmp("assets/grass.jpg");
		munch = All.load_sample("assets/munch.mp3");

		All.ready(ready);
	}
	
	static function main() {
		// hello world example
		//All.allegro_init_all("canvas_id", 640, 480, true, true);
		//All.clear_to_color(All.canvas, All.makecol(255, 255, 255));
		//All.textout_centre(All.canvas, All.font, "Hello World!", All.SCREEN_W / 2, All.SCREEN_H / 2, 24, All.makecol(0, 0, 0));
	
		// exgame by Sos
		new Main();
	}
}