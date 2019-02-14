#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: missing first parameter: lower case project name"
  echo "Usage: $0 lower_case_project_name 'Project Name'"
  exit 1
fi

if [ -z "$2" ]
then
  echo "$0: missing second parameter: 'Project Name'"
  echo "Usage: $0 lower_case_project_name 'Project Name'"
  exit 2
fi

to_lowername=$1
to_fullname=$2
from_lowername=$3
from_fullname=$4

if [ -z "$from_lowername" ]
then
  from_lowername=homebrew
fi

if [ -z "$from_fullname" ]
then
  from_fullname=Homebrew
fi

vim -c "%s/$from_lowername/$to_lowername/g|wq" ./grafana.sh
