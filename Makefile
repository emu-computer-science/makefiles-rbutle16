# Compiler and flags
CC = clang
CFLAGS = -c

# Source files and object files
SRCS = driver.c file1.c file2.c
OBJS = $(SRCS:.c=.o)
EXEC = makefileAssignment

# Default target to build all
all: $(EXEC)

# Rule to create the executable
$(EXEC): $(OBJS)
	$(CC) -o $(EXEC) $(OBJS)

# Rule to compile .c files to .o files
%.o: %.c headers.h
	$(CC) $(CFLAGS) -o $@ $<

# Clean rule to remove generated files
clean:
	rm -f $(EXEC) $(OBJS)

# Phony targets (not actual files)
.PHONY: all clean
