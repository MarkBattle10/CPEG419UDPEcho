CFLAGS=-Wall

all: UDPEchoClient UDPEchoServer

UDPEchoClient :	UDPEchoClient.o	DieWithError.o 

UDPEchoServer :	UDPEchoServer.o	DieWithError.o 

DieWithError.o : DieWithError.c
				gcc -c DieWithError.c

UDPEchoClient.o: UDPEchoClient.c
				gcc -c UDPEchoClient.c

UDPEchoServer.o: UDPEchoServer.c 
				gcc -c UDPEchoServer.c

clean:
		rm -f	UDPEchoClient.o	DieWithError.o UDPEchoServer.o UDPEchoClient UDPEchoServer
				
