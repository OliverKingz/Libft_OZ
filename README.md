# **Custom Libft - My Personal C Library**

## **Overview**
This repository contains my personal version of `Libft`, originally based on the 42 curriculum's Libft project. Over time, I have extended and modified it, freeing it from the original project's constraints. It now features additional functions, reorganized folders, and an improved Makefile for better usability and clarity.

## **Features**
### **Character Check Functions**
- Utilities to evaluate characters based on type (`ft_isalpha`, `ft_isdigit`, etc.).
- Extended support with added functions like `ft_islower`, `ft_isupper`, and `ft_isspace`.

### **String Manipulation**
- Core functions for handling strings: copying, joining, trimming, and splitting (`ft_strlen`, `ft_strjoin`, `ft_split`).
- Advanced search capabilities (`ft_strchr`, `ft_strrchr`, `ft_strnstr`).
- Functions like `ft_strmapi` and `ft_striteri` enable advanced iteration with user-defined operations.

### **Memory Management**
- Robust tools for memory allocation and manipulation: `ft_calloc`, `ft_memset`, `ft_memmove`.
- Optimized functions for comparisons and scans in memory areas.

### **File I/O**
- Write to file descriptors using utilities like `ft_putstr_fd`, `ft_putnbr_fd`.
- Additional output functions from a custom printf implementation: `ft_printf`, `ft_putptr`, `ft_putnbr_base`.

### **Linked List Operations**
- Manage linked lists easily with node creation, addition, iteration, and mapping (`ft_lstnew`, `ft_lstadd_back`, `ft_lstmap`).

### **Enhancements**
- **Refined Folder Structure**: Reorganized for a clearer and more modular layout.
- **Improved Makefile**: A polished Makefile that simplifies compilation and provides better options.

## **Skills Learned**
- Proficient use of C to create reusable and maintainable code.
- Handling dynamic memory allocation and management.
- Writing modular and extensible libraries.
- Implementing custom algorithms for string, character, and memory utilities.
- Deep understanding of linked list structures and custom I/O functions.

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


## **Skills Learned**
