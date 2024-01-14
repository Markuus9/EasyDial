OPCIONS = -Wall -Wextra -Werror -Wno-sign-compare -std=c++14 -g -Wno-deprecated

driver_easydial.exe: driver_easydial.o phone.o easy_dial.o call_registry.o dialog.o
	g++ -o driver_easydial.exe driver_easydial.o phone.o call_registry.o easy_dial.o dialog.o -lesin

driver_easydial.o: driver_easydial.cpp easy_dial.hpp dialog.hpp call_registry.hpp phone.hpp
	g++ -c driver_easydial.cpp $(OPCIONS)

phone.o: phone.cpp phone.hpp phone.rep
	g++ -c phone.cpp $(OPCIONS)

call_registry.o: call_registry.cpp call_registry.hpp call_registry.rep
	g++ -c call_registry.cpp $(OPCIONS)

easy_dial.o: easy_dial.cpp easy_dial.hpp easy_dial.rep
	g++ -c easy_dial.cpp $(OPCIONS)

dialog.o: dialog.cpp dialog.hpp
	g++ -c dialog.cpp $(OPCIONS)

clean:
	rm *.o
	rm *.exe
	rm *.gch