# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/14 08:52:11 by abelarif          #+#    #+#              #
#    Updated: 2021/02/15 07:57:26 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM        alpine
EXPOSE      80 443 21
COPY        /srcs /srcs
RUN         /srcs/install_all.sh
ENTRYPOINT  ./srcs/start_service.sh && tail -f dev/null