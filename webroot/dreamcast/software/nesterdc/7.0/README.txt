========================================
Status of NesterDC-7.0

supported
 * almost fullspeed emulation
 * sound emulation
 * extra sound emulation
 * optimized PPU emulation
 * FDS emulation (need disksys.rom)
 * normal NES save to VMU (with compression)
 * statesave to VMU (with compression)
 * statesave to Dreamcast memory (as temporary save)
 * game genie 
 * 4players game
 * autofire
 * NES reset
 * adjust Dreamcast's screen position
 * NES external devices
    - Family Keyboard     (controlled by Dreamcast Keyboard)
    - Optical Gun         (controlled by Dreamcast Controller, Dreamcast Mouse)
    - Space Shadow Gun    (controlled by Dreamcast Controller, Dreamcast Mouse)
    - Hyper Shot          (controlled by Dreamcast Controller)
    - Crazy Climber       (controlled by Dreamcast Controller)
    - Microphone          (controlled by Dreamcast Controller)
 * Dreamcast devices
    - Dreamcast Controller
    - Arcade Stick
    - Dreamcast Keyboard (jp106 only)
    - Dreamcast Mouse
    - VGA
    - VMU
 * directories on CD-ROM filesystem (in ROM select menu)
 * display information on VMU LCD.
 * VMU remove menu. (you can erase VMU data easily)
 * virtual maple port binding on Dreamcast Controllers. 
   (you can bind DC<=>NES controllers correspondence, 
    like binding Dreamcast Controller #2 as NES Controller #0).

unsupported
 * Dreamcast device support
    - Dreamcast Light Gun
    - Dreamcast Keyboard (except jp106)
    - Dreamcast Racing Controller
    - Dreamcast Twin Stick
    - etc...


----------------------------------------
** NOTE **
 VMU blocks use 

  most case: 
   - normal saving(nes): 3-9 blocks 
   - normal saving(fds): 3 blocks 
   - state saving(nes):  6-20 blocks 
   - state saving(fds):  66 blocks 

  worst case: (calculated by assuming compression had no effect)
   - normal saving(nes): 18 blocks (40 blocks if MMC5)
   - normal saving(fds): 520 blocks
   - state saving(nes):  96 blocks (240 blocks if MMC5)
   - state saving(fds):  700 blocks


----------------------------------------
** STATE SAVE NOTE **

About quick state save: 
 quick-state-save shares savefile with all ROMs. 

 It's cleared when exit game 
(more exactly, it's cleared when load next ROM. 
so, remaining the quick state save data, even though you quit game, 
if you select the same ROM again.)


About VMU state save: 
 VMU-state-save makes a file per ROM. 

 It's saved to VMU, so you can load state after quit NesterDC. 


----------------------------------------
** NOTE **
 VMU LCD info

 * in main menu

 +--------------+ 
 | VMU FREE:    |  <- free blocks in VMU. 
 |  81 BLOCKS   |
 |              |
 | NESTERDC     |  <- NesterDC version. 
 |  7.0 RELEASE |
 +--------------+


 * during game

 +--------------+
 | FRAME RATE:  |  <- frame skip rate. 
 |  AUTO: x1.0  |
 | AUTOFIRE: N  |  <- autofire-mode status. 
 |              |
 | METROID.FDS  |  <- ROM file name. 
 +--------------+


========================================
NesterDC filesystem hierarchy is

--------------------
    1st track (audio)
     audio.raw (or your favorite caution.wav)

    2nd track (data)
     /1ST_READ.BIN
     /pics/credits.bmp
     /pics/menu.bmp
     /pics/...
     /games/game.nes
     /games/disksys.rom
     /games/super_mario.nes
     /games/favorite/castlevania1.nes
     /games/favorite/castlevania2.nes
     /games/favorite/castlevania3.nes
     /games/fds/metroid.fds
     /games/fds/zelda.fds
     /games/...
     /genie/super_mario_3/high_jump
     /genie/super_mario_3/high_speed
     /genie/...


--------------------
** NOTE ** 
  - If you play FDS games, need /games/disksys.rom.
  - If you use Rock Ridge format, there is no limit for filename. 
  - Max ROM files is 1024 per one directory. 


========================================
How to compile

1. edit nesterdc-7.0/dcmake
2. dcmake in top dir


--------------------
** NOTE **

My develop environment

 * NesterDC developing 
  - binutils-2.11.2
  - gcc-3.0.3
  - FreeBSD 4-stable

 * buring CD
  - NetBSD current
  - mkisofs + cdrecord

--------------------
** CAUTION **

I have no Windows PC, and I don't know HOWTO write CDs 
using Windows specific tools (DiskJuggler, Nero, ...). 


========================================
Changes from 3.0 

# 7.0
 * new font renderer
 * rewrite almost all Dreamcast specific code.
 * important BUG fix
 * ALL controllers can control system menu (no more 1P controller).
 * virtual maple port binding on Dreamcast Controllers. 
   (you can bind DC<=>NES controllers correspondence, 
    like binding Dreamcast Controller #2 as NES Controller #0).
 * fixate KEY bind (If you want to edit KEY bind, edit source code). 
 * update KOS to 1.1.8
 * NES external device support 
    - Family Keyboard     (controlled by Dreamcast Keyboard)
    - Optical Gun         (controlled by Dreamcast Controller, Dreamcast Mouse)
    - Space Shadow gun    (controlled by Dreamcast Controller, Dreamcast Mouse)
    - Hyper Shot          (controlled by Dreamcast Controller)
 * Dreamcast device support
    - Arcade Stick
    - Dreamcast Keyboard (jp106 only)
    - Dreamcast Mouse

# 6.0
 * use bilinear filter. 
 * support Game Genie. 
 * improve maple support by upgrading KOS. 
 * speedup PPU engine, N106 exsound engine. 


# 5.0 
 * fullscreen support 
 * speedup. (works almost 60fps). 
 * 4 players support
 * VGA support
 * SDL porting
 * change base coding language to EC++
 * VMU font driver
 * queue base TA driver
 * autofire
 * adjustable screen position and size. 
 * directory support in rom menu.


# 4.0
 * cpu/ppu/apu engine was ported from 
    unofficial nester (http://www.emulation9.com/takeda/). 
 * mappers were ported from 
    unofficial nester (http://www.emulation9.com/takeda/). 
     0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 16, 17, 18, 19, 
     20, 21, 22, 23, 24, 25, 26, 32, 33, 34, 40, 41, 42, 43, 44, 
     45, 46, 47, 48, 49, 50, 51, 52, 57, 58, 60*, 64, 65, 66, 67, 
     68, 69, 70, 71, 72, 73, 75, 76, 77, 78, 79, 80, 82, 83, 85, 86, 
     87, 88, 89, 90, 91*, 92, 93, 94, 95, 96, 97, 99, 100, 101, 105, 
     112, 113, 117, 118, 119, 122, 151, 160, 180, 181, 182, 184, 185, 
     188, 189, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234*, 
     235, 236, 240, 242, 243, 245*, 246, 248, 255 
     (*: partial)
 * state save/load (quick & VMU).
 * compress data saving. 
 * auto frameskip.
 * VMU menu (you can remove VMU files on NesterDC).
 * VMU saving works on long filename.


========================================
Licence

- Nester core code (under nesterdc-7.0/nester except nesterdc-7.0/nester/dreamcast) 
  under GPL2

- Dreamcast specific code (under nesterdc-7.0/nester/dreamcast)
  under BSD Licence


========================================
Credits

 * Takayama Fumihiko <tekezo@catv296.ne.jp>
 * HISAMATSU tatsuaki

 * Ken Friece <nesterdc@yahoo.com>
 * Dave Arnold <RedDevil163@hotmail.com> 

 * all staffs around Nester.
 * all staffs of NesterDC theme designers, ISO image creators. 
 * all staffs around Dreamcast emulation scene.


========================================
contact: Takayama Fumihiko <tekezo@catv296.ne.jp>
         http://nemesis.kaz.ac/~fumihit/nesterdc/



