/*
 * info_screen.h
 *
 *  Created on: Sep 7, 2019
 *      Author: root
 */

#ifndef SRC_SCREEN_SCREEN_H_
#define SRC_SCREEN_SCREEN_H_

#include "screen_builders.h"

/** @brief Draws the screen to the vga */
void screen_draw(screen_t *screen);

void screen_draw_intro();

void screen_draw_diff_chooser(void *diff);

void screen_draw_info_controls();

void screen_draw_defeat_info();

void screen_draw_win_info();


#endif /* SRC_SCREEN_SCREEN_H_ */
