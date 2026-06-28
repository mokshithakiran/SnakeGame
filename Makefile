CXX = clang++

CXXFLAGS = -std=c++17 -Wall -I/opt/homebrew/include

LDFLAGS = -L/opt/homebrew/lib \
          -lraylib \
          -framework OpenGL \
          -framework Cocoa \
          -framework IOKit \
          -framework CoreVideo

TARGET = SnakeGame
SRC = main.cpp

all:
	$(CXX) $(SRC) -o $(TARGET) $(CXXFLAGS) $(LDFLAGS)

run: all
	./$(TARGET)

clean:
	rm -f $(TARGET)