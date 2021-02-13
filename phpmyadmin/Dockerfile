# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/10 10:33:14 by abelarif          #+#    #+#              #
#    Updated: 2021/02/12 20:18:10 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    alpine
EXPOSE  80 443 5000
COPY    srcs/ /srcs
RUN     ./srcs/install_all.sh
ENTRYPOINT ./srcs/start_services.sh && tail -f /dev/null
