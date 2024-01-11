OPCIONS = -O0 -g -Wall -Wextra -Werror -Wno-sign-compare -Wno-deprecated -std=c++11

diver_easydial.exe: driver_easydial.o phone.o call_registry.o easy_dial.o dialog.o
	g++ -o driver_easydial.exe driver_easydial.o phone.o call_registry.o easy_dial.o dialog.o -lesin

driver_easydial.o: driver_easydial.cpp dialog.hpp easy_dial.hpp call_registry.hpp phone.hpp
	g++ -c driver_easydial.cpp $(OPCIONS)

dialog.o: dialog.cpp dialog.hpp easy_dial.hpp call_registry.hpp phone.hpp
	g++ -c dialog.cpp $(OPCIONS)

easy_dial.o: easy_dial.cpp easy_dial.hpp easy_dial.rep call_registry.hpp phone.hpp
	g++ -c easy_dial.cpp $(OPCIONS)

call_registry.o: call_registry.cpp call_registry.hpp call_registry.rep phone.hpp
	g++ -c call_registry.cpp $(OPCIONS)

phone.o: phone.cpp phone.hpp phone.rep
	g++ -c phone.cpp $(OPCIONS)

clean:
	rm *.o
	rm *.exe
	rm *.gch

test:
	./driver_easydial.exe < jp_public_phone.in | diff - jp_public_phone.res
	./driver_easydial.exe < jp_public_call_registry.in | diff - jp_public_call_registry.res
