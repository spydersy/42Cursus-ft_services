# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/13 08:58:50 by abelarif          #+#    #+#              #
#    Updated: 2021/04/13 20:25:46 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM        alpine
EXPOSE      5050
COPY        /srcs /srcs
RUN         ./srcs/install_all.sh
CMD         ./srcs/start_services.sh