#!/usr/bin/env bash 

reportFailure() {
  echo "$1 failed"
}

assertTrue() {
  if (($1)); then
    return 0
  else
    reportFailure $1; return 1
  fi
}

assertEqual() {
  assertTrue "$1==$2"
  return $?
}

