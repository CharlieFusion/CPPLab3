cmake_minimum_required(VERSION 3.10)
project(lab3)

# Находим пакет OpenMP
find_package(OpenMP REQUIRED)

# Проверяем, найден ли OpenMP
if(OpenMP_CXX_FOUND)
    message(STATUS "OpenMP found, version: ${OpenMP_CXX_VERSION}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
else()
    message(FATAL_ERROR "OpenMP not found")
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(ex1 src/ex1.cpp)
add_executable(ex2 src/ex2.cpp)
add_executable(ex3 src/ex3.cpp)
add_executable(ex4 src/ex4.cpp)
add_executable(ex5 src/ex5.cpp)

target_link_libraries(ex1 OpenMP::OpenMP_CXX)
target_link_libraries(ex2 OpenMP::OpenMP_CXX)
target_link_libraries(ex3 OpenMP::OpenMP_CXX)
target_link_libraries(ex4 OpenMP::OpenMP_CXX)
target_link_libraries(ex5 OpenMP::OpenMP_CXX)