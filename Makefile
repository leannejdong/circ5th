# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++17 -Wall -Wextra -pedantic

# Directories
INCDIR = include
SRCDIR = src
OBJDIR = obj

# Files
TARGET = app
SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS = $(SRCS:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
INCS = -I $(INCDIR)
DEPS = $(wildcard $(INCDIR)/*.h)

# Targets
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCS) -o $@ $^

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp $(DEPS) | $(OBJDIR)
	$(CXX) $(CXXFLAGS) $(INCS) -c -o $@ $<

$(OBJDIR):
	mkdir -p $@

.PHONY: clean

clean:
	rm -rf $(OBJDIR) $(TARGET)
