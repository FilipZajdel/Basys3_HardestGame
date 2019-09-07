/*
 * keyboard.h
 *
 *  Created on: Sep 5, 2019
 *      Author: root
 */

#ifndef SRC_KEYBOARD_H_
#define SRC_KEYBOARD_H_

#include <stdint.h>

#include "../util/errors.h"

#define PS2_ADDR (0x44A10000)
#define PS2_MAGIC_CODE (0xDEADFADE)

/** @brief Key corresponds with PS2 codes */
typedef enum {
	KEY_ARROW_UP = 0x75,	// ignorning prefix e0
	KEY_ARROW_DOWN = 0x72,  // ignorning prefix e0
	KEY_ARROW_RIGHT = 0x74, // ignorning prefix e0
	KEY_ARROW_LEFT = 0x6b, // ignorning prefix e0
	KEY_ENTER = 0x5a, // ignorning prefix e0
	KEY_R = 0x2d,
	KEY_W = 0x1d,
	KEY_S = 0x1b,
	KEY_A = 0x1c,
	KEY_D = 0x23
}keyboard_key_t;

typedef enum {
	PRESSED,
	RELEASED
}key_state_t;

typedef struct {
	key_state_t key_state;
	keyboard_key_t key;
}keyboard_state_t;

/** @brief Initializes keyboard
 *
 * @return OK, on right initialization
 * 		   ERR, on initialization problem
 */
status_code_t keyboard_init();

/** @brief Checks for new keys pressed
 *
 * @return current state of the keyboard
 */
const keyboard_state_t keyboard_get_state();

void keyboard_wait_key(keyboard_key_t);

#endif /* SRC_KEYBOARD_H_ */
