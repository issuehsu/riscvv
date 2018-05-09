
default:
	@echo "make view_rtl       to open rtl with verdi"
	@echo "make update_rtl_f   to update rtl file"
	@echo "make clean          to clean temp. files"
update_rtl_f:
	find ./rtl -name "*.v" | grep -v "defines" > rtl/rtl.f
view_rtl:
	verdi -sv -nologo -f rtl/rtl.f +incdir+rtl/e203/core +incdir+rtl/e203/perips
clean:
	rm -rf *~ novas* verdiLog
