# **Custom Libft - My Personal C Library**

## **Overview**
This repository contains my personal version of `Libft`, originally based on the 42 curriculum's Libft project. Over time, I have extended and modified it, freeing it from the original project's constraints. It now features additional functions, reorganized folders, and an improved Makefile for better usability and clarity.

## **How to Use**
1. Clone the repository:
   ```bash
   git clone https://github.com/oliverkingz/Libft_OZ.git
   cd Libft_OZ
2. Build the library:
   ```bash
   make
3. Don't forget to include it in your C files
   ```C
   #include "libft.h"

## **Features**
### **Character Check Functions**
- Utilities to evaluate characters based on type (`ft_isalpha`, `ft_isdigit`, etc.).
- Extended support with added functions like `ft_islower`, `ft_isupper`, and `ft_isspace`.

| **Function**                   | **Description**                                   |
| ------------------------------ | ------------------------------------------------- |
| [ft_isalpha](https://github.com/oliverkingz/Libft_OZ/blob/main/src/is/ft_isalpha.c) | Checks if the character is alphabetic            |
| [ft_isalnum](https://github.com/oliverkingz/Libft_OZ/blob/main/src/is/ft_isalnum.c) | Checks if the character is alphanumeric          |
| [ft_isascii](https://github.com/oliverkingz/Libft_OZ/blob/main/src/is/ft_isascii.c) | Checks if the character belongs to ASCII         |
| [ft_isdigit](https://github.com/oliverkingz/Libft_OZ/blob/main/src/is/ft_isdigit.c) | Checks if the character is a digit               |
| [ft_isprint](https://github.com/oliverkingz/Libft_OZ/blob/main/src/is/ft_isprint.c) | Checks if the character is printable             |
| **Extra**                      | **Description**                                   |
| [ft_islower](https://github.com/oliverkingz/Libft_OZ/blob/main/src/is/ft_islower.c) | Checks if the character is a lowercase letter    |
| [ft_isupper](https://github.com/oliverkingz/Libft_OZ/blob/main/src/is/ft_isupper.c) | Checks if the character is an uppercase letter   |
| [ft_isspace](https://github.com/oliverkingz/Libft_OZ/blob/main/src/is/ft_isspace.c) | Checks if the character is a whitespace          |

### **String Functions**
- Core functions for handling strings: copying, joining, trimming, and splitting (`ft_strlen`, `ft_strjoin`, `ft_split`).
- Advanced search capabilities (`ft_strchr`, `ft_strrchr`, `ft_strnstr`).
- Functions like `ft_strmapi` and `ft_striteri` enable advanced iteration with user-defined operations.

| **Function**                   | **Description**                                   |
| ------------------------------ | ------------------------------------------------- |
| [ft_strlen](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strlen.c) | Calculates the length of a string                |
| [ft_split](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_split.c) | Splits a string into an array of strings         |
| [ft_strchr](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strchr.c) | Searches for a character in a string             |
| [ft_strrchr](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strrchr.c) | Searches for a character in a string from the end|
| [ft_strnstr](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strnstr.c) | Searches for a string within another string      |
| [ft_strdup](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strdup.c) | Duplicates a string                              |
| [ft_striteri](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_striteri.c) | Iterates over a string with an index             |
| [ft_strjoin](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strjoin.c) | Joins two strings into one                       |
| [ft_strlcat](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strlcat.c) | Safely concatenates strings                      |
| [ft_strlcpy](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strlcpy.c) | Safely copies strings                            |
| [ft_strmapi](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strmapi.c) | Iterates over a string and applies a function    |
| [ft_strncmp](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strncmp.c) | Compares two strings                             |
| [ft_strtrim](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_strtrim.c) | Trims whitespace from a string                   |
| [ft_substr](https://github.com/oliverkingz/Libft_OZ/blob/main/src/str/ft_substr.c) | Extracts a substring                             |

### **Memory Functions**
- Robust tools for memory allocation and manipulation: `ft_calloc`, `ft_memset`, `ft_memmove`.
- Optimized functions for comparisons and scans in memory areas.

| **Function**                   | **Description**                                   |
| ------------------------------ | ------------------------------------------------- |
| [ft_bzero]                    | Sets a block of memory to zero                   |
| [ft_calloc]                   | Allocates memory and initializes it to zero      |
| [ft_memchr]                   | Searches for a character in a memory block       |
| [ft_memcmp]                   | Compares memory blocks                            |
| [ft_memcpy]                   | Copies a memory block                             |
| [ft_memmove]                  | Moves a memory block                              |
| [ft_memset]                   | Sets a value in a memory block                   |

### **File I/O**
- Write to file descriptors using utilities like `ft_putstr_fd`, `ft_putnbr_fd`.
- Additional output functions from a custom printf implementation: `ft_printf`, `ft_putptr`, `ft_putnbr_base`.

| **Function**                   | **Description**                                   |
| ------------------------------ | ------------------------------------------------- |
| [ft_putchar_fd]               | Writes a character to a file descriptor          |
| [ft_putendl_fd]               | Writes a line to a file descriptor               |
| [ft_putnbr_fd]                | Writes a number to a file descriptor             |
| [ft_putstr_fd]                | Writes a string to a file descriptor             |
| **Extra**                      | **Description**                                   |
| [ft_printf]                   | Prints a formatted message                       |

### **Linked List Operations**
- Manage linked lists easily with node creation, addition, iteration, and mapping (`ft_lstnew`, `ft_lstadd_back`, `ft_lstmap`).

| **Function**                   | **Description**                                   |
| ------------------------------ | ------------------------------------------------- |
| [ft_lstnew]             | Creates a new list node                          |
| [ft_lstadd_front]       | Adds a node to the front of the list             |
| [ft_lstsize]            | Calculates the size of a list                    |
| [ft_lstlast]            | Gets the last node of the list                   |
| [ft_lstadd_back]        | Adds a node to the end of the list               |
| [ft_lstdelone]          | Deletes a node from the list                     |
| [ft_lstclear]           | Deletes all nodes from the list                  |
| [ft_lstiter]            | Iterates over a list                             |
| [ft_lstmap]             | Applies a function to each element of the list   |

### **Enhancements**
- **Refined Folder Structure**: Reorganized for a clearer and more modular layout.
- **Improved Makefile**: A polished Makefile that simplifies compilation and provides better options.

## **Skills Learned**
- Proficient use of C to create reusable and maintainable code.
- Handling dynamic memory allocation and management.
- Writing modular and extensible libraries.
- Implementing custom algorithms for string, character, and memory utilities.
- Deep understanding of linked list structures and custom I/O functions.

