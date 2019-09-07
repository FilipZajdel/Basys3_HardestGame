/*
 * font.c
 *
 *  Created on: Sep 7, 2019
 *      Author: root
 */

#include <stdint.h>
#include <stdlib.h>

#include "../drivers/vga.h"

#include "font.h"

#define LETTERS_NUMBER (26)
#define LETTER_WIDTH (6)

void write_a(uint8_t x, uint8_t y,uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);
	vga_draw(x+3, y, color);

	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+3, y+1, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+3, y+3, color);
	vga_draw(x+3, y+4, color);

	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+2, color);
}
void write_s(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);

	vga_draw(x, y+2, color);
	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+2, color);

	vga_draw(x, y+4, color);
	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);

	vga_draw(x, y+1, color);
	vga_draw(x+2, y+3, color);
}

void write_z(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);
	vga_draw(x+3, y, color);

	vga_draw(x, y+4, color);
	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);
	vga_draw(x+3, y+4, color);

	vga_draw(x+3, y+1, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+1, y+3, color);
}

void write_o(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);
	vga_draw(x+3, y, color);

	vga_draw(x, y+4, color);
	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);
	vga_draw(x+3, y+4, color);

	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);

	vga_draw(x+3, y+1, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+3, y+3, color);
}

void write_u(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x+3, y, color);

	vga_draw(x, y+4, color);
	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);
	vga_draw(x+3, y+4, color);

	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);

	vga_draw(x+3, y+1, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+3, y+3, color);
}

void write_e(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);
	vga_draw(x+3, y, color);

	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+3, y+2, color);

	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);
	vga_draw(x+3, y+4, color);
}
void write_f(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);

	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+2, color);
}

void write_i(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x+2, y, color);
	vga_draw(x+2, y+1, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+2, y+3, color);
	vga_draw(x+2, y+4, color);

	vga_draw(x+1, y, color);
	vga_draw(x+3, y, color);
	vga_draw(x+1, y+4, color);
	vga_draw(x+3, y+4, color);
}

void write_j(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x+3, y, color);
	vga_draw(x+3, y+1, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+3, y+3, color);
	vga_draw(x+2, y+4, color);
	vga_draw(x+1, y+3, color);
}

void write_k(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+1, color);
	vga_draw(x+3, y, color);
	vga_draw(x+2, y+3, color);
	vga_draw(x+3, y+4, color);
}

void write_r(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);
	vga_draw(x+3, y, color);

	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+3, y+2, color);

	vga_draw(x+3, y+1, color);

	vga_draw(x+2, y+3, color);
	vga_draw(x+3, y+4, color);
}

void write_p(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);
	vga_draw(x+3, y, color);

	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+3, y+2, color);

	vga_draw(x+3, y+1, color);
}

void write_d(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+3, y+1, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+3, y+3, color);

	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);
	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);
}
void write_n(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+3, y, color);
	vga_draw(x+3, y+1, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+3, y+3, color);
	vga_draw(x+3, y+4, color);

	vga_draw(x+1, y+1, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+3, y+3, color);
}
void write_m(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+4, y, color);
	vga_draw(x+4, y+1, color);
	vga_draw(x+4, y+2, color);
	vga_draw(x+4, y+3, color);
	vga_draw(x+4, y+4, color);

	vga_draw(x+1, y+1, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+3, y+1, color);
}
void write_y(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x+2, y+2, color);
	vga_draw(x+2, y+3, color);
	vga_draw(x+2, y+4, color);

	vga_draw(x, y, color);
	vga_draw(x+1, y+1, color);
	vga_draw(x+3, y+1, color);
	vga_draw(x+4, y, color);
}

void write_x(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x+2, y+2, color);

	vga_draw(x, y, color);
	vga_draw(x+1, y+1, color);
	vga_draw(x+3, y+1, color);
	vga_draw(x+4, y, color);

	vga_draw(x, y+4, color);
	vga_draw(x+1, y+3, color);
	vga_draw(x+3, y+3, color);
	vga_draw(x+4, y+4, color);

}

