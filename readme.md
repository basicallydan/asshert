# Shalutations

Asshert is a bash-powered assertion library written for the programmer who wants
to add a little bit of panache to their tests.

Perfect for writing language-agnostic tests, asshert can test the output of your
application as long as it writes to stdout.

## Install

```bash
# Install using homebrew
brew install asshert

# Clone from source
git clone git@github.com:basicallydan/asshert.git
```

## Use

```bash
source assert

assertTrue "1==1"
# returns 0. Excellent.

assertTrue "1==2"
# prints "1==2"==False. Expected "1==2"==True and returns 1
```

## It doesn't work with strings!

I'm working on it. Watch this space.

## Why?

The author of this simple tool ([@basicallydan]) was writing a whole load of
implementations of [Conway's Game of Life] and realised that a single unit test
suite for testing them all (since they can all output to `stdout`) would be
nice. Since he was on a train while he came to this realisation, he had no
Wifi, and was forced to write his own assertion library in bash.

### I still don't see why

Well, it's fun and interesting.

[@basicallydan]:https://github.com/basicallydan
