flutter pub global activate dart_dot_reporter
flutter test --machine > test_info.log || echo 'Tests failed'
dart_dot_reporter test_info.log > result.log
echo "hello"