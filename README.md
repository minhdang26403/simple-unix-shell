# Simple Unix Shell

## Introduction

This is a simple Unix shell that supports job control and executing executable files. This project is from the Introduction to Computer System course (CMU) that I self-study.

## Overview

A shell is an interactive command-line interpreter that runs programs on behalf of the user. A shell repeatedly prints a prompt, waits for a *command-line* on `stdin`, and then carries out some action.

The first word in the command line can be either the name of a built-in command or the pathname of an executable file. The remaining words are command-line arguments.

If the command line ends with an ampersand `”&”`, then the job runs in the *background*, meaning that the shell does not wait for the job to terminate before printing the prompt and awaiting the next command line. Otherwise, the job runs in the foreground, which means that the shell waits for the job to terminate before awaiting the next command line. Thus, at any point in time, at most one job can be running in the foreground.

This shell supports the notion of *job control*, which allows users to move jobs back and forth between background and foreground, and to change the process state (running, stopped, or terminated) of the process in a job. Typing `ctrl-c` causes a SIGINT signal to be delivered to each process in the foreground job. The default action for SIGINT is to terminate the process. Similarly, typing `ctrl-z` causes a SIGTSTP signal to be delivered to each process in the foreground job. The default action for SIGTSTP is to place a process in the stopped state, where it remains until it is awakened by the receipt of a SIGCONT signal.

This shell also supports the following built-in commands:

- The `quit` command terminates the shell.
- The `jobs` command lists all background jobs.
- The `bg <job>` command restarts `<job>` by sending it a SIGCONT signal, and then runs it in the background. The `<job>` argument can be either a process ID (PID) or a job ID (JID).
- The `fg <job>` command restarts `<job>` by sending it a SIGCONT signal, and then runs it in the foreground. The `<job>` argument can be either a PID or a JID.
- The `kill <job>` command terminates `<job>` by sending it a SIGINT signal. The `<job>` argument can be either a PID or a JID.

A process ID (PID) is a positive integer assigned by the shell, for example `"4"`. A job ID (JID) is denoted on the command line by the prefix `%`, for example `"%4"`.

## Usage

1. Clone this repo
2. `cd` into the repo, and the use the command `make`
3. Run the executable `tsh` with optional argument `-v` for verbose mode.
```
unix> ./tsh [-v]
```

## Testing

There are also a total of 16 trace files to test the shell. To run the test, typing 
```
unix> ./sdriver.pl -t traces/trace{01-16}.txt -s ./tsh -a "p"
```

or

```
unix> make test{01-16}
```