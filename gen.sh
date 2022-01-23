#!/usr/bin/env bash
protoc -I ./ protos/* --dart_out=grpc:lib/protos
protoc -I /usr/local/opt/protobuf@3.17/include/ /usr/local/opt/protobuf@3.17/include/google/protobuf/empty.proto --dart_out=grpc:lib/protos

flutter pub run build_runner build
flutter pub run import_sorter:main