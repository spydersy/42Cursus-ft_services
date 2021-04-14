# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/11 18:53:01 by abelarif          #+#    #+#              #
#    Updated: 2021/04/13 00:26:37 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    alpine
EXPOSE  3306
COPY    ./srcs /srcs
RUN     /srcs/install_all.sh
CMD [ "/srcs/start>service.sh" ]