void write_h(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x+3, y, color);

	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+3, y+1, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+3, y+3, color);
	vga_draw(x+3, y+4, color);

	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+2, color);
}

void write_l(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);
	vga_draw(x+3, y+4, color);
}

void write_w(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+4, y, color);
	vga_draw(x+4, y+1, color);
	vga_draw(x+4, y+2, color);
	vga_draw(x+4, y+3, color);
	vga_draw(x+4, y+4, color);

	vga_draw(x+1, y+3, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+3, y+3, color);
}

void write_t(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);

	vga_draw(x+1, y+1, color);
	vga_draw(x+1, y+2, color);
	vga_draw(x+1, y+3, color);
	vga_draw(x+1, y+4, color);
}

void write_g(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);

	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);

	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);

	vga_draw(x+3, y+3, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+2, y+2, color);
}

void write_c(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);

	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);

	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);

	vga_draw(x+3, y+3, color);
	vga_draw(x+3, y+1, color);
}

void write_b(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);
	vga_draw(x, y+4, color);

	vga_draw(x+3, y+1, color);
	vga_draw(x+3, y+2, color);
	vga_draw(x+3, y+3, color);

	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);
	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);

	vga_draw(x+1, y+2, color);
	vga_draw(x+2, y+2, color);
}

void write_q(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x+1, y, color);
	vga_draw(x+2, y, color);

	vga_draw(x, y+4, color);
	vga_draw(x+1, y+4, color);
	vga_draw(x+2, y+4, color);

	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);
	vga_draw(x, y+3, color);

	vga_draw(x+2, y+1, color);
	vga_draw(x+2, y+2, color);
	vga_draw(x+2, y+3, color);

	vga_draw(x+3, y+4, color);
}

void write_v(uint8_t x, uint8_t y, uint16_t color) {
	vga_draw(x, y, color);
	vga_draw(x, y+1, color);
	vga_draw(x, y+2, color);

	vga_draw(x+4, y, color);
	vga_draw(x+4, y+1, color);
	vga_draw(x+4, y+2, color);

	vga_draw(x+1, y+3, color);
	vga_draw(x+3, y+3, color);
	vga_draw(x+2, y+4, color);
}

void write_space(uint8_t x, uint8_t y, uint16_t color) {
; // do nothing, basically
}


typedef struct {
	char c;
	void (*write)(uint8_t x, uint8_t y, uint16_t color);
}letter_writer_t;

letter_writer_t letter_writers[] = {
		{'a', write_a},
		{'b', write_b},
		{'c', write_c},
		{'d', write_d},
		{'e', write_e},
		{'f', write_f},
		{'g', write_g},
		{'h', write_h},
		{'i', write_i},
		{'j', write_j},
		{'k', write_k},
		{'l', write_l},
		{'m', write_m},
		{'n', write_n},
		{'o', write_o},
		{'p', write_p},
		{'q', write_q},
		{'r', write_r},
		{'s', write_s},
		{'t', write_t},
		{'u', write_u},
		{'v', write_v},
		{'w', write_w},
		{'x', write_x},
		{'y', write_y},
		{'z', write_z},
		{' ', write_space},
};


void write_letter(char letter, uint8_t x, uint8_t y, uint16_t color) {

	for(uint8_t i=0; i<LETTERS_NUMBER; i++) {
		if(letter == letter_writers[i].c) {
			letter_writers[i].write(x, y, color);
		}
	}
}

void font_write_string(const char *str, const uint8_t x_pos, const uint8_t y_pos,
		uint16_t color){
	uint8_t x = x_pos;

	for(char *c = str; (*c) != NULL; c++) {

		write_letter(*c, x, y_pos, color);
		x += LETTER_WIDTH;
	}
}

