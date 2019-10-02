export GALAXY_TEST_DEFAULT_WAIT=1800
pip install --index-url https://wheels.galaxyproject.org/simple --extra-index-url https://pypi.python.org/simple --upgrade planemo psutil==5.6.2
pip install --upgrade https://github.com/galaxyproject/ephemeris/archive/master.zip
get-tool-list -g $GALAXY_URL -o test.galaxy.yml --skip_changeset_revision
shed-tools test -a $API_KEY -g $GALAXY_URL --parallel_tests 10 -t test.galaxy.yml
planemo test_reports tool_test_output.json --test_output_xunit tool_test_output.xunit --test_output tool_test_output.html
