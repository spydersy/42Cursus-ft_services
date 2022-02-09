# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/07 16:26:03 by abelarif          #+#    #+#              #
#    Updated: 2021/05/18 16:18:08 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    alpine:3.12
COPY    ./srcs/ /srcs
RUN     sh /srcs/install_all.sh
CMD     sh /srcs/start.sh