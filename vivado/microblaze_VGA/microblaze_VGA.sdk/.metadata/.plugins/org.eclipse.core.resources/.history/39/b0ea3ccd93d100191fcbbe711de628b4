#include "level.h"
#include "config.h"

#include <stdlib.h>

enum level_states_t level_get_state(struct level_t* l) {
  return l->_state;
}

void determine_trap_direction(struct level_t* l,
                              int* dx,
                              int* dy,
                              int trap_idx) {
  struct entity_t* trap = l->_traps[trap_idx];

  if (l->_config->traps_start_y[trap_idx] ==
      l->_config->traps_end_y[trap_idx]) {
    *dy = 0;
    if (l->_config->traps_start_x[trap_idx] <
        l->_config->traps_end_x[trap_idx]) {
      *dx = TRAPS_VELOCITY_1;
    } else {
      *dx = -TRAPS_VELOCITY_1;
    }

    if (trap->get_x(trap) == l->_config->traps_end_x[trap_idx]) {
      // then swap values
      uint16_t temp = l->_config->traps_end_x[trap_idx];
      l->_config->traps_end_x[trap_idx] = l->_config->traps_start_x[trap_idx];
      l->_config->traps_start_x[trap_idx] = temp;
    }
  } else if (l->_config->traps_start_x[trap_idx] ==
             l->_config->traps_end_x[trap_idx]) {
    *dx = 0;
    if (l->_config->traps_start_y[trap_idx] <
        l->_config->traps_end_y[trap_idx]) {
      *dy = TRAPS_VELOCITY_1;
    } else {
      *dy = -TRAPS_VELOCITY_1;
    }

    if (trap->get_y(trap) == l->_config->traps_end_y[trap_idx]) {
      // then swap values
      uint16_t temp = l->_config->traps_end_y[trap_idx];
      l->_config->traps_end_y[trap_idx] = l->_config->traps_start_y[trap_idx];
      l->_config->traps_start_y[trap_idx] = temp;
    }
  }
}

void update_traps(struct level_t* l) {
  for (int trap_idx = 0; trap_idx < l->_traps_number; trap_idx++) {
    int dx = 0;
    int dy = 0;

    l->_determine_trap_direction(l, &dx, &dy, trap_idx);
    l->_traps[trap_idx]->move(l->_traps[trap_idx], dx, dy);
  }
}

void update_player_helper(struct entity_t* player, enum player_move_t move) {
  int delta_x = 0;
  int delta_y = 0;

  switch (move) {
    case LEFT:
      delta_x -= PLAYER_VELOCITY;
      break;
    case RIGHT:
      delta_x += PLAYER_VELOCITY;
      break;
    case UP:
      delta_y -= PLAYER_VELOCITY;
      break;
    case DOWN:
      delta_y += PLAYER_VELOCITY;
      break;
    case NONE:
    default:
      break;
  }

  player->move(player, delta_x, delta_y);
}

void update_player(struct level_t* l, enum player_move_t move) {
  unsigned int next_player_x = l->_player->get_x(l->_player);
  unsigned int next_player_y = l->_player->get_y(l->_player);

  switch (move) {
    case LEFT:
      next_player_x -= (next_player_x > 0) ? PLAYER_VELOCITY : 0; 
      break;
    case RIGHT:
      next_player_x += (next_player_x < l->_config->dim_x) ? PLAYER_VELOCITY : 0; 
      break;
    case UP:
      next_player_y -= (next_player_y > 0) ? PLAYER_VELOCITY : 0; 
      break;
    case DOWN:
      next_player_y += (next_player_y < l->_config->dim_y) ? PLAYER_VELOCITY : 0;
      break;
    default:
      return;
  }

  struct entity_t *temp = entity_make(PLAYER, next_player_x, next_player_y,RECTANGLE);

  // check against reaching the obstacle
  if (l->_config->obstacles_number != 0) {
    for (struct entity_t** obstacle = l->_obstacles;
         obstacle < &l->_obstacles[l->_config->obstacles_number]; obstacle++) {

      if (0 == (*obstacle)->collided_with_entity(*obstacle, temp)) {
        entity_remove(&temp);
        return;
      }
    }
  }

  // check against going out of the map
  if (0 >= (int32_t)next_player_x || 0 >= (int32_t)next_player_y ||
      next_player_x+RECTANGLE_WIDTH >= l->_config->dim_x ||
      next_player_y+RECTANGLE_HEIGHT >= l->_config->dim_y) {

    entity_remove(&temp);
    return;
  }

  update_player_helper(l->_player, move);
  entity_remove(&temp);
}

void update_map(struct level_t* l) {

  entities_map_refresh();

  for (struct entity_t** trap = l->_traps; trap < &l->_traps[l->_traps_number];
       trap++) {
    unsigned int x = (*trap)->get_x(*trap);
    unsigned int y = (*trap)->get_y(*trap);
    entities_map_field_modify(x, y, *trap);
  }

  if (l->_config->obstacles_number != 0) {
    for (struct entity_t** obstacle = l->_obstacles;
         obstacle < &l->_obstacles[l->_config->obstacles_number]; obstacle++) {
      unsigned int x = (*obstacle)->get_x(*obstacle);
      unsigned int y = (*obstacle)->get_y(*obstacle);
      entities_map_field_modify(x, y, *obstacle);
    }
  }

  entities_map_field_modify(l->_player->get_x(l->_player),
                            l->_player->get_y(l->_player), l->_player);

  entities_map_field_modify(l->_safe_point->get_x(l->_safe_point),
                            l->_safe_point->get_y(l->_safe_point),
                            l->_safe_point);
}

