#!/bin/bash
if [ "$1" == "local" ]; then
   mv test/spatialite_experiments.py  test/test_with_spatialite.py # only run spatialite tests in local build, Travis has problems
fi
nosetests --with-coverage --cover-erase --cover-package=TimeManager
if [ "$1" == "local" ]; then
    mv test/test_with_spatialite.py test/spatialite_experiments.py
fi
