# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmartynu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/27 08:51:26 by vmartynu          #+#    #+#              #
#    Updated: 2018/02/02 08:22:54 by vmartynu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = *.c
OBJ = *.o
GCC = gcc -c -Wall -Wextra -Werror
H = ./inc

all: $(NAME)

$(NAME):
	$(GCC) $(SRC) -I$(H)
	ar rc $(NAME) $(OBJ)
	rm -f libft.h.gch
clean:
	rm -f *.o
fclean: clean
	rm -f $(NAME)
re: fclean all
	
