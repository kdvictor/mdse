cmake_minimum_required(VERSION 3.16)

project(mdse)

#find QT
find_package(Qt6 COMPONENTS Quick REQUIRED)
message("Qt6: ${Qt6_DIR}")

#[[
set(CMAKE_AUTOMOC ON)
作用: 自动运行 moc（Meta-Object Compiler）。
场景: 当你使用 Qt 的信号和槽机制、Q_OBJECT 宏或者其他 Qt 的元对象系统时，
moc 工具会生成对应的源文件。CMAKE_AUTOMOC ON 命令告诉 CMake 自动查找并处理这些宏，
生成相应的 moc_*.cpp 文件，并将它们添加到你的项目构建中。
set(CMAKE_AUTORCC ON)
作用: 自动运行 rcc（Resource Compiler）。
场景: Qt 提供了一种将资源文件（如图片、UI 文件、翻译文件等）嵌入到可执行文件中的机制，
使用 rcc 工具将 .qrc 文件编译成 C++ 代码。CMAKE_AUTORCC ON 命令让 CMake 
自动检测并处理这些 .qrc 文件，生成对应的 qrc_*.cpp 文件，并添加到项目构建中。
]]

set(CMAKE_AUTOMOC ON)
SET(CMAKE_AUTORCC ON)

add_executable(${PROJECT_NAME} main.cpp
 qml.qrc)

target_link_libraries(${PROJECT_NAME} Qt6::Quick)