struct entity_t* get_collision(struct level_t* l) {
  struct entity_t* collided_entity = NULL;

  for (struct entity_t** trap = &l->_traps[0];
       trap <= &l->_traps[l->_traps_number - 1]; trap++) {
    if (0 == (*trap)->collided_with_entity(*trap, l->_player)) {
      collided_entity = *trap;
      break;
    }
  }

  if(collided_entity == NULL){
    if(0 == l->_safe_point->collided_with_entity(l->_safe_point, l->_player)){
      collided_entity = l->_safe_point;
    } 
  }

  return collided_entity;
}

void level_update(struct level_t* l, enum player_move_t move) {
  update_traps(l);
  l->_update_player(l, move);
  l->_update_map(l);
  struct entity_t* collided_entity = l->_get_collision(l);

  if (NULL == collided_entity) {
    l->_state = LEVEL_RUNNING;
  } else if (collided_entity->get_type(collided_entity) == SAFE_POINT) {
    l->_state = LEVEL_DONE;
  } else if (collided_entity->get_type(collided_entity) == TRAP) {
    l->_state = LEVEL_FAILED;
  } else {
    l->_state = LEVEL_FAILED;
  }
}

void copy_config(struct level_config_t* lvl_config, struct level_t* lvl) {
  uint16_t traps_number = lvl_config->traps_number;
  uint16_t obst_number = lvl_config->obstacles_number;
  lvl->_config = malloc(sizeof(struct level_config_t));
  *(lvl->_config) = *lvl_config;
  lvl->_config->traps_start_x = malloc(sizeof(uint16_t) * traps_number);
  lvl->_config->traps_start_y = malloc(sizeof(uint16_t) * traps_number);
  lvl->_config->traps_end_x = malloc(sizeof(uint16_t) * traps_number);
  lvl->_config->traps_end_y = malloc(sizeof(uint16_t) * traps_number);
  lvl->_config->obstacles_x = malloc(sizeof(uint16_t) * obst_number);
  lvl->_config->obstacles_y = malloc(sizeof(uint16_t) * obst_number);

  for (int trap_ctr = 0; trap_ctr < traps_number; trap_ctr++) {
    lvl->_config->traps_start_x[trap_ctr] = lvl_config->traps_start_x[trap_ctr];
    lvl->_config->traps_start_y[trap_ctr] = lvl_config->traps_start_y[trap_ctr];
    lvl->_config->traps_end_x[trap_ctr] = lvl_config->traps_end_x[trap_ctr];
    lvl->_config->traps_end_y[trap_ctr] = lvl_config->traps_end_y[trap_ctr];
  }
  for (uint8_t i = 0; i < obst_number; i++) {
    lvl->_config->obstacles_x[i] = lvl_config->obstacles_x[i];
    lvl->_config->obstacles_y[i] = lvl_config->obstacles_y[i];
  }
}

struct level_t* level_make(struct level_config_t* lvl_config) {
  struct level_t* level = malloc(sizeof(struct level_t));

  level->_safe_point = entity_make(SAFE_POINT, lvl_config->safe_point_x,
                                   lvl_config->safe_point_y, RECTANGLE);
  level->_player = entity_make(PLAYER, lvl_config->player_start_x,
                               lvl_config->player_start_y, RECTANGLE);

  level->_traps = malloc(sizeof(struct entity_t*) * lvl_config->traps_number);
  level->_obstacles =
      malloc(sizeof(struct entity_t) * lvl_config->obstacles_number);

  for (uint8_t i = 0; i < lvl_config->traps_number; i++) {
    level->_traps[i] = entity_make(TRAP, lvl_config->traps_start_x[i],
                                   lvl_config->traps_start_y[i], RECTANGLE);
  }

  for (uint8_t i = 0; i < lvl_config->obstacles_number; i++) {
    level->_obstacles[i] = entity_make(OBSTACLE, lvl_config->obstacles_x[i],
                                       lvl_config->obstacles_y[i], RECTANGLE);
  }

  level->_state = LEVEL_RUNNING;
  level->get_state = level_get_state;
  level->update = level_update;
  level->_traps_number = lvl_config->traps_number;
  level->_get_collision = get_collision;
  level->_update_map = update_map;
  copy_config(lvl_config, level);
  level->_determine_trap_direction = determine_trap_direction;
  level->_update_player = update_player;

  return level;
}

void level_remove(struct level_t** level) {
  if (NULL == *level) {
    return;
  }

  entity_remove(&(*level)->_player);
  entity_remove(&(*level)->_safe_point);

  for (uint8_t i = 0; i < (*level)->_traps_number; i++) {
    entity_remove((*level)->_traps + i);
  }

  for (uint8_t i = 0; i < (*level)->_config->obstacles_number; i++) {
    entity_remove((*level)->_obstacles + i);
  }

  free((*level)->_config->traps_start_x);
  free((*level)->_config->traps_start_y);
  free((*level)->_config->traps_end_x);
  free((*level)->_config->traps_end_y);
  free((*level)->_config->obstacles_x);
  free((*level)->_config->obstacles_y);
  free((*level)->_config);

  free((*level)->_traps);
  free((*level)->_obstacles);
  free(*level);

  entities_map_deinit();
}
