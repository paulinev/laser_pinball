all: top.bit

%.v: %.vpp
	vpp $< > $@

%.xst:
	echo "time short" > $@
	echo "run -glob_opt max_delay" >> $@
	echo "-ifn $*.v" >> $@
	echo "-ifmt Verilog" >> $@
	echo "-ofn $*.ngc" >> $@
	echo "-p xc2v6000-bf957-4" >> $@
#	echo "-p xc3s1000-ft256-4" >> $@
	echo "-write_timing_constraints yes" >> $@
	echo "-opt_mode Speed" >> $@
	echo "-opt_level 1" >> $@
	echo "-top labkit_beta2demo" >> $@

%.ngc: %.xst %.v
	xst -ifn $<

%.ngd: %.ngc
	ngdbuild -aul $* -uc labkit.ucf
#	ngdbuild -aul $* -uc starter_board.ucf

%.ncd: %.ngd
	map -pr b -timing -detail $*

%_par.ncd: %.ncd
	par -w $* $*_par

%.bit: %_par.ncd
	bitgen -g startupClk:jtagClk -w $*_par $*.bit

%.imp:
	echo "setMode -cf" > $@
	echo "addConfigDevice -size 0 -name systemace -path ." >> $@
	echo "addCollection -name sa_temp" >> $@
	echo "addDesign -version 0 -name sa_temp" >> $@
	echo "addDeviceChain -index 0" >> $@
	echo "addDevice -p 1 -file $*.bit" >> $@
	echo "generate -active sa_temp" >> $@
	echo "quit" >> $@

%.ace: %.bit %.imp
	impact -batch $*.imp
	mv sa_temp/sa_temp/sa_temp.ace $*.ace
	rm -rf sa_temp
	rm xilinx.sys

do-not-clean:
# This is to make sure xilinx-clean is not the default target
	@echo "Meep! Define your default target before including 'xilinx.mk'."

xilinx-clean:
	rm -rf *.lst *.ngc *.ngd *.ncd *.bld *.mrp *.ngm *.pcf *.srp *.bgn \
	       *.dly *.drc *.pad *.xpi *.par *.nav *.imp *.csv *.twr *.twx \
               *.txt *.dsn _impact* *.ut *_par.xst xst

verilog-clean:
	rm -rf *.trn *.vdc verilog.log

very-clean: xilinx-clean verilog-clean
	rm -rf *.ace *.bit

