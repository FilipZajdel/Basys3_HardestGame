#include <stdlib.h>
#include <stdint.h>

#include "HardestGame/config.h"
#include "HardestGame/game.h"

#include "drivers/keyboard.h"
#include "drivers/vga.h"

#include "util/ublaze_util.h"
#include "game_view/game_view.h"

#include "screen/font.h"
#include "screen/screen.h"

typedef enum {
	EASY = 0,
	NORMAL = 1,
	INSANE = 2
}game_diff_t;

int main() {
	enum program_states {
		PROGRAM_INIT,
		PROGRAM_OVER,
		PROGRAM_WON,
		PROGRAM_RUNNING,
	}program_state = PROGRAM_INIT;

	static struct game_t *game = (struct game_t*)0xDEAD;
	struct map_field_t **map = NULL;
	int map_x=0, map_y=0;
	enum player_move_t player_move = NONE;
	game_diff_t difficulty_level = EASY;

	while(1) {

		switch(program_state){
		case PROGRAM_INIT:
			game = game_make();
			game->init(game);
			game->update(game, NONE);
			map = game->get_map(game, &map_x, &map_y);
			game->update(game, NONE);

			ublaze_delay(1000);
			screen_draw_intro();
			ublaze_delay(1000);
			keyboard_wait_key(KEY_ENTER);
			ublaze_delay(700);

			screen_draw_diff_chooser(&difficulty_level);
			game->set_player_speed(game, difficulty_level == EASY ? 2 : 1);

			ublaze_delay(1000);
			screen_draw_info_controls();
			ublaze_delay(2500);
			keyboard_wait_key(KEY_ENTER);

			program_state = PROGRAM_RUNNING;
			break;

		case PROGRAM_RUNNING:
			program_state = PROGRAM_RUNNING;
			vga_clean();
			game_view_draw(map, map_x, map_y);
			ublaze_delay(50);

			if(keyboard_get_state().key_state == PRESSED) {
				switch(keyboard_get_state().key){
					case KEY_W:
						player_move = (difficulty_level != INSANE) ?
										UP : DOWN;
						break;
					case KEY_S:
						player_move = (difficulty_level != INSANE) ?
										DOWN : UP;
						break;
					case KEY_A:
						player_move = (difficulty_level != INSANE) ?
										LEFT : RIGHT;
						break;
					case KEY_D:
						player_move = (difficulty_level != INSANE) ?
										RIGHT : LEFT;
						break;
					default:
						player_move = NONE;
						break;
				}
			} else {
				player_move = NONE;
			}
			switch(game->get_state(game)) {
				case RUNNING:
					game->update(game, player_move);
					break;
				case GAME_OVER:
					program_state = PROGRAM_OVER;
					break;
				case LEVEL_CHANGED:
					game->update(game, NONE);
					map = game->get_map(game, &map_x, &map_y);
					break;
				case GAME_DONE:
					program_state = PROGRAM_WON;
					break;
				default:
					break;
			}
			ublaze_delay(100);
			break;
		case PROGRAM_WON:
			screen_draw_win_info();
			ublaze_delay(1500);
			keyboard_wait_key(KEY_ENTER);
			game_remove(&game);
			program_state = PROGRAM_INIT;
			break;
		case PROGRAM_OVER:
			screen_draw_defeat_info();
			ublaze_delay(1500);
			keyboard_wait_key(KEY_ENTER);
			game_remove(&game);
			program_state = PROGRAM_INIT;
			break;
		default:
			break;
		}
	}
}




