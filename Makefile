
default:
	@echo "make view_rtl   to open rtl with verdi"
	@echo "make clean      to clean temp. files"
view_rtl:
	verdi -sv -nologo -f rtl/rtl.f +incdir+rtl/e203/core +incdir+rtl/e203/perips
clean:
	rm -rf *~ novas* verdiLog
