# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/25 16:53:17 by ozamora-          #+#    #+#              #
#    Updated: 2025/01/18 17:07:16 by ozamora-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a

# **************************************************************************** #
# COMMANDS
CC		:= cc
CFLAGS	:= -Wall -Wextra -Werror
CFLAGS	+= -MMD -MP

# **************************************************************************** #
# DIRECTORIES
SRC_DIR := src/
INC_DIR := inc/
OBJ_DIR := obj/

# SOURCE SUBDIRECTORIES
IS_DIR  := is/
LST_DIR := lst/
MEM_DIR := mem/
PUT_DIR := put/
STR_DIR := str/
TO_DIR  := to/
GET_DIR := get/

# **************************************************************************** #
# FILES

# SOURCE FILES
IS_FILES  :=	ft_isalnum ft_isalpha ft_isascii ft_isdigit ft_isprint \
				ft_islower ft_isupper ft_isspace ft_isdigit_sign_or_space \
				ft_issigned_nbr
LST_FILES :=	ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast \
				ft_lstadd_back ft_lstdelone ft_lstclear ft_lstiter ft_lstmap
MEM_FILES :=	ft_memset ft_memcpy ft_memmove ft_memchr ft_memcmp \
				ft_calloc ft_bzero
PUT_FILES :=	ft_putchar_fd ft_putstr_fd ft_putendl_fd ft_putnbr_fd \
				ft_printf ft_putchar ft_putstr ft_putptr \
				ft_putnbr ft_putnbr_base ft_putnbr_unsigned
STR_FILES :=	ft_strlen ft_strlcpy ft_strlcat ft_strchr ft_strrchr \
				ft_strncmp ft_strnstr ft_strdup ft_substr ft_strjoin \
				ft_strtrim ft_split ft_strmapi ft_striteri \
				ft_strrncmp
TO_FILES  :=	ft_toupper ft_tolower ft_itoa ft_atoi \
				ft_atol
GET_FILES :=	get_next_line

SRC_FILES := $(addprefix $(IS_DIR), $(IS_FILES))
SRC_FILES += $(addprefix $(LST_DIR), $(LST_FILES))
SRC_FILES += $(addprefix $(MEM_DIR), $(MEM_FILES))
SRC_FILES += $(addprefix $(PUT_DIR), $(PUT_FILES))
SRC_FILES += $(addprefix $(STR_DIR), $(STR_FILES))
SRC_FILES += $(addprefix $(TO_DIR), $(TO_FILES))
SRC_FILES += $(addprefix $(GET_DIR), $(GET_FILES))

# INCLUDE FILES
INC_FILES := libft get_next_line

# GENERAL FILES
SRCS	:= $(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJS	:= $(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_FILES)))
DEPS	:= $(addprefix $(OBJ_DIR), $(addsuffix .d, $(SRC_FILES)))
INCS	:= $(addprefix $(INC_DIR), $(addsuffix .h, $(INC_FILES)))

# **************************************************************************** #
# COLOURS

BOLD_RED	= \033[1;31m
BOLD_GREEN	= \033[1;32m
BOLD_YELLOW	= \033[1;33m
BOLD_BLUE	= \033[1;34m

DEF_COLOR  = \033[0;39m
CLEAR_LINE = \033[2K

# **************************************************************************** #
# RULES
-include $(DEPS)

# Default rule to create the library
all: $(NAME)

# Rule to create the static library
$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@printf "%b" "$(CLEAR_LINE)$(BOLD_BLUE)[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_GREEN)CREATED$(DEF_COLOR)\n"

# Rule to compile object files from source files
$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	@mkdir -p $(dir $@)
	@printf "%b" "$(CLEAR_LINE)$(BOLD_BLUE)[ozamora-'s Libft]:\t$(DEF_COLOR)$<\r"
	@$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

# Rule to clean generated files
clean:
	@rm -rf $(OBJ_DIR)
	@printf "%b" "$(CLEAR_LINE)$(BOLD_BLUE)[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_RED)OBJECTS CLEANED$(DEF_COLOR)\n"

# Rule to clean generated files and the executablle
fclean:
	@$(MAKE) clean > /dev/null
	@rm -rf $(NAME)
	@printf "%b" "$(CLEAR_LINE)$(BOLD_BLUE)[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_RED)FULLY CLEANED$(DEF_COLOR)\n"

# Rule to recompile from zero. 
re: fclean all

# Rule to check if the files pass norminette
norm:
	@norminette $(SRCS) $(INCS)

# Rule to show compilation and linking commands
show:
	@echo "$(BOLD_BLUE)Compilation command:\t$(DEF_COLOR)" \
		"$(CC) $(CFLAGS) -I$(INC_DIR) -c" \
		"$(SRC_DIR)libft.c -o $(OBJ_DIR)libft.o"
	@echo "$(BOLD_BLUE)Linking command:\t$(DEF_COLOR)" \
		"$(CC) $(CFLAGS) libft.o -o $(NAME)"
	@echo "$(BOLD_BLUE)Cleaning command:\t$(DEF_COLOR)" \
		"rm -rf $(OBJ_DIR) $(NAME)"

# Rule to show all variables being used
info:
	@echo "$(BOLD_BLUE)NAME: $(DEF_COLOR)$(NAME)"
	@echo "$(BOLD_BLUE)CC: $(DEF_COLOR)$(CC)"
	@echo "$(BOLD_BLUE)CFLAGS: $(DEF_COLOR)$(CFLAGS)"
	@echo "$(BOLD_BLUE)SRC_DIR: $(DEF_COLOR)$(SRC_DIR)"
	@echo "$(BOLD_BLUE)INC_DIR: $(DEF_COLOR)$(INC_DIR)"
	@echo "$(BOLD_BLUE)OBJ_DIR: $(DEF_COLOR)$(OBJ_DIR)"
	@echo "$(BOLD_BLUE)SRC_FILES: $(DEF_COLOR)$(SRC_FILES)"
	@echo "$(BOLD_BLUE)INC_FILES: $(DEF_COLOR)$(INC_FILES)"
	@echo "$(BOLD_BLUE)SRCS: $(DEF_COLOR)$(SRCS)"
	@echo "$(BOLD_BLUE)OBJS: $(DEF_COLOR)$(OBJS)"
	@echo "$(BOLD_BLUE)DEPS: $(DEF_COLOR)$(DEPS)"
	@echo "$(BOLD_BLUE)INCS: $(DEF_COLOR)$(INCS)"

# Rule to compile object files from source files with debug flags
debug: CFLAGS += -g3 -fsanitize=address
debug: clean all
	@echo "\t\t\t$(BOLD_YELLOW)[DEBUG MODE]$(DEF_COLOR)"

# Rule to compile with debug flags and execute valgrind
valgrind: CFLAGS += -g3
valgrind: clean all
	@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./$(NAME)

# Phony targets
.PHONY: all clean fclean re norm show info debug valgrind

# **************************************************************************** #