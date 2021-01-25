curl -O https://raw.githubusercontent.com/eriwen/lcov-to-cobertura-xml/master/lcov_cobertura/lcov_cobertura.py
flutter doctor
flutter test --coverage
dartanalyzer --options analysis_options.yaml
python3 lcov_cobertura.py coverage/lcov.info --output coverage/coverage.xml