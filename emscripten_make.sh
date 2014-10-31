#egrep 'emcc|touch|Entering' typescript-make 

cd src/
touch ../src/config.h-t
clang -O -I../include -c monst.c
clang -O -I../include -c objects.c 
cd ../util/
clang -O -I../include -c -o makedefs.o makedefs.c
clang -o makedefs makedefs.o ../src/monst.o ../src/objects.o
./makedefs -p
./makedefs -o
cd ../src/
# monst.o and objects.o as build-arch objects for makedefs
#  which is executed locally
# Once makdefs is build, we can safely remove them and 
#  rebuild with emcc for target-arch:
rm monst.o objects.o
emcc -g3 -I../include -c monst.c
emcc -g3 -I../include -c objects.c 
touch ../src/hack.h-t
emcc -g3 -I../include -c -o allmain.o allmain.c #fred
emcc -g3 -I../include -c -o alloc.o alloc.c
emcc -g3 -I../include -c -o apply.o apply.c
emcc -g3 -I../include -c -o artifact.o artifact.c
emcc -g3 -I../include -c -o attrib.o attrib.c
emcc -g3 -I../include -c -o ball.o ball.c
emcc -g3 -I../include -c -o bones.o bones.c
emcc -g3 -I../include -c -o botl.o botl.c
emcc -g3 -I../include -c -o cmd.o cmd.c
emcc -g3 -I../include -c -o dbridge.o dbridge.c
emcc -g3 -I../include -c -o decl.o decl.c
emcc -g3 -I../include -c -o detect.o detect.c
emcc -g3 -I../include -c -o dig.o dig.c
emcc -g3 -I../include -c -o display.o display.c
emcc -g3 -I../include -c -o dlb.o dlb.c
emcc -g3 -I../include -c -o do.o do.c
emcc -g3 -I../include -c -o do_name.o do_name.c
emcc -g3 -I../include -c -o do_wear.o do_wear.c
emcc -g3 -I../include -c -o dog.o dog.c
emcc -g3 -I../include -c -o dogmove.o dogmove.c
emcc -g3 -I../include -c -o dokick.o dokick.c
emcc -g3 -I../include -c -o dothrow.o dothrow.c
emcc -g3 -I../include -c -o drawing.o drawing.c
emcc -g3 -I../include -c -o dungeon.o dungeon.c
emcc -g3 -I../include -c -o eat.o eat.c
emcc -g3 -I../include -c -o end.o end.c
emcc -g3 -I../include -c -o engrave.o engrave.c
emcc -g3 -I../include -c -o exper.o exper.c
emcc -g3 -I../include -c -o explode.o explode.c
emcc -g3 -I../include -c -o extralev.o extralev.c
emcc -g3 -I../include -c -o files.o files.c
emcc -g3 -I../include -c -o fountain.o fountain.c
emcc -g3 -I../include -c -o hack.o hack.c
emcc -g3 -I../include -c -o hacklib.o hacklib.c
emcc -g3 -I../include -c -o invent.o invent.c
emcc -g3 -I../include -c -o light.o light.c
emcc -g3 -I../include -c -o lock.o lock.c
emcc -g3 -I../include -c -o mail.o mail.c
emcc -g3 -I../include -c -o makemon.o makemon.c
emcc -g3 -I../include -c -o mapglyph.o mapglyph.c
emcc -g3 -I../include -c -o mcastu.o mcastu.c
emcc -g3 -I../include -c -o mhitm.o mhitm.c
emcc -g3 -I../include -c -o mhitu.o mhitu.c
emcc -g3 -I../include -c -o minion.o minion.c
emcc -g3 -I../include -c -o mklev.o mklev.c
emcc -g3 -I../include -c -o mkmap.o mkmap.c
emcc -g3 -I../include -c -o mkmaze.o mkmaze.c
emcc -g3 -I../include -c -o mkobj.o mkobj.c
emcc -g3 -I../include -c -o mkroom.o mkroom.c
emcc -g3 -I../include -c -o mon.o mon.c
emcc -g3 -I../include -c -o mondata.o mondata.c
emcc -g3 -I../include -c -o monmove.o monmove.c
cd ../util/
./makedefs -m
cd ../src/
emcc -g3 -I../include -c -o monstr.o monstr.c
emcc -g3 -I../include -c -o mplayer.o mplayer.c
emcc -g3 -I../include -c -o mthrowu.o mthrowu.c
emcc -g3 -I../include -c -o muse.o muse.c
emcc -g3 -I../include -c -o music.o music.c
emcc -g3 -I../include -c -o o_init.o o_init.c
emcc -g3 -I../include -c -o objnam.o objnam.c
emcc -g3 -I../include -c -o options.o options.c
emcc -g3 -I../include -c -o pager.o pager.c
emcc -g3 -I../include -c -o pickup.o pickup.c
emcc -g3 -I../include -c -o pline.o pline.c
emcc -g3 -I../include -c -o polyself.o polyself.c
emcc -g3 -I../include -c -o potion.o potion.c
emcc -g3 -I../include -c -o pray.o pray.c
emcc -g3 -I../include -c -o priest.o priest.c
emcc -g3 -I../include -c -o quest.o quest.c
emcc -g3 -I../include -c -o questpgr.o questpgr.c
emcc -g3 -I../include -c -o read.o read.c
emcc -g3 -I../include -c -o rect.o rect.c
emcc -g3 -I../include -c -o region.o region.c
emcc -g3 -I../include -c -o restore.o restore.c
emcc -g3 -I../include -c -o rip.o rip.c
emcc -g3 -I../include -c -o rnd.o rnd.c
emcc -g3 -I../include -c -o role.o role.c
emcc -g3 -I../include -c -o rumors.o rumors.c
emcc -g3 -I../include -c -o save.o save.c
emcc -g3 -I../include -c -o shk.o shk.c
emcc -g3 -I../include -c -o shknam.o shknam.c
emcc -g3 -I../include -c -o sit.o sit.c
emcc -g3 -I../include -c -o sounds.o sounds.c
emcc -g3 -I../include -c -o sp_lev.o sp_lev.c
emcc -g3 -I../include -c -o spell.o spell.c
emcc -g3 -I../include -c -o steal.o steal.c
emcc -g3 -I../include -c -o steed.o steed.c
emcc -g3 -I../include -c -o teleport.o teleport.c
emcc -g3 -I../include -c -o timeout.o timeout.c
emcc -g3 -I../include -c -o topten.o topten.c
emcc -g3 -I../include -c -o track.o track.c
emcc -g3 -I../include -c -o trap.o trap.c
emcc -g3 -I../include -c -o u_init.o u_init.c
emcc -g3 -I../include -c -o uhitm.o uhitm.c
emcc -g3 -I../include -c -o vault.o vault.c
cd ../util/
./makedefs -z
cd ../src/
emcc -g3 -I../include -c -o vision.o vision.c
emcc -g3 -I../include -c -o vis_tab.o vis_tab.c
emcc -g3 -I../include -c -o weapon.o weapon.c
emcc -g3 -I../include -c -o were.o were.c
emcc -g3 -I../include -c -o wield.o wield.c
emcc -g3 -I../include -c -o windows.o windows.c
emcc -g3 -I../include -c -o wizard.o wizard.c
emcc -g3 -I../include -c -o worm.o worm.c
emcc -g3 -I../include -c -o worn.o worn.c
emcc -g3 -I../include -c -o write.o write.c
emcc -g3 -I../include -c -o zap.o zap.c
emcc -g3 -I../include -c ../sys/share/ioctl.c
emcc -g3 -I../include -c ../sys/unix/unixmain.c
#emcc -g3 -I../include -c ../sys/share/unixtty.c
emcc -g3 -I../include -I ../../curses.js/pdcurses34/ -I ../../curses.js/pdcurses34/pdcurses -I ../../curses.js/pdcurses34/sdl1/ -c ../sys/share/unixtty.c
emcc -g3 -I../include -c ../sys/unix/unixunix.c
emcc -g3 -I../include -c ../sys/unix/unixres.c
emcc -g3 -I../include -c ../win/tty/getline.c
emcc -g3 -I../include -I ../../curses.js/pdcurses34/ -I ../../curses.js/pdcurses34/pdcurses -I ../../curses.js/pdcurses34/sdl1/ -c ../win/tty/termcap.c
emcc -g3 -I../include -c ../win/tty/topl.c
emcc -g3 -I../include -c ../win/tty/wintty.c
emcc -g3 -I../include -c -o version.o version.c
#FIXME below: insert includs? -o nethack.html?
em++ -g3 -o nethack.bc monst.o objects.o allmain.o alloc.o apply.o artifact.o attrib.o ball.o bones.o botl.o cmd.o dbridge.o decl.o detect.o dig.o display.o dlb.o do.o do_name.o do_wear.o dog.o dogmove.o dokick.o dothrow.o drawing.o dungeon.o eat.o end.o engrave.o exper.o explode.o extralev.o files.o fountain.o hack.o hacklib.o invent.o light.o lock.o mail.o makemon.o mapglyph.o mcastu.o mhitm.o mhitu.o minion.o mklev.o mkmap.o mkmaze.o mkobj.o mkroom.o mon.o mondata.o monmove.o monstr.o mplayer.o mthrowu.o muse.o music.o o_init.o objnam.o options.o pager.o pickup.o pline.o polyself.o potion.o pray.o priest.o quest.o questpgr.o read.o rect.o region.o restore.o rip.o rnd.o role.o rumors.o save.o shk.o shknam.o sit.o sounds.o sp_lev.o spell.o steal.o steed.o teleport.o timeout.o topten.o track.o trap.o u_init.o uhitm.o vault.o vision.o vis_tab.o weapon.o were.o wield.o windows.o wizard.o worm.o worn.o write.o zap.o  ioctl.o unixmain.o unixtty.o unixunix.o unixres.o getline.o termcap.o topl.o wintty.o version.o ../../curses.js/dist/libcurses.o -lncurses
cd ..
