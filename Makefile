CX = g++
CFLAGS = -g -Wall
CVFLAGS = `pkg-config opencv4 --cflags --libs`

SRCS = main.cpp
TARGET = camera
$(TARGET):$(SRCS)
  $(CX) -o $(TARGET) $(SRCS) $(CFLAGS) $(CVFLAGS)
.PHONY: all clean

all: $(TARGET)

clean:
  rm -f $(OBJS) $(TARGET)
