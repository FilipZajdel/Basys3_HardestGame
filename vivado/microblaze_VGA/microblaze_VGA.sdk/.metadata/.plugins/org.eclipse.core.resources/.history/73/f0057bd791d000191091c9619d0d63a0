#include "game.h"
#include <stdio.h>
#include <stdlib.h>
#include "config.h"

struct level_t* get_level_by_idx(int lvl_idx) {
  struct level_t* l = NULL;

#ifndef DEBUG_LEVEL
  switch (lvl_idx % (LEVEL_NUMBER + 1)) {
#else
  switch(DEBUG_LEVEL) {
#endif
    case 1: {
      struct level_config_t level_config = CONFIG_LEVEL_1;
      l = level_make(&level_config);
      break;
    } 
    case 2: {
      struct level_config_t level_config = CONFIG_LEVEL_2;
      l = level_make(&level_config);
      break;
    }
    case 3: {
      struct level_config_t level_config = CONFIG_LEVEL_3;
      l = level_make(&level_config);
      break;
    }
    case 4: {
      struct level_config_t level_config = CONFIG_LEVEL_4;
      l = level_make(&level_config);
      break;  
    }
    default:
      break;
  }

  return l;
}

void init_map_by_level_idx(int lvl_idx) {
#ifndef DEBUG_LEVEL  
  switch (lvl_idx % (LEVEL_NUMBER + 1)) {
#else
  switch(DEBUG_LEVEL) {
#endif
    case 1: {
      struct level_config_t level_config = CONFIG_LEVEL_1;
      entities_map_init(level_config.dim_x, level_config.dim_y);
    }
    case 2: {
      struct level_config_t level_config = CONFIG_LEVEL_2;
      entities_map_deinit();
      entities_map_init(level_config.dim_x, level_config.dim_y);
    }
    case 3: {
      struct level_config_t level_config = CONFIG_LEVEL_3;
      entities_map_deinit();
      entities_map_init(level_config.dim_x, level_config.dim_y);
    }
    case 4: {
      struct level_config_t level_config = CONFIG_LEVEL_4;
      entities_map_deinit();
      entities_map_init(level_config.dim_x, level_config.dim_y);  
    }
    default:
      break;
  }
}

void _init_level_by_idx(struct game_t* self) {
  if (self->_level != NULL) {
    level_remove(&(self->_level));
  }

  self->_level = get_level_by_idx(self->_level_idx);
}

void init(struct game_t* self) {
  self->_level_idx = 1;
  init_map_by_level_idx(self->_level_idx);
  self->_init_level_by_idx(self);
  self->_state = RUNNING;
}

void reset(struct game_t* self) {
  self->_level_idx = 1;
  self->_init_level_by_idx(self);
  init_map_by_level_idx(self->_level_idx);
}

void update(struct game_t* self, enum player_move_t player_move) {
  struct level_t* l = self->_level;
  l->update(l, player_move);

  switch (l->get_state(l)) {
    case LEVEL_RUNNING:
      self->_state = RUNNING;
      break;
    case LEVEL_FAILED:
      self->_state = GAME_OVER;
      break;
    case LEVEL_DONE:
      self->_level_idx += 1;
      self->_init_level_by_idx(self);  // to make
      init_map_by_level_idx(self->_level_idx);
      self->_state = LEVEL_CHANGED;
      break;
    default:
      break;
  }
}

enum game_state_t get_state(struct game_t* self) {
  return self->_state;
}

int get_current_level(struct game_t* self) {
  return self->_level_idx;
}

struct map_field_t **game_get_map(struct game_t *self, int *width, int *height){
  return get_map(width, height); 
}

struct game_t* game_make() {
  struct game_t* game = malloc(sizeof(struct game_t));
  if (NULL == game) {
    return NULL;
  }

  game->init = init;
  game->reset = reset;
  game->update = update;
  game->get_state = get_state;
  game->get_map = game_get_map;
  game->get_current_level = get_current_level;
  game->_state = NON_INIT;
  game->_init_level_by_idx = _init_level_by_idx;
  game->_level = NULL;

  return game;
}

void game_remove(struct game_t** game) {
  if ((*game)->_level != NULL) {
    level_remove(&(*game)->_level);
  }
  free(*game);
}
