NAME = gnl.a

SRCC =  get_next_line.c \
		get_next_line_utils.c \

SRCO = $(SRCC:.c=.o)

CFLAGS = -Wall -Werror -Wextra

all : $(SRCC) $(NAME)

%.o : %.c get_next_line.h
	gcc $(CFLAGS) -c $< -o ${<:.c=.o}

$(NAME) : $(SRCO)
	ar crs $(NAME) $(SRCO)

re : fclean $(NAME)

fclean : clean
	rm -f $(NAME)

clean :
	rm -f $(SRCO)

.PHONY: all re fclean clean
