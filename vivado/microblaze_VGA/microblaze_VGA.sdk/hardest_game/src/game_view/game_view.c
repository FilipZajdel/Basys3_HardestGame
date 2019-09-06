#include "game_view.h"

#include "../drivers/vga.h"
#include "../HardestGame/game.h"

#define MICROBLAZE
#include "../HardestGame/config.h"

#define PLAYER_COLOR (0xF0F)
#define OBSTACLE_COLOR (0x353)
#define TRAP_COLOR (0xF00)
#define SAFE_POINT_COLOR (0x0F0)

void game_view_draw(struct map_field_t **map, const int map_x, const int map_y){
	for(uint16_t y=0; y<map_y; y++){
		for(uint16_t x=0; x<map_x; x++){
			switch(map[x][y].type) {
				case PLAYER:
					vga_draw_rect(x, y, RECTANGLE_WIDTH, RECTANGLE_HEIGHT, PLAYER_COLOR);
					break;
				case TRAP:
					vga_draw_rect(x, y, RECTANGLE_WIDTH, RECTANGLE_HEIGHT, TRAP_COLOR);
					break;
				case OBSTACLE:
					vga_draw_rect(x, y, RECTANGLE_WIDTH, RECTANGLE_HEIGHT, OBSTACLE_COLOR);
					break;
				case SAFE_POINT:
					vga_draw_rect(x, y, RECTANGLE_WIDTH, RECTANGLE_HEIGHT, SAFE_POINT_COLOR);
					break;
				default:
					break;
			}
		}
	}
}
