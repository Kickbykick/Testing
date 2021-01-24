#!/bin/bash
export PATH="$PATH":"/opt/hostedtoolcache/flutter/1.22.5-stable/x64/.pub-cache/bin"
flutter pub global activate dart_dot_reporter
flutter test --machine > test_info.log || echo 'Tests failed'
flutter pub global run dart_dot_reporter test_info.log
echo "hello"