# RED GREEN BLUE

Inspired by https://utcc.utoronto.ca/~cks/space/blog/unix/ShellPipelineIndeterminate

```bash
( echo red ; echo green 1>&2 ) | echo blue
```

Quoting [Hackaday](https://hackaday.com/2019/03/10/bash-pipeline-puzzle-green-blue-or-blue-green/):

    You’d like to think it prints three lines: red, green, and blue. But
    would you be surprised to find out that it can sometimes output
    “blue green” and sometimes just output blue. The first surprise is
    that it isn’t deterministic. But the second thing that is surprising
    is the sometimes the entire left-hand part of the line doesn’t do
    anything.

<!-- vim: set ts=4 sw=4 tw=72 et : -->
