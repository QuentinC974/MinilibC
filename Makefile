##
## EPITECH PROJECT, 2020
## Tek2 (Workspace)
## File description:
## Makefile
##

SRC        =    strlen.s		\
				strcmp.s		\
				strncmp.s		\
				strchr.s		\
				rindex.s		\
				memset.s		\
				memcpy.s		\

OBJ        =    $(SRC:.s=.o)

CFLAGS    =    -fPIC

ASFLAGS	=	-felf64

LDFLAGS    =    -shared -fno-pie

CC        =    nasm

NAME    =    libasm.so


all:    $(NAME)

$(NAME):    $(OBJ)
	@ld -o $(NAME) $(OBJ) $(LDFLAGS)

%.o:    %.s
	$(CC) $(ASFLAGS) $< -o $@

clean:
	@rm -f $(OBJ)
	@rm -f *.gcda
	@rm -f *.gcno

fclean: clean
	@rm -f $(NAME)
	@rm -f vgcore.*

re: fclean all

.PHONY: all clean fclean re tests_run
