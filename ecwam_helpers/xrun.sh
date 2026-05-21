#!/usr/bin/env bash

# define the test to run (defined in the tests directory)
test=etopo1_oper_an_fc_O48_cy50r1.yml

# run preprocessor (usually only has to be done once)
build/bin/ecwam-run-preproc  --config=tests/$test

# run presets (usually only has to be done once)
build/bin/ecwam-run-preset   --config=tests/$test

# run model
build/bin/ecwam-run-model    --config=tests/$test
