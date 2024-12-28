# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/25 16:53:17 by ozamora-          #+#    #+#              #
#    Updated: 2024/12/28 16:54:18 by ozamora-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a

# **************************************************************************** #
# COMMANDS
CC		:= cc
CFLAGS	:= -Wall -Wextra -Werror
CFLAGS	+= -MMD -MP

AR		:= ar rcs
MKDIR	:= mkdir -p
RM		:= rm -rf
CP		:= cp
PRINTF	:= printf "%b"

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
				ft_strtrim ft_split ft_strmapi ft_striteri
TO_FILES  :=	ft_toupper ft_tolower ft_itoa ft_atoi \
				ft_atol
GET_FILES :=	get_next_line

SRC_FILES := $(addprefix $(IS_DIR), $(IS_FILES))
SRC_FILES += $(addprefix $(LST_DIR), $(LST_FILES))
SRC_FILES += $(addprefix $(MEM_DIR), $(MEM_FILES))
SRC_FILES += $(addprefix $(PUT_DIR), $(PUT_FILES))
SRC_FILES += $(addprefix $(STR_DIR), $(STR_FILES))
SRC_FILES += $(addprefix $(TO_DIR), $(TO_FILES))
SRC_FILES += $(addprefix $(TO_DIR), $(GET_FILES))

# INCLUDE FILES
INC_FILES := libft get_next_line

# GENERAL FILES
SRCS	:= $(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJS	:= $(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_FILES)))
DEPS	:= $(addprefix $(OBJ_DIR), $(addsuffix .d, $(SRC_FILES)))
INCS	:= $(addprefix $(INC_DIR), $(addsuffix .h, $(INC_FILES)))

# **************************************************************************** #
# COLOURS

BOLD_RED   = \033[1;31m
BOLD_GREEN = \033[1;32m
BOLD_BLUE  = \033[1;34m

DEF_COLOR  = \033[0;39m
CLEAR_LINE = \033[2K

# **************************************************************************** #
# RULES
-include $(DEPS)

# Default rule to create the library
all: $(NAME)

# Rule to create the static library
$(NAME): $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@$(PRINTF) "$(CLEAR_LINE)$(BOLD_BLUE)[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_GREEN)CREATED$(DEF_COLOR)\n"

# Rule to compile object files from source files
$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	@$(MKDIR) $(dir $@)
	@$(PRINTF) "$(CLEAR_LINE)$(BOLD_BLUE)[ozamora-'s Libft]:\t$(DEF_COLOR)$<\r"
	@$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

# Rule to clean generated files
clean:
	@$(RM) $(OBJ_DIR)
	@$(PRINTF) "$(CLEAR_LINE)$(BOLD_BLUE)[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_RED)OBJECTS CLEANED$(DEF_COLOR)\n"

# Rule to clean generated files and the executablle
fclean:
	@make clean > /dev/null
	@$(RM) $(NAME)
	@$(RM) $(LIB_DIR)
	@$(PRINTF) "$(CLEAR_LINE)$(BOLD_BLUE)[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_RED)FULLY CLEANED$(DEF_COLOR)\n"

# Rule to recompile from zero. 
re: fclean all

# Rule to check if the files pass norminette
norm:
	@norminette $(SRCS) $(INCS)

# Rule to compile object files from source files with debug flags
debug: CFLAGS += -g3 -fsanitize=address
debug: re

# Rule to show all variables being used
info:
	@echo "$(BOLD_BLUE)NAME: $(DEF_COLOR)$(NAME)"
	@echo "$(BOLD_BLUE)CC: $(DEF_COLOR)$(CC)"
	@echo "$(BOLD_BLUE)CFLAGS: $(DEF_COLOR)$(CFLAGS)"
	@echo "$(BOLD_BLUE)SRC_DIR: $(DEF_COLOR)$(SRC_DIR)"
	@echo "$(BOLD_BLUE)INC_DIR: $(DEF_COLOR)$(INC_DIR)"
	@echo "$(BOLD_BLUE)OBJ_DIR: $(DEF_COLOR)$(OBJ_DIR)"
	@echo "$(BOLD_BLUE)LIB_DIR: $(DEF_COLOR)$(LIB_DIR)"
	@echo "$(BOLD_BLUE)SRC_FILES: $(DEF_COLOR)$(SRC_FILES)"
	@echo "$(BOLD_BLUE)INC_FILES: $(DEF_COLOR)$(INC_FILES)"
	@echo "$(BOLD_BLUE)SRCS: $(DEF_COLOR)$(SRCS)"
	@echo "$(BOLD_BLUE)OBJS: $(DEF_COLOR)$(OBJS)"
	@echo "$(BOLD_BLUE)DEPS: $(DEF_COLOR)$(DEPS)"
	@echo "$(BOLD_BLUE)INCS: $(DEF_COLOR)$(INCS)"
	@echo "$(BOLD_BLUE)MKDIR: $(DEF_COLOR)$(MKDIR)"
	@echo "$(BOLD_BLUE)RM: $(DEF_COLOR)$(RM)"
	@echo "$(BOLD_BLUE)PRINTF: $(DEF_COLOR)$(PRINTF)"
	@echo "$(BOLD_BLUE)CP: $(DEF_COLOR)$(CP)"

# Phony targets
.PHONY: all clean fclean re norm debug info

# **************************************************************************** #