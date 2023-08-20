#!/bin/bash
# cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -S $PWD/qst-front-end -B $PWD/qst-front-end/build -G Ninja
cd qst-front-end/qst-proto
# cmake . --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -Bbuild -G Ninja .
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -S$PWD -Bbuild -G Ninja
cmake --build build --config Release --target qst-grpc-cpp-gen --
cd ..
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -S$PWD -Bbuild -G Ninja
cmake --build build --config Release --target qst-grpc-cpp --
cmake --build build --config Release --target qst-f --
cd ../qst-back-end/qst-proto
# cmake . --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -Bbuild -G Ninja .
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -S$PWD -Bbuild -G Ninja
cmake --build build --config Release --target qst-grpc-cpp-gen --
cd ..
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -S$PWD -Bbuild -G Ninja
cmake --build build --config Release --target qst-b --