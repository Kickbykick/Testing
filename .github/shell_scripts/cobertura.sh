#!/bin/bash
curl -O https://raw.githubusercontent.com/eriwen/lcov-to-cobertura-xml/master/lcov_cobertura/lcov_cobertura.py
flutter test --coverage
python3 lcov_cobertura.py coverage/lcov.info --output coverage/coverage.xml
echo "sick"