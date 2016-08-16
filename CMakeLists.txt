cmake_minimum_required(VERSION 3.5)
project(PatternAn)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(CMAKE_AUTOMOC ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_PREFIX_PATH Y:/Qt/Qt5.5.1)

find_package(Qt5Core REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)
qt5_add_resources(RESOURCE qml.qrc)


include_directories(Resources, Source)


file(GLOB ProjCpp
        "main.cpp"
        "*/*.cpp"
        )


add_executable(PatternAn ${ProjCpp} ${RESOURCE})

qt5_use_modules(PatternAn Core Widgets Quick)
