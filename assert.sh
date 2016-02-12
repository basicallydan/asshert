#!/usr/bin/env bash 

reportFailure() {
  echo "$1 failed"
}

assertTrue() {
  if (($1)); then
    return 0
  else
    echo "Result: \"$1\"==False. Expected \"$1\"==True.";return 1
  fi
}

assertFalse() {
  if (($1)); then
    echo "Result: \"$1\"==True. Expected \"$1\"==False.";return 1
  else
    return 0
  fi
}

assertEqual() {
  assertTrue "$1==$2"
  return $?
}

assertNotEqual() {
  assertFalse "$1==$2"
  return $?
}
