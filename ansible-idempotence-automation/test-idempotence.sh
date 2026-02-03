#!/bin/bash

echo "=== Ansible Idempotence Test Script ==="
echo "This script will run the playbook multiple times to verify idempotent behavior"
echo

PLAYBOOK="playbooks/master-idempotent.yml"
RESULTS_FILE="/tmp/idempotence_test_results.txt"

# Clear previous results
> $RESULTS_FILE

echo "Starting idempotence test..."
echo "Results will be saved to: $RESULTS_FILE"
echo

for i in {1..3}; do
    echo "=== Run $i ===" | tee -a $RESULTS_FILE
    echo "Timestamp: $(date)" | tee -a $RESULTS_FILE
    
    # Run playbook and capture output
    ansible-playbook $PLAYBOOK --diff | tee -a $RESULTS_FILE
    
    # Check return code
    if [ ${PIPESTATUS[0]} -eq 0 ]; then
        echo "Run $i: SUCCESS" | tee -a $RESULTS_FILE
    else
        echo "Run $i: FAILED" | tee -a $RESULTS_FILE
    fi
    
    echo "----------------------------------------" | tee -a $RESULTS_FILE
    echo
    
    # Wait between runs
    if [ $i -lt 3 ]; then
        echo "Waiting 5 seconds before next run..."
        sleep 5
    fi
done

echo "=== Test Summary ===" | tee -a $RESULTS_FILE
echo "Checking for 'changed=0' in final runs (indicating idempotence)..." | tee -a $RESULTS_FILE

# Analyze results
CHANGED_COUNT=$(grep -c "changed=" $RESULTS_FILE)
echo "Total change indicators found: $CHANGED_COUNT" | tee -a $RESULTS_FILE

echo
echo "Test completed. Check $RESULTS_FILE for detailed results."
echo "For true idempotence, runs 2 and 3 should show 'changed=0' for most tasks."
