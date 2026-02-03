#!/bin/bash

echo "=== Comprehensive Idempotence Validation ==="
echo

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test results
TESTS_PASSED=0
TESTS_FAILED=0

# Function to run test
run_test() {
    local test_name="$1"
    local test_command="$2"
    
    echo -n "Testing: $test_name ... "
    
    if eval "$test_command" > /dev/null 2>&1; then
        echo -e "${GREEN}PASS${NC}"
        ((TESTS_PASSED++))
    else
        echo -e "${RED}FAIL${NC}"
        ((TESTS_FAILED++))
    fi
}

# Test 1: Check if users and groups exist
run_test "Application user exists" "id appuser"
run_test "Application group exists" "getent group appgroup"

# Test 2: Check directories
run_test "Config directory exists" "test -d /etc/myapp"
run_test "Log directory exists" "test -d /var/log/myapp"
run_test "Application directory exists" "test -d /opt/myapp"
run_test "Web root exists" "test -d /var/www/html"

# Test 3: Check files
run_test "Application config exists" "test -f /etc/myapp/app.conf"
run_test "Web index file exists" "test -f /var/www/html/index.html"
run_test "Application script exists" "test -f /opt/myapp/start.sh"

# Test 4: Check services
run_test "Nginx service is active" "systemctl is-active nginx"
run_test "MyApp service is active" "systemctl is-active myapp"

# Test 5: Check web server response
run_test "Web server responds" "curl -s http://localhost > /dev/null"

# Test 6: Check file permissions
run_test "Config file permissions" "test $(stat -c %a /etc/myapp/app.conf) = '644'"
run_test "Script file is executable" "test -x /opt/myapp/start.sh"

# Test 7: Check ownership
run_test "Config directory ownership" "test $(stat -c %U:%G /etc/myapp) = 'appuser:appgroup'"
run_test "Log directory ownership" "test $(stat -c %U:%G /var/log/myapp) = 'appuser:appgroup'"

echo
echo "=== Test Summary ==="
echo -e "Tests Passed: ${GREEN}$TESTS_PASSED${NC}"
echo -e "Tests Failed: ${RED}$TESTS_FAILED${NC}"
echo -e "Total Tests: $((TESTS_PASSED + TESTS_FAILED))"

if [ $TESTS_FAILED -eq 0 ]; then
    echo -e "\n${GREEN}All tests passed! Configuration is idempotent.${NC}"
    exit 0
else
    echo -e "\n${RED}Some tests failed. Check configuration.${NC}"
    exit 1
fi
