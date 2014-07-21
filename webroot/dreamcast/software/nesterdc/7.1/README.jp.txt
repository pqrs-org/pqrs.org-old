========================================
NesterDC-7.1 開発状況

対応済み
 * 実速度エミュレーション
 * サウンドエミュレーション
 * 追加音源エミュレーション
 * 最適化された PPU エミュレーション
 * 最適化された CPU エミュレーション
 * 最適化された bank switch エミュレーション
 * ディスクシステム対応 (disksys.rom が必要)
 * メモリーバックアップ対応 (圧縮して VMU に保存)
 * ステートセーブ対応 (圧縮して VMU に保存)
 * クイックステートセーブ対応 (Dreamcast のメモリ上に保存)
 * game genie 対応
 * NNNesterJ チートコード対応
 * 4 人プレイ対応
 * 連射対応
 * リセット対応
 * スクリーン表示位置調整対応
 * NES 外部デバイス
    - Family Keyboard     (Dreamcast Keyboard にて操作)
    - Optical Gun         (Dreamcast Controller, Dreamcast Mouse にて操作)
    - Space Shadow Gun    (Dreamcast Controller, Dreamcast Mouse にて操作)
    - Hyper Shot          (Dreamcast Controller にて操作)
    - Crazy Climber       (Dreamcast Controller にて操作)
    - Microphone          (Dreamcast Controller にて操作)
    - Arkanoid Paddle     (Dreamcast Mouse にて操作)
    - Mahjong Controller  (Dreamcast Keyboard にて操作)
 * Dreamcast デバイス
    - Dreamcast Controller
    - Arcade Stick
    - Dreamcast Keyboard (jp106 only)
    - Dreamcast Mouse
    - VGA
    - VMU
 * ROM メニューでディレクトリ対応
 * VMU LCD に情報を表示
 * VMU ファイル削除メニュー 
 * 仮想 maple ポート
   (DC<=>NES のコントローラの対応を設定可能。 
    DC pad #0 を NES pad #2 に対応させる等)。

非対応
 * Dreamcast デバイス
    - Dreamcast Light Gun
    - Dreamcast Keyboard (except jp106)
    - Dreamcast Racing Controller
    - Dreamcast Twin Stick
    - etc...


既知のバグ
 * 星のカービィで音にノイズがのります。 



----------------------------------------
** 注意事項 **
 VMU ブロック使用量

  大部分のケース: 
   - ノーマルセーブ(nes): 3-9
   - ノーマルセーブ(fds): 3
   - ステイトセーブ(nes): 6-20
   - ステイトセーブ(fds): 66

  最悪のケース: (圧縮が出来なかった場合の推測値)
   - ノーマルセーブ(nes): 18 (MMC5 の場合 40) 
   - ノーマルセーブ(fds): 520 
   - ステイトセーブ(nes): 96 (MMC5 の場合 240)
   - ステイトセーブ(fds): 700 


----------------------------------------
** ステイトセーブについて **

高速モード: 
 高速ステイトセーブは, セーブファイルを共有します. 

 セーブデータはゲームの終了時に消去されます. 
(正確には, 次のロムを読みこむ際に消去されます. 
よって, 同じロムを再び読めば高速ステイトセーブデータは消去されずに残ります). 


VMU 保存モード:
 VMU 保存ステイトセーブは, ロム毎にセーブファイルを作ります. 
 
 セーブデータは VMU に保存されるので,
NesterDC を終了させた後であってもステイトロードをすることが可能です. 


----------------------------------------
** 注意事項 **
 VMU に表示される情報

 * メインメニューでの表示

 +--------------+ 
 | VMU FREE:    |  <- VMU の残量
 |  81 BLOCKS   |
 |              |
 | NESTERDC     |  <- NesterDCのバージョン
 |  7.1 RELEASE |
 +--------------+
 
 
 * ゲーム中の表示

 +--------------+
 | FRAME RATE:  |  <- フレームスキップの状態
 |  AUTO: x1.0  |
 | AUTOFIRE: N  |  <- 連射モードのオン/オフ
 |              |
 | METROID.FDS  |  <- ロムのファイル名
 +--------------+


========================================
NesterDC の CD の焼く時のフォルダ構造↓

--------------------
    1 トラック目 (音楽トラック)
     audio.raw (もしくは好きな wav ファイル)

    2 トラック目 (データトラック)
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
** 注意事項 ** 
  - ディスクシステムをする時には disksys.rom を games のフォルダの中に入れます. 
  - Rock Ridge フォーマット使用時には, ファイル名に制限はありません. 
  - ROM ファイルの数は, ディレクトリ毎に 1023 以下でなければなりません. 


========================================
コンパイル方法

1. nesterdc-7.1/dcmake を編集する. 
2. トップディレクトリにて dcmake を実行して下さい. 


--------------------
** 注意事項 **

開発環境

 * NesterDC の開発
  - binutils-2.13.1
  - gcc-3.2
  - FreeBSD 4-stable

 * CD-R を焼く環境
  - NetBSD current
  - mkisofs + cdrecord

--------------------
** 注意 **

わたしは Windows マシンを持っていません. 
また, Windows 専用のソフト (DiskJuggler, Nero, ...) を用いて
CD-R を焼く方法を知りません. 


========================================
3.0からの変更点

# 7.1
 * 最適化された CPU エミュレーション
 * 最適化された bank switch エミュレーション
 * NNNesterJ チートコード対応
 * UI のコードの改良
 * 開発環境のアップデート (gcc-3.2, binutils-2.13)
 * オブジェクトサイズが小さくなるようにコードを最適化
 * いくつかの細かい変更
 * NES 外部デバイスのサポート
    - Arkanoid Paddle     (Dreamcast Mouse にて操作)
    - Mahjong Controller  (Dreamcast Keyboard にて操作)

# 7.0
 * 新しいフォントエンジン。
 * Dreamcast 周りのコードを全面的に書き替え。 
 * 重要なバクフィックス。
 * システムメニューの操作を全てのコントローラーで可能に。
 * 仮想 maple ポート実装。
 * キーバインドを固定。 (キーバインドを変更したいときは、ソースをいじって下さい)。
 * KOS を 1.1.8 にアップデート。
 * NES 外部デバイスのサポート
    - Family Keyboard
    - Optical Gun
    - Space Shadow gun
    - Hyper Shot
 * Dreamcast デバイスのサポート
    - Arcade Stick
    - Dreamcast Keyboard (jp106 only)
    - Dreamcast Mouse

# 6.0
 * bilinear フィルタの使用
 * Game Genie サポート
 * KOS を最新にすることで maple サポートを改良しました. 
 * PPU, N106 拡張音源のスピードアップ


# 5.0 
 * フルスクリーンサポート.
 * VMU フォントドライバ.
 * キューを用いる TA ドライバ.
 * VGA サポート.
 * SDL への移植.
 * 開発言語を EC++ に
 * 4 プレイヤーサポート 
 * スピードアップ (だいたい 60fps で動きます). 
 * 連射機能. 
 * スクリーンの位置とサイズを調整可能. 
 * ロムメニューでディレクトリサポート. 


# 4.0
 * cpu/ppu/apu エンジンを unofficial nester から移植.
 * マッパーサポートを unofficial nester から移植.
 * ステイトセーブ/ロード (高速モード, VMU 保存モード).
 * セーブデータの圧縮. 
 * オートフレームスキップ.
 * VMU メニュー (NesterDC 上で VMU ファイルを確認, 削除できます).
 * ファイル名の長さの制限が無くなりました.


========================================
ライセンス

- Nester 周りのコード (nesterdc-7.0/nester/dreamcast を除く nesterdc-7.0/nester 以下のコード) 
    GPL2 に従います。 

- Dreamcast 周りのコード (nesterdc-7.0/nester/dreamcast 以下のコード)
    BSD ライセンスに従います。 


========================================
クレジット

 * Takayama Fumihiko <tekezo@catv296.ne.jp>
 * HISAMATSU tatsuaki

 * Ken Friece <nesterdc@yahoo.com>
 * Dave Arnold <RedDevil163@hotmail.com> 

 * cheat creator:
     Monyons [Cheat Mania]
        http://cheatmania.vg-network.com/

     RK [rabirions]
        http://rabirion-web.hp.infoseek.co.jp/

     member of rabirions BBS
        ストーム, PSY, ena, VO, 骨魔王, pom

 * all staffs around Nester.
 * all staffs of NesterDC theme designers, CD image creators. 
 * all staffs around Dreamcast emulation scene.


========================================
連絡先: 高山 扶美彦 (Takayama Fumihiko) <tekezo@catv296.ne.jp>
         http://nemesis.kaz.ac/~fumihit/nesterdc/


========================================
日本語訳について

訳: 超雑魚キャラ
校正: 高山 扶美彦 (Takayama Fumihiko) <tekezo@catv296.ne.jp>


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
========================================
Status of NesterDC-7.0

Supported
 * almost fullspeed emulation
 * sound emulation
 * extra sound emulation
 * optimized PPU emulation
 * optimized CPU emulation 
 * optimized bank switching
 * FDS emulation (need disksys.rom)
 * normal NES save to VMU (with compression)
 * statesave to VMU (with compression)
 * statesave to Dreamcast memory (as temporary save)
 * game genie 
 * NNNesterJ cheat code 
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
    - Arkanoid Paddle     (controlled by Dreamcast Mouse)
    - Mahjong Controller  (controlled by Dreamcast Keyboard)
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

Unsupported
 * Dreamcast device support
    - Dreamcast Light Gun
    - Dreamcast Keyboard (except jp106)
    - Dreamcast Racing Controller
    - Dreamcast Twin Stick
    - etc...


Known Bugs
 * generate petit-noise on Kirby-adventure, Hoshi-no-kirby. 


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
 |  7.1 RELEASE |
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
  - Max ROM files is 1023 per one directory. 


========================================
How to compile

1. edit nesterdc-7.1/dcmake
2. dcmake in top dir


--------------------
** NOTE **

My develop environment

 * NesterDC developing 
  - binutils-2.13.1
  - gcc-3.2
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

# 7.1
 * optimize CPU emulation 
 * optimize bank switching
 * support NNNesterJ cheat code 
 * refine dreamcast UI code
 * update development environment (gcc-3.2, binutils-2.13.1)
 * optimize object-code-size
 * some misc changes
 * NES external device support
    - Arkanoid Paddle     (controlled by Dreamcast Mouse)
    - Mahjong Controller  (controlled by Dreamcast Keyboard)

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

- Nester core code (under nesterdc-7.1/nester except nesterdc-7.1/nester/dreamcast) 
  under GPL2

- Dreamcast specific code (under nesterdc-7.1/nester/dreamcast)
  under BSD Licence


========================================
Credits

 * Takayama Fumihiko <tekezo@catv296.ne.jp>
 * HISAMATSU tatsuaki

 * Ken Friece <nesterdc@yahoo.com>
 * Dave Arnold <RedDevil163@hotmail.com> 

 * cheat creator:
     Monyons (Cheat Mania / http://cheatmania.vg-network.com/)

 * all staffs around Nester.
 * all staffs of NesterDC theme designers, CD image creators. 
 * all staffs around Dreamcast emulation scene.


========================================
contact: Takayama Fumihiko <tekezo@catv296.ne.jp>
         http://nemesis.kaz.ac/~fumihit/nesterdc/



