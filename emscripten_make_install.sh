rm -rf /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir
mkdir -p /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir/save
chmod 0755 /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir/save
( make dofiles )
target=`sed -n					\
		-e '/librarian/{' 			\
		-e	's/.*/dlb/p' 			\
		-e	'q' 				\
		-e '}' 					\
	  	-e '$s/.*/nodlb/p' < dat/options` ;	\
	make dofiles-${target-nodlb}


( cd dat ; cp  license help hh cmdhelp history opthelp wizhelp dungeon asmodeus.lev baalz.lev bigrm-?.lev castle.lev fakewiz?.lev juiblex.lev knox.lev medusa-?.lev minend-?.lev minefill.lev minetn-?.lev oracle.lev orcus.lev sanctum.lev soko?-?.lev tower?.lev valley.lev wizard?.lev astral.lev air.lev earth.lev fire.lev water.lev ???-goal.lev ???-fil?.lev ???-loca.lev ???-strt.lev data oracles options quest.dat rumors /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir )
( cd /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir ; true games  license help hh cmdhelp history opthelp wizhelp dungeon asmodeus.lev baalz.lev bigrm-?.lev castle.lev fakewiz?.lev juiblex.lev knox.lev medusa-?.lev minend-?.lev minefill.lev minetn-?.lev oracle.lev orcus.lev sanctum.lev soko?-?.lev tower?.lev valley.lev wizard?.lev astral.lev air.lev earth.lev fire.lev water.lev ???-goal.lev ???-fil?.lev ???-loca.lev ???-strt.lev data oracles options quest.dat rumors ; \
			chmod 0644  license help hh cmdhelp history opthelp wizhelp dungeon asmodeus.lev baalz.lev bigrm-?.lev castle.lev fakewiz?.lev juiblex.lev knox.lev medusa-?.lev minend-?.lev minefill.lev minetn-?.lev oracle.lev orcus.lev sanctum.lev soko?-?.lev tower?.lev valley.lev wizard?.lev astral.lev air.lev earth.lev fire.lev water.lev ???-goal.lev ???-fil?.lev ???-loca.lev ???-strt.lev data oracles options quest.dat rumors )
cp src/nethack* /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir
cp util/recover /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir
rm -f /home/freddy/opt/nethack-3.4.3-js/games/nethack /home/freddy/opt/nethack-3.4.3-js/games/nethack.*
sed -e 's;./games/lib/nethackdir;/home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir;' \
		-e 's;HACKDIR/nethack;HACKDIR/nethack;' \
		< sys/unix/nethack.sh \
		> /home/freddy/opt/nethack-3.4.3-js/games/nethack
chmod 04755 /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir/nethack
chmod 0755 /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir/recover
true games /home/freddy/opt/nethack-3.4.3-js/games/nethack
chmod 0755 /home/freddy/opt/nethack-3.4.3-js/games/nethack
touch /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir/perm /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir/record /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir/logfile
( cd /home/freddy/opt/nethack-3.4.3-js/games/lib/nethackdir ; chmod 0644 perm record logfile )


