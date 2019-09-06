#include <stdlib.h>
#include <stdint.h>

#include "HardestGame/config.h"
#include "HardestGame/game.h"

#include "drivers/keyboard.h"
#include "drivers/vga.h"

#include "util/ublaze_util.h"
#include "game_view/game_view.h"

int main() {
	static struct game_t *game = (struct game_t*)0xDEAD;
	struct map_field_t **map = NULL;
	int map_x=0, map_y=0;
	enum player_move_t player_move = NONE;

	game = game_make();
	game->init(game);
	game->update(game, NONE);
	map = game->get_map(game, &map_x, &map_y);
	game->update(game, NONE);

	while(1){
		vga_clean();
		game_view_draw(map, map_x, map_y);
		ublaze_delay(50);

		if(keyboard_get_state().key_state == PRESSED) {
			switch(keyboard_get_state().key){
				case KEY_W:
					player_move = UP;
					break;
				case KEY_S:
					player_move = DOWN;
					break;
				case KEY_A:
					player_move = LEFT;
					break;
				case KEY_D:
					player_move = RIGHT;
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
			break;
		case GAME_OVER:
			game->reset(game);
		case LEVEL_CHANGED:
			game->update(game, NONE);
			map = game->get_map(game, &map_x, &map_y);
			break;
		default:
			break;
		}

		game->update(game, player_move);
		ublaze_delay(100);
	}
}




