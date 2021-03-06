# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: intonoya <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/14 16:45:51 by intonoya          #+#    #+#              #
#    Updated: 2022/06/27 17:02:01 by intonoya         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

MAKE	=	make

SRCS	=	$(wildcard *.c)

HEAD	=	ft_printf.h

LIBFT	=	libft/libft.a

CC		=	cc

CFLAGS	=	-Wall -Wextra -Werror

OBJS	=	${SRCS:.c=.o}

$(NAME)	:	${OBJS} ${LIBFT} ${HEAD}
			
$(LIBFT):	make -C ./libft
	
all		:	${NAME}

clean	:
			make clean -C libft
			@rm -rf ${OBJS}

fclean	:		clean
				@rm -rf ${NAME}

re	:	fclean all

.PHONY.	:	all clean fclean re
