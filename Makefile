#コンパイラ
CC :=g++

#インクルードファイル
CFAGS :=`pkg-config opencv --cflags` `pkg-config opencv --libs`
LDFLAGS :=

#ディレクトリ内の全てのC++ファイルをコンパイル
SOURCES :=$(wildcard *.cpp)

#C++ファイルの.cppを取ったものを実行ファイルの名前とする
EXECUTABLE :=$(SOURCES:.cpp=)

all:$(EXECUTABLE)

$(EXECUTABLE):$(SOURCES)
	$(CC) $< $(LDFLAGS) $(CFAGS) -o $@

clean:
	rm -rf $(EXECUTABLE)
