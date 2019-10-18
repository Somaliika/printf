NAME = libftprintf.a

C = ft_atoi.c ft_atoli.c ft_bzero.c ft_chrswap.c ft_isallequal.c ft_isalnum.c ft_isalpha.c\
ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c\
ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c\
ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putchar.c\
ft_putendl_fd.c ft_putendl.c ft_putnbr_fd.c ft_putnbr.c ft_putstr_fd.c \
ft_putnstr.c ft_putstr.c ft_sort.c\
ft_strarcat.c ft_strcat.c ft_strchr.c ft_strchri.c ft_strclr.c ft_strcmp.c ft_strcpy.c\
ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c\
ft_strjoin.c ft_strnjoin.c\
ft_strlcat.c ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c\
ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strrchri.c\
ft_strrev.c ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c\
ft_strfill.c\
ft_swap.c ft_tolower.c ft_topower.c ft_tosentence.c ft_toupper.c \
pt_buffer.c ft_printf.c pt_flag_zero.c pt_flags_utils.c pt_flags.c \
pt_itoa_base.c pt_maps.c pt_modificators.c pt_parsing.c\
pt_precisions.c pt_regex.c pt_sizes.c pt_types_general.c pt_types_int.c pt_types_float.c pt_utils.c

OBJECTS = ft_atoi.o ft_atoli.o ft_bzero.o ft_chrswap.o  ft_isallequal.o ft_isalnum.o ft_isalpha.o\
ft_isascii.o ft_isdigit.o ft_isprint.o ft_itoa.o ft_lstadd.o ft_lstdel.o ft_lstdelone.o\
ft_lstiter.o ft_lstmap.o ft_lstnew.o ft_memalloc.o ft_memccpy.o ft_memchr.o ft_memcmp.o\
ft_memcpy.o ft_memdel.o ft_memmove.o ft_memset.o ft_putchar_fd.o ft_putchar.o\
ft_putendl_fd.o ft_putendl.o ft_putnbr_fd.o ft_putnbr.o ft_putstr_fd.o\
ft_putnstr.o ft_putstr.o ft_sort.o\
ft_strarcat.o ft_strcat.o ft_strchr.o ft_strchri.o ft_strclr.o ft_strcmp.o ft_strcpy.o\
ft_strdel.o ft_strdup.o ft_strequ.o ft_striter.o ft_striteri.o\
ft_strjoin.o ft_strnjoin.o\
ft_strlcat.o ft_strlen.o ft_strmap.o ft_strmapi.o ft_strncat.o ft_strncmp.o\
ft_strncpy.o ft_strnequ.o ft_strnew.o ft_strnstr.o ft_strrchr.o ft_strrchri.o\
ft_strrev.o ft_strsplit.o ft_strstr.o ft_strsub.o ft_strtrim.o\
ft_strfill.o\
ft_swap.o ft_tolower.o ft_topower.o ft_tosentence.o ft_toupper.o \
pt_buffer.o ft_printf.o pt_flag_zero.o pt_flags_utils.o pt_flags.o\
pt_itoa_base.o pt_maps.o pt_modificators.o pt_parsing.o\
pt_precisions.o pt_regex.o pt_sizes.o pt_types_general.o pt_types_int.o pt_types_float.o pt_utils.o

INC = ./inc/
SRC = ./src/

all: $(NAME)

$(NAME):$(OBJECTS)
	@ar rc $(NAME) $(OBJECTS)
	@ranlib $(NAME)

%.o:$(SRC)%.c
	@gcc -Wall -Wextra -Werror -c $< -I$(INC)

clean:
	@rm -f $(OBJECTS)

fclean: clean
	@rm -f $(NAME)

re: fclean all
