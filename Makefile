# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/25 16:53:17 by ozamora-          #+#    #+#              #
#    Updated: 2024/11/25 22:48:11 by ozamora-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a

# **************************************************************************** #
# COMMANDS
CC := cc
CFLAGS := -Wall -Wextra -Werror 
CFLAGS += -g3 -fsanitize=address
CFLAGS += -MMD -MP

AR		:= ar rcs
MKDIR	:= mkdir -p
RM		:= rm -rf
CP		:= cp
PRINTF	:= printf "%b"

# **************************************************************************** #
# DIRECTORIES
SRC_DIR = src/
INC_DIR = inc/
OBJ_DIR = obj/
LIB_DIR = ../lib/

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
				ft_islower ft_isupper ft_isspace
LST_FILES :=	ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast \
				ft_lstadd_back ft_lstdelone ft_lstclear \
				ft_lstiter ft_lstmap
MEM_FILES :=	ft_memset ft_memcpy ft_memmove ft_memchr ft_memcmp \
				ft_calloc ft_bzero
PUT_FILES :=	ft_putchar_fd ft_putstr_fd ft_putendl_fd ft_putnbr_fd \
				ft_printf ft_putchar ft_putstr ft_putptr \
				ft_putnbr ft_putnbr_base ft_putnbr_unsigned
STR_FILES :=	ft_strlen ft_strlcpy ft_strlcat ft_strchr ft_strrchr \
				ft_strncmp ft_strnstr ft_strdup ft_substr ft_strjoin \
				ft_strtrim ft_split ft_strmapi ft_striteri
TO_FILES  :=	ft_toupper ft_tolower ft_itoa ft_atoi

SRC_FILES += $(addprefix $(IS_DIR), $(IS_FILES))
SRC_FILES += $(addprefix $(LST_DIR), $(LST_FILES))
SRC_FILES += $(addprefix $(MEM_DIR), $(MEM_FILES))
SRC_FILES += $(addprefix $(PUT_DIR), $(PUT_FILES))
SRC_FILES += $(addprefix $(STR_DIR), $(STR_FILES))
SRC_FILES += $(addprefix $(TO_DIR), $(TO_FILES))

# INCLUDE FILES
INC_FILES := libft

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
	@$(PRINTF) "$(CLEAR_LINE)$(BOLD_BLUE)\t[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_GREEN)CREATED$(DEF_COLOR)\n"
	@$(MKDIR) $(LIB_DIR) 
	@$(CP) $(NAME) $(INCLUDES) $(LIB_DIR)

# Rule to compile object files from source files
$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	@$(MKDIR) $(dir $@)
	@$(PRINTF) "$(BOLD_BLUE)\t[ozamora-'s Libft]: $(DEF_COLOR)$<\r"
	@$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

# Rule to clean generated files
clean:
	@$(RM) $(OBJ_DIR)
	@$(PRINTF) "$(CLEAR_LINE)$(BOLD_BLUE)\t[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_RED)OBJECTS CLEANED$(DEF_COLOR)\n"

# Rule to clean generated files and the executablle
fclean:
	@make clean > /dev/null
	@$(RM) $(NAME)
	@$(RM) $(LIB_DIR)
	@$(PRINTF) "$(CLEAR_LINE)$(BOLD_BLUE)\t[ozamora-'s Libft]:\t" \
		"$(DEF_COLOR)$(BOLD_RED)FULLY CLEANED$(DEF_COLOR)\n"


# Rule to recompile from zero. 
re: fclean all

# Rule to check if the files pass norminette
norm:
	@norminette $(SRCS) $(INCS)

# Phony targets
.PHONY: all clean fclean re norm

# **************************************************************************** #