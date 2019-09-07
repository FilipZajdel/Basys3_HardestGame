/*
 * screen_builders.h
 *
 *  Created on: Sep 7, 2019
 *      Author: root
 */

#ifndef SRC_SCREEN_SCREEN_BUILDERS_H_
#define SRC_SCREEN_SCREEN_BUILDERS_H_

#include <stdint.h>

/** @brief Represents string */
typedef struct {
	const char *str;
	uint8_t pos_x;
	uint8_t pos_y;
	uint16_t color;
}caption_t;

/** @brief Represents rectangle */
typedef struct {
	union {
		struct {
			uint8_t pos_y;
			uint8_t pos_x;
			uint8_t dim_x;
			uint8_t dim_y;
		};
		uint32_t coordinates;
	};

	uint16_t color;
}rect_t;

/** @brief Represents single screen */
typedef struct {
	rect_t *rectangles;
	uint8_t rect_number;
	caption_t *captions;
	uint8_t caption_number;
}screen_t;


#endif /* SRC_SCREEN_SCREEN_BUILDERS_H_ */
