obj = main.o get_word.o initialize.o  add_word.o dump_word.o finalize.o
edit : $(obj)
	cc -o edit $(obj)

main.o : get_word.h word_manage.h
get_word.o : 
initialize.o :word_manage.h  word_manage_p.h
add_word.o : word_manage.h word_manage_p.h
dump_word.o :word_manage.h  word_manage_p.h
finalize.o :word_manage.h  word_manage_p.h

.PYTHON : clean
clean : 
	rm  edit $(obj)
