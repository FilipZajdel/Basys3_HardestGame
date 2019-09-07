#ifndef GAME_H
#define GAME_H

#include "level.h"
#include "entity.h"
#include "map.h"

#ifdef __cplusplus
extern "C"{
#endif

enum game_state_t {RUNNING, GAME_OVER, NON_INIT, LEVEL_CHANGED};

struct game_t{
    // public
    void (*init)(struct game_t *game);
    void (*reset)(struct game_t *game);
    /** @brief Updates state of the game for given player movement */
    void (*update)(struct game_t *game, enum player_move_t);
    enum game_state_t (*get_state)(struct game_t *game);
    /** @brief Returns map and its dimensions.
     * @param width pointer to variable that will be filled with value of width of the map
     * @param height pointer to variable that will be filled with value of height of the map
     */
    struct map_field_t **(*get_map)(struct game_t *game, int *width, int *height);
    /** @brief Returns level of the game */
    int (*get_current_level)(struct game_t *game);
    // private
    struct level_t *_level;
    int _level_idx;
    enum game_state_t _state;
    void (*_init_level_by_idx)(struct game_t *self);
};

/** @brief Returns newly created game instance */
struct game_t *game_make();

/** @brief Deallocates resources of passed game instance */
void game_remove(struct game_t **);

#ifdef __cplusplus
}
#endif

#endif