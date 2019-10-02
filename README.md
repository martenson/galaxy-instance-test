# Test the whole tool set of a Galaxy instance

1. Install dependencies from requirements.txt (use virtualenv)
1. Set maximum wait time for each test in seconds, recommended size: `export GALAXY_TEST_DEFAULT_WAIT=1800`
1. Set `GALAXY_URL` `GALAXY_API_KEY` for the instance you want to test 
1. Execute `run_test.sh`
