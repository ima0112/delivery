#!/usr/bin/env bash
protoc -I ./ protos/* --dart_out=grpc:lib/protos

flutter pub run build_runner build
flutter pub run import_sorter:main