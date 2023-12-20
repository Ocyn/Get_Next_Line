<br/>
<p>
  <a href="https://github.com/Ocyn/Get_Next_Line">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/42_Logo.svg/768px-42_Logo.svg.png" alt="Logo" width="80" height="80">
  </a>

  <h1>Get Next Line</h1>

  <p>
    42 School Project | Made in 2023 - 2024
    <br/>
    <br/>
  </p>
</p>

![Contributors](https://img.shields.io/github/contributors/Ocyn/Get_Next_Line?color=dark-green) ![Issues](https://img.shields.io/github/issues/Ocyn/Get_Next_Line) 

## Table Of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Authors](#authors)
* [Acknowledgements](#acknowledgements)

## About The Project

The get_next_line function is designed to read a line from a file descriptor (fd) in the C programming language. Its main purpose is to provide a versatile and efficient way to handle input from files, allowing developers to read lines from a file one at a time.

Here's a brief overview of how the get_next_line function typically works:

Function Signature:
The get_next_line function is usually declared with the following signature in the get_next_line.h header file:

```c
char *get_next_line(int fd);
```
where fd is the file descriptor from which the function reads.

Memory Allocation:
The function dynamically allocates memory to store the characters of the read line. This memory allocation is handled by the function internally, and it is the responsibility of the caller to free the allocated memory when it is no longer needed.

Reading Lines:
The function reads characters from the specified file descriptor until a newline character ('\n') is encountered, indicating the end of a line. The function returns a pointer to the line read, excluding the newline character. If the end of the file is reached, it returns NULL.

Buffer Management:
The function employs a buffer to efficiently read data from the file descriptor. The size of this buffer is defined by the BUFFER_SIZE macro, which can be adjusted based on performance requirements.

## Built With

Here are a few examples.

* [C](https://en.wikipedia.org/wiki/C_(programming_language))

## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

If you don't have Make
* Make

```sh
apt-get install build-essential make
```

### Installation

Clone the repo

```sh
git clone https://github.com/Ocyn/Get_Next_Line.git
cd Get_Next_Line/
```

**Make options**
- Compile
```sh
Make
```
- Clear .o files
```sh
Make clean
```
- Clear all (.o files and .a library)
```sh
Make fclean
```
- Re-compile (clear all and compile)
```sh
Make re
```

## Usage

Compilation and Usage
Include the Header File (get_next_line.h):
Include the get_next_line.h header file at the beginning of your program or source file to access the function prototypes.
```c
#include "get_next_line.h"
```

Compile the Library:
Compile the library using the provided Makefile. Execute the make command to create the get_next_line.a library.
```bash
make
```
Link with Your Program:
When compiling your program, link with the get_next_line library by specifying the path to the get_next_line.a file.
```bash
gcc -o my_program my_program.c -L. -lget_next_line
```

Use get_next_line Function:
Call the get_next_line function with the desired file descriptor to read lines from a file.
```c
#include "get_next_line.h"

int main(void) {
    int fd = open("example.txt", O_RDONLY);
    char *line;

    while ((line = get_next_line(fd))) {
        printf("Line: %s\n", line);
        free(line);
    }

    close(fd);
    return 0;
}
```
Clean Up:
After finishing, clean up the generated object files by running make clean, and if necessary, delete the get_next_line.a file with make fclean.
```bash
make clean
```
This project provides a convenient way to handle file input in C programs, allowing you to read lines from different file descriptors seamlessly.
## Authors

* **Ocyn** - *A Random Dev* - [Ocyn](https://github.com/Ocyn) - *Made the project*

## Acknowledgements

* [42 School](https://github.com/42School)
* 
