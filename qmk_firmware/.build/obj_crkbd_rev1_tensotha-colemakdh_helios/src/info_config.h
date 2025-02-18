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

#pragma once

#ifndef DIODE_DIRECTION
#    define DIODE_DIRECTION COL2ROW
#endif // DIODE_DIRECTION

#ifndef RGB_MATRIX_SPLIT
#    define RGB_MATRIX_SPLIT { 27, 27 }
#endif // RGB_MATRIX_SPLIT

#ifndef RGB_MATRIX_LED_COUNT
#    define RGB_MATRIX_LED_COUNT 54
#endif // RGB_MATRIX_LED_COUNT

#ifndef RGBLED_SPLIT
#    define RGBLED_SPLIT { 27, 27 }
#endif // RGBLED_SPLIT

#ifndef RGBLIGHT_LED_COUNT
#    define RGBLIGHT_LED_COUNT 54
#endif // RGBLIGHT_LED_COUNT

#ifndef SOFT_SERIAL_PIN
#    define SOFT_SERIAL_PIN D2
#endif // SOFT_SERIAL_PIN

#ifndef SPLIT_TRANSPORT_MIRROR
#    define SPLIT_TRANSPORT_MIRROR
#endif // SPLIT_TRANSPORT_MIRROR

#ifndef WS2812_DI_PIN
#    define WS2812_DI_PIN D3
#endif // WS2812_DI_PIN

#ifndef LAYOUT
#    define LAYOUT LAYOUT_split_3x6_3
#endif // LAYOUT

#ifndef DEVICE_VER
#    define DEVICE_VER 0x0001
#endif // DEVICE_VER

#ifndef MANUFACTURER
#    define MANUFACTURER "foostan"
#endif // MANUFACTURER

#ifndef PRODUCT
#    define PRODUCT "Corne"
#endif // PRODUCT

#ifndef PRODUCT_ID
#    define PRODUCT_ID 0x0001
#endif // PRODUCT_ID

#ifndef VENDOR_ID
#    define VENDOR_ID 0x4653
#endif // VENDOR_ID

#ifndef MATRIX_COLS
#    define MATRIX_COLS 6
#endif // MATRIX_COLS

#ifndef MATRIX_ROWS
#    define MATRIX_ROWS 8
#endif // MATRIX_ROWS

#ifndef MATRIX_COL_PINS
#    define MATRIX_COL_PINS { F4, F5, F6, F7, B1, B3 }
#endif // MATRIX_COL_PINS

#ifndef MATRIX_ROW_PINS
#    define MATRIX_ROW_PINS { D4, C6, D7, E6 }
#endif // MATRIX_ROW_PINS
