flutter pub global activate dart_dot_reporter
export PATH="$PATH":"/opt/hostedtoolcache/flutter/1.22.5-stable/x64/.pub-cache/bin"
flutter test --machine > test_info.log || echo 'Tests failed'
dart_dot_reporter test_info.log > result.log
echo "hello"