// Copyright 2024 QMK
// SPDX-License-Identifier: GPL-2.0-or-later

/*******************************************************************************
  88888888888 888      d8b                .d888 d8b 888               d8b
      888     888      Y8P               d88P"  Y8P 888               Y8P
      888     888                        888        888
      888     88888b.  888 .d8888b       888888 888 888  .d88b.       888 .d8888b
      888     888 "88b 888 88K           888    888 888 d8P  Y8b      888 88K
      888     888  888 888 "Y8888b.      888    888 888 88888888      888 "Y8888b.
      888     888  888 888      X88      888    888 888 Y8b.          888      X88
      888     888  888 888  88888P'      888    888 888  "Y8888       888  88888P'
                                                        888                 888
                                                        888                 888
                                                        888                 888
     .d88b.   .d88b.  88888b.   .d88b.  888d888 8888b.  888888 .d88b.   .d88888
    d88P"88b d8P  Y8b 888 "88b d8P  Y8b 888P"      "88b 888   d8P  Y8b d88" 888
    888  888 88888888 888  888 88888888 888    .d888888 888   88888888 888  888
    Y88b 888 Y8b.     888  888 Y8b.     888    888  888 Y88b. Y8b.     Y88b 888
     "Y88888  "Y8888  888  888  "Y8888  888    "Y888888  "Y888 "Y8888   "Y88888
         888
    Y8b d88P
     "Y88P"
*******************************************************************************/

#include QMK_KEYBOARD_H

#ifdef RGB_MATRIX_ENABLE
#include "rgb_matrix.h"
__attribute__ ((weak)) led_config_t g_led_config = {
  {
    { 24, 23, 18, 17, 10, 9 },
    { 25, 22, 19, 16, 11, 8 },
    { 26, 21, 20, 15, 12, 7 },
    { NO_LED, NO_LED, NO_LED, 14, 13, 6 },
    { 51, 50, 45, 44, 37, 36 },
    { 52, 49, 46, 43, 38, 35 },
    { 53, 48, 47, 42, 39, 34 },
    { NO_LED, NO_LED, NO_LED, 41, 40, 33 },
  },
  { {85, 16}, {50, 13}, {16, 20}, {16, 38}, {50, 48}, {85, 52}, {95, 63}, {85, 39}, {85, 21}, {85, 4}, {68, 2}, {68, 19}, {68, 37}, {80, 58}, {60, 55}, {50, 35}, {50, 13}, {50, 0}, {33, 3}, {33, 20}, {33, 37}, {16, 42}, {16, 24}, {16, 7}, {0, 7}, {0, 24}, {0, 41}, {139, 16}, {174, 13}, {208, 20}, {208, 38}, {174, 48}, {139, 52}, {129, 63}, {139, 39}, {139, 21}, {139, 4}, {156, 2}, {156, 19}, {156, 37}, {144, 58}, {164, 55}, {174, 35}, {174, 13}, {174, 0}, {191, 3}, {191, 20}, {191, 37}, {208, 42}, {208, 24}, {208, 7}, {224, 7}, {224, 24}, {224, 41} },
  { 2, 2, 2, 2, 2, 2, 1, 4, 4, 4, 4, 4, 4, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 4, 4, 4, 4, 4, 4, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 1, 1, 1 },
};
#endif

#ifdef MATRIX_MASKED
__attribute__((weak)) const matrix_row_t matrix_mask[] = {
    0b111111,
    0b111111,
    0b111111,
    0b111000,
    0b111111,
    0b111111,
    0b111111,
    0b111000,
};
#endif