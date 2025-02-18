/*
    ChibiOS - Copyright (C) 2006..2016 Giovanni Di Sirio

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

/*
 * This file has been automatically generated using ChibiStudio board
 * generator plugin. Do not edit manually.
 */

#include "hal.h"
#include "board.h"

static int flag __attribute__((section(".flag"))) __attribute__((__used__)) = 0xAAAA5555;
extern void enter_bootloader_mode_if_requested(void);

/**
 * @brief   Early initialization code.
 * @details This initialization must be performed just after stack setup
 *          and before any other initialization.
 */
#ifdef ES_INCLUDE_INFO_CONFIG_FILE
void __chibios_override___early_init(void) 
#else
void __early_init(void) 
#endif
{

}

/**
 * @brief   Board-specific initialization code.
 * @todo    Add your board-specific code, if any.
 */

#ifdef ES_INCLUDE_INFO_CONFIG_FILE
void __chibios_override_boardInit(void) 
#else
void boardInit(void) 
#endif
{

}
