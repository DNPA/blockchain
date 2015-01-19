all: fast

static: *.cpp *.h
	g++ *.cpp -o blockchain.legacy

fast: *.cpp *.h
	g++ *.cpp -o blockchaintool -DUSE_CRYPTOPP_LIBRARY -lcrypto++

pedantic: *.cpp *.h
	g++ -Wall -Wextra -Wold-style-cast -Wpointer-arith -Wcast-qual -Weffc++ -Wunused-function -Wunused-variable -Wunknown-pragmas -Wswitch-enum *.cpp -o blockchaintool -DUSE_CRYPTOPP_LIBRARY -lcrypto++

run:	blockchain.out
	./blockchain.out
