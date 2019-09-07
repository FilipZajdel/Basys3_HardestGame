/*
 * info_screen.c
 *
 *  Created on: Sep 7, 2019
 *      Author: root
 */

#include "screen.h"
#include "../drivers/vga.h"
#include "../drivers/keyboard.h"
#include "../util/ublaze_util.h"
#include "font.h"
#include <stdint.h>

/** @brief Draws the screen to the vga */
void screen_draw(screen_t *screen) {

	for(uint8_t rect_ctr = 0; rect_ctr < screen->rect_number; rect_ctr++) {
		vga_draw_rect(screen->rectangles[rect_ctr].pos_x,
					screen->rectangles[rect_ctr].pos_y,
					screen->rectangles[rect_ctr].dim_x,
					screen->rectangles[rect_ctr].dim_y,
					screen->rectangles[rect_ctr].color);
	}

	for(uint8_t str_ctr = 0; str_ctr < screen->caption_number; str_ctr++) {
		font_write_string(screen->captions[str_ctr].str,
				screen->captions[str_ctr].pos_x,
				screen->captions[str_ctr].pos_y,
				screen->captions[str_ctr].color);
	}
}

void screen_draw_intro() {
	rect_t rectangles[1] = {
			{.color = 0x123, .pos_x = 0, .pos_y = 0, .dim_x = 100, .dim_y = 75},
	};

	caption_t captions[3] = {
			{.str = "welcome to the", .pos_x = 4, .pos_y = 20, .color = 0xf0f},
			{.str = "hardest game", .pos_x = 5, .pos_y = 32, .color = 0xf11},
			{.str = "push enter key", .pos_x = 5, .pos_y = 68, .color = 0x015e}
	};

	screen_t screen={
			.caption_number = 3,
			.captions = captions,
			.rect_number = 1,
			.rectangles = rectangles
	};

	screen_draw(&screen);
}

void screen_draw_diff_chooser(void *diff) {

	rect_t rectangles[4] = {
			{.color = 0x123, .pos_x = 0, .pos_y = 0, .dim_x = 100, .dim_y = 75}, // background
			{.color = 0xFF3, .pos_x = 18, .pos_y = 30, .dim_x = 60, .dim_y = 12},
			{.color = 0x888, .pos_x = 18, .pos_y = 45, .dim_x = 60, .dim_y = 12},
			{.color = 0x888, .pos_x = 18, .pos_y = 60, .dim_x = 60, .dim_y = 12},
	};

	caption_t captions[4] = {
			{.str = "pick difficulty", .pos_x = 2, .pos_y = 10, .color = 0xf0f},
			{.str = "easy", .pos_x = 38, .pos_y = 32, .color = 0x22f},
			{.str = "normal", .pos_x = 32, .pos_y = 47, .color = 0x22f},
			{.str = "insane", .pos_x = 32, .pos_y = 62, .color = 0x22f}
	};

	screen_t screen = {
			.caption_number = 4,
			.captions = captions,
			.rect_number = 4,
			.rectangles = rectangles
	};

	const uint16_t picked_color = 0xFF3;
	const uint16_t not_picked_color = 0x888;
	uint8_t picked_level = 0;

	screen_draw(&screen);

	while(1) {
		keyboard_state_t k_state = keyboard_get_state();

		if(k_state.key_state == PRESSED) {
			if((k_state.key == KEY_W) || (k_state.key == KEY_ARROW_UP)) {
				picked_level = (picked_level+2)%3;
			} else if((k_state.key == KEY_S) || (k_state.key == KEY_ARROW_DOWN)) {
				picked_level = (picked_level+1)%3;
			} else if (k_state.key == KEY_ENTER){
				break;
			}  else {
				continue;
			}

			for(int i=0; i<3; i++) {
				rectangles[i+1].color = (i == picked_level) ? picked_color : not_picked_color;
			}
			screen_draw(&screen);
		}
		ublaze_delay(100);
	}

	*((uint8_t*)diff) = picked_level;
}

void screen_draw_info_controls() {
	rect_t rectangles[5] = {
			{.color = 0x123, .pos_x = 0, .pos_y = 0, .dim_x = 100, .dim_y = 75}, // background
			{.color = 0x888, .pos_x = 10, .pos_y = 50, .dim_x = 15, .dim_y = 15},
			{.color = 0x888, .pos_x = 40, .pos_y = 50, .dim_x = 15, .dim_y = 15},
			{.color = 0x888, .pos_x = 70, .pos_y = 50, .dim_x = 15, .dim_y = 15},
			{.color = 0x888, .pos_x = 40, .pos_y = 25, .dim_x = 15, .dim_y = 15},
	};

	caption_t captions[9] = {
			{.str = "controls", .pos_x = 25, .pos_y = 10, .color = 0xf0f},
			{.str = "w", .pos_x = 45, .pos_y = 30, .color = 0x22f},
			{.str = "s", .pos_x = 46, .pos_y = 55, .color = 0x22f},
			{.str = "a", .pos_x = 15, .pos_y = 55, .color = 0x22f},
			{.str = "d", .pos_x = 75, .pos_y = 55, .color = 0x22f},
			{.str = "up", .pos_x = 43, .pos_y = 42, .color = 0xf0f},
			{.str = "down", .pos_x = 37, .pos_y = 68, .color = 0xf0f},
			{.str = "left", .pos_x = 5, .pos_y = 68, .color = 0xf0f},
			{.str = "right", .pos_x = 65, .pos_y = 68, .color = 0xf0f}
	};

	screen_t screen = {
			.caption_number = 9,
			.captions = captions,
			.rect_number = 5,
			.rectangles = rectangles
	};

	screen_draw(&screen);
}

void screen_draw_defeat_info() {
	rect_t rectangles[1] = {
			{.color = 0x123, .pos_x = 0, .pos_y = 0, .dim_x = 100, .dim_y = 75}, // background
	};

	caption_t captions[3] = {
			{.str = "you lost", .pos_x = 25, .pos_y = 20, .color = 0xf20},
			{.str = "to play again", .pos_x = 10, .pos_y = 65, .color = 0x888},
			{.str = "press enter", .pos_x = 17, .pos_y = 58, .color = 0x888}
	};

	screen_t screen = {
			.caption_number = 3,
			.captions = captions,
			.rect_number = 1,
			.rectangles = rectangles
	};

	screen_draw(&screen);
}

void screen_draw_win_info() {
	rect_t rectangles[1] = {
			{.color = 0x123, .pos_x = 0, .pos_y = 0, .dim_x = 100, .dim_y = 75}, // background
	};

	caption_t captions[4] = {
			{.str = "congratulation", .pos_x = 5, .pos_y = 20, .color = 0x1E3},
			{.str = "you won", .pos_x = 25, .pos_y = 26, .color = 0x1E3},
			{.str = "to play again", .pos_x = 10, .pos_y = 65, .color = 0x888},
			{.str = "press enter", .pos_x = 17, .pos_y = 58, .color = 0x888}
	};

	screen_t screen = {
			.caption_number = 4,
			.captions = captions,
			.rect_number = 1,
			.rectangles = rectangles
	};

	screen_draw(&screen);
}
