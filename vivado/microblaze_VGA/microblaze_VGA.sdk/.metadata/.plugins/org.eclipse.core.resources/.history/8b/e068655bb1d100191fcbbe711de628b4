#ifndef LEVEL_H
#define LEVEL_H

#include <stdint.h>
#include "entity.h"
#include "map.h"

#ifdef __cplusplus
extern "C" {
#endif
/** For now levels are hardcoded in files containted in directory levels */

enum level_states_t { LEVEL_RUNNING, LEVEL_FAILED, LEVEL_DONE };
enum player_move_t { UP, DOWN, LEFT, RIGHT, NONE };


/** Configuration of level */
struct level_config_t {
  uint16_t dim_x, dim_y;
  uint16_t traps_number;
  /** @brief Tables of starting and end points of traps.
   * Tables are supposed to be traps_number length. */
  uint16_t *traps_start_x, *traps_start_y, *traps_end_x, *traps_end_y;
  /** @brief Player start corrdinates */
  uint16_t player_start_x, player_start_y, safe_point_x, safe_point_y;
  /** @brief Tables including coordinates of obstacles */
  uint16_t *obstacles_x;
  uint16_t *obstacles_y;
  uint16_t obstacles_number;
};

struct level_t {
  // public
  enum level_states_t (*get_state)(struct level_t*);
  void (*update)(struct level_t*, enum player_move_t);
  // private
  enum level_states_t _state;
  struct entity_t** _traps;
  struct entity_t** _obstacles;
  struct entity_t* _player;
  struct entity_t* _safe_point;
  struct level_config_t *_config;
  uint8_t _traps_number;
  void (*map_update)(struct level_t*);
  /** Checks for collision between entities. Returns ptr to collided entity, if
   * there is no collision returns NULL*/
  struct entity_t *(*_get_collision)(struct level_t* l);
  /** @brief Updates the map */
  void (*_update_map)(struct level_t *);
  void (*_determine_trap_direction)(struct level_t *l, int *dx, int *dy, int trap_idx);
  void (*_update_player)(struct level_t *l, enum player_move_t move);
};

/** @brief Returns level made based on config provided */
struct level_t* level_make(struct level_config_t*);

/** @brief Removes level */
void level_remove(struct level_t** level);

#ifdef __cplusplus
}
#endif

#endif
