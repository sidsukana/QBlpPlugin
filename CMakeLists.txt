cmake_minimum_required(VERSION 3.27)

project(qblp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_DEBUG_POSTFIX d)

find_package(Qt6 REQUIRED COMPONENTS Core Gui)

set(QBLP_SOURCE_FILES
    qblpplugin.h
    qblpplugin.cpp
    qblphandler.h
    qblphandler.cpp
)

add_subdirectory(dep)

qt_add_plugin(${PROJECT_NAME} SHARED CLASS_NAME QExrPlugin)
target_sources(${PROJECT_NAME} PRIVATE ${QBLP_SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Core Qt6::Gui libsquish::Squish)
