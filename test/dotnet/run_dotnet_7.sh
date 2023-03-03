#!/bin/bash

set -e

source dev-container-features-test-lib

check "non-root user" test "$(id -u)" -ne 0

pushd example_project
check "dotnet run" bash -c "dotnet run | grep 'Inception'"

reportResults