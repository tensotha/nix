/*
This is the c configuration file for the keymap

Copyright 2012 Jun Wako <wakojun@gmail.com>
Copyright 2015 Jack Humbert

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#pragma once

//#define USE_MATRIX_I2C

/* Select hand configuration */

#define MASTER_LEFT
// #define MASTER_RIGHT
// #define EE_HANDS

// #define SSD1306OLED
#undef USE_I2C
#undef SSD1306OLED

#define USE_SERIAL_PD2

//#define TAPPING_FORCE_HOLD
//#define TAPPING_FORCE_HOLD_PER_KEY
#define TAPPING_TERM 350
// #define RETRO_TAPPING
#define PERMISSIVE_HOLD_PER_KEY

//one shot settings
#define ONESHOT_TAP_TOGGLE 5  /* Tapping this number of times holds the key until tapped once again. */
#define ONESHOT_TIMEOUT 2500  /* Time (in ms) before the one shot key is released */

//layer TT tap settings
#define TAPPING_TOGGLE 2

//mouse settings based on ergodox
//https://www.reddit.com/r/olkb/comments/72u8ou/qmk_mouse_keys_rock/
#define MOUSEKEY_INTERVAL 16
#define MOUSEKEY_DELAY 0
#define MOUSEKEY_TIME_TO_MAX 60
#define MOUSEKEY_MAX_SPEED 7
#define MOUSEKEY_WHEEL_DELAY 0

#ifdef RGBLIGHT_ENABLE
    #undef RGBLED_NUM
    #define RGBLED_NUM 27
    #define RGBLIGHT_ANIMATIONS
    #define RGBLIGHT_SLEEP
    #define RGBLIGHT_SPLIT
    #define RGBLIGHT_LIMIT_VAL 120
    #define RGBLIGHT_HUE_STEP 10
    #define RGBLIGHT_SAT_STEP 17
    #define RGBLIGHT_VAL_STEP 17
#endif

#define OLED_FONT_H "keyboards/crkbd/keymaps/soundmonster/glcdfont.c"
//// #define OLED_FONT_WIDTH 5
//// #define OLED_FONT_HEIGHT 7


#ifdef RGBLIGHT_ENABLE

//#   undef RGBLIGHT_EFFECT_BREATHING
#   undef RGBLIGHT_EFFECT_RAINBOW_MOOD
#   undef RGBLIGHT_EFFECT_RAINBOW_SWIRL
#   undef RGBLIGHT_EFFECT_SNAKE
#   undef RGBLIGHT_EFFECT_KNIGHT
#   undef RGBLIGHT_EFFECT_CHRISTMAS
#   undef RGBLIGHT_EFFECT_STATIC_GRADIENT
#   undef RGBLIGHT_EFFECT_ALTERNATING
#   undef RGBLIGHT_EFFECT_TWINKLE

#endif


#ifdef RGB_MATRIX_ENABLE

//I disabled this to save space, but is needed for some effects (see docs). I disabled
//those effects too, to save space again.
//#   define RGB_MATRIX_KEYPRESSES // reacts to keypresses


// #   define RGB_MATRIX_KEYRELEASES // reacts to keyreleases (instead of keypresses)
// #   define RGB_DISABLE_AFTER_TIMEOUT 0 // number of ticks to wait until disabling effects
#   define RGB_DISABLE_WHEN_USB_SUSPENDED // turn off effects when suspended
#   define RGB_MATRIX_FRAMEBUFFER_EFFECTS
#   define RGB_MATRIX_LED_PROCESS_LIMIT (DRIVER_LED_TOTAL + 4) / 5 // limits the number of LEDs to process in an animation per task run (increases keyboard responsiveness)
#   define RGB_MATRIX_LED_FLUSH_LIMIT 16 // limits in milliseconds how frequently an animation will update the LEDs. 16 (16ms) is equivalent to limiting to 60fps (increases keyboard responsiveness)
#   define RGB_MATRIX_MAXIMUM_BRIGHTNESS 150 // limits maximum brightness of LEDs to 150 out of 255. Higher may cause the controller to crash.
#   define RGB_MATRIX_HUE_STEP 8
#   define RGB_MATRIX_SAT_STEP 8
#   define RGB_MATRIX_VAL_STEP 8
#   define RGB_MATRIX_SPD_STEP 10

/* Disable the animations you don't want/need.  You will need to disable a good number of these    *
 * because they take up a lot of space.  Disable until you can successfully compile your firmware. */
#   undef ENABLE_RGB_MATRIX_ALPHAS_MODS
#    undef ENABLE_RGB_MATRIX_GRADIENT_UP_DOWN
#    undef ENABLE_RGB_MATRIX_GRADIENT_LEFT_RIGHT
#    undef ENABLE_RGB_MATRIX_BREATHING

#   undef ENABLE_RGB_MATRIX_BAND_SAT
#    undef ENABLE_RGB_MATRIX_BAND_VAL
#    undef ENABLE_RGB_MATRIX_BAND_PINWHEEL_SAT
#    undef ENABLE_RGB_MATRIX_BAND_PINWHEEL_VAL
#    undef ENABLE_RGB_MATRIX_BAND_SPIRAL_SAT
#    undef ENABLE_RGB_MATRIX_BAND_SPIRAL_VAL
#    undef ENABLE_RGB_MATRIX_CYCLE_ALL
#    undef ENABLE_RGB_MATRIX_CYCLE_LEFT_RIGHT
#    undef ENABLE_RGB_MATRIX_CYCLE_UP_DOWN
#    undef ENABLE_RGB_MATRIX_CYCLE_OUT_IN
#    undef ENABLE_RGB_MATRIX_CYCLE_OUT_IN_DUAL
#    undef ENABLE_RGB_MATRIX_RAINBOW_MOVING_CHEVRON
#    undef ENABLE_RGB_MATRIX_DUAL_BEACON
#    undef ENABLE_RGB_MATRIX_CYCLE_PINWHEEL
#    undef ENABLE_RGB_MATRIX_CYCLE_SPIRAL
#    undef ENABLE_RGB_MATRIX_RAINBOW_BEACON
#    undef ENABLE_RGB_MATRIX_RAINBOW_PINWHEELS
#    undef ENABLE_RGB_MATRIX_RAINDROPS
#    undef ENABLE_RGB_MATRIX_JELLYBEAN_RAINDROPS
#    undef ENABLE_RGB_MATRIX_HUE_BREATHING
#    undef ENABLE_RGB_MATRIX_TYPING_HEATMAP
#    undef ENABLE_RGB_MATRIX_DIGITAL_RAIN
#    undef ENABLE_RGB_MATRIX_SOLID_REACTIVE
#    undef ENABLE_RGB_MATRIX_SOLID_REACTIVE_SIMPLE
#    undef ENABLE_RGB_MATRIX_SOLID_REACTIVE_WIDE
#    undef ENABLE_RGB_MATRIX_SOLID_REACTIVE_MULTIWIDE
#    undef ENABLE_RGB_MATRIX_SOLID_REACTIVE_CROSS
#    undef ENABLE_RGB_MATRIX_SOLID_REACTIVE_MULTICROSS
#    undef ENABLE_RGB_MATRIX_SOLID_REACTIVE_NEXUS
#    undef ENABLE_RGB_MATRIX_SOLID_REACTIVE_MULTINEXUS
#    undef ENABLE_RGB_MATRIX_SPLASH
#    undef ENABLE_RGB_MATRIX_MULTISPLASH
#    undef ENABLE_RGB_MATRIX_SOLID_SPLASH
#    undef ENABLE_RGB_MATRIX_SOLID_MULTISPLASH
#    undef ENABLE_RGB_MATRIX_PIXEL_FRACTAL
#endif



//TJ got rid of these, to save space
#define NO_ACTION_MACRO
#define NO_ACTION_FUNCTION

//here's how to fix the secondary oled issue
//https://www.reddit.com/r/olkb/comments/pi00v2/split_keyboard_only_one_oled_updates/
#define SPLIT_OLED_ENABLE
#define SPLIT_LAYER_STATE_ENABLE
#define SPLIT_MODS_ENABLE
#define SPLIT_TRANSPORT_MIRROR
#define SPLIT_WPM_ENABLE


////for fix on computer cold start to work - possibly remove once integrated into qmk
// add to config.h
#define SPLIT_USB_TIMEOUT 2000
#define SPLIT_TRANSACTION_IDS_KB WATCHDOG_SYNC
////end of fix

