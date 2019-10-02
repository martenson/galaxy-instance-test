export GALAXY_TEST_DEFAULT_WAIT=1800
get-tool-list -g $GALAXY_URL -o test.galaxy.yml --skip_changeset_revision
shed-tools test -a $GALAXY_API_KEY -g $GALAXY_URL --parallel_tests 10 -t test.galaxy.yml
planemo test_reports tool_test_output.json --test_output_xunit tool_test_output.xunit --test_output tool_test_output.html
