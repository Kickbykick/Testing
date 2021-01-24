flutter pub global activate dart_dot_reporter
export PATH="$PATH":"/opt/hostedtoolcache/flutter/1.22.5-stable/x64/.pub-cache/bin"
flutter test --machine > test_info.log || echo 'Tests failed'
flutter pub global run dart_dot_reporter test_info.log > final_result.log
echo "hello"