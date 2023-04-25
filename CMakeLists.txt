cmake_minimum_required(VERSION 3.10)

# Set the project name
project(MyProject)

# Set C++ standard to C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add include directory
include_directories(include)

# Add executable
add_executable(MyProject
    src/CircleOfFifthsComponent.cpp
    src/MainComponent.cpp
    src/main.cpp
)

# Add compiler flags
target_compile_options(MyProject PRIVATE -Wall -Wextra -pedantic)

# Generate ninja build files
set(CMAKE_GENERATOR "Ninja")