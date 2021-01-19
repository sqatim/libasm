NAME= libasm.a
SRC_PATH= srcs
OBJ_PATH= obj


SRC_NAME=ft_strlen.s\
		ft_strcpy.s\
		ft_strcmp.s\
		ft_write.s\
		ft_read.s\
		ft_strdup.s\


OBJ_NAME= $(SRC_NAME:.s=.o)

FLAGS= -fmacho64

COMP= nasm

all: $(NAME)

$(NAME) : $(OBJ_NAME)
	@ar rc $(NAME) $(OBJ_NAME)
	@ranlib $(NAME)
	@echo "                                                  Made by : \033[1;91mSqatim\033[m"
	@echo "	                                      ___           ___           ___             "
	@echo "                  ___          _____         /  /\         /  /\         /__/\     "
	@echo "                 /  /\        /  /::\       /  /::\       /  /:/_       |  |::\    "
	@echo "  ___     ___   /  /:/       /  /:/\:\     /  /:/\:\     /  /:/ /\      |  |:|:\   "
	@echo " /__/\   /  /\ /__/::\      /  /:/~/::\   /  /:/~/::\   /  /:/ /::\   __|__|:|\:\  "
	@echo " \  \:\ /  /:/ \__\/\:\__  /__/:/ /:/\:| /__/:/ /:/\:\ /__/:/ /:/\:\ /__/::::| \:\ "
	@echo "  \  \:\  /:/     \  \:\/\ \  \:\/:/~/:/ \  \:\/:/__\/ \  \:\/:/~/:/ \  \:\~~\__\/ "
	@echo "   \  \:\/:/       \__\::/  \  \::/ /:/   \  \::/       \  \::/ /:/   \  \:\       "
	@echo "    \  \::/        /__/:/    \  \:\/:/     \  \:\        \__\/ /:/     \  \:\      "
	@echo "     \__\/         \__\/      \  \::/       \  \:\         /__/:/       \  \:\     "
	@echo "                               \__\/         \__\/         \__\/         \__\/     "
	@echo "                     Compilation of $(NAME):  \033[1;32mOK\033[m"

%.o: %.s
	@$(COMP) $(FLAGS) $<

clean:
	@rm -rf $(OBJ_NAME)
	@echo "\033[1;33m>> all objects files are deleted.\033[0m"

fclean: clean
	@rm -rf $(NAME)
	@echo "\033[0;31m>> $(NAME) && all obbjects are deleted.\033[0m"

re : fclean all
