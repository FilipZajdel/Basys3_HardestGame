/*
 * font.h
 *
 *  Created on: Sep 7, 2019
 *      Author: root
 */

#ifndef SRC_SCREEN_FONT_H_
#define SRC_SCREEN_FONT_H_

#include <stdint.h>

/** @brief Writes string to the screen
 *
 * @param str string to write
 * @param x_pos x starting position of string
 * @param y_pos y starging position of string
 */
void font_write_string(const char *str, const uint8_t x_pos, const uint8_t y_pos, uint16_t color);

#endif /* SRC_SCREEN_FONT_H_ */
