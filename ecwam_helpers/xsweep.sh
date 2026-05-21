#!/usr/bin/env bash

# experiment name
test=etopo1_oper_an_fc_O48_cy50r1.yml

exp=$(basename $test .yml)

rundir=/path/to/model/output/${exp}

# make directories
mkdir -p $rundir
mkdir -p $rundir/logs
mkdir -p $rundir/restart
mkdir -p $rundir/output

# copy logs, restart files and output files to the run directory
cp -a logs/*     $rundir/logs/
cp -a restart/*  $rundir/restart/
cp -a output/*   $rundir/output/
