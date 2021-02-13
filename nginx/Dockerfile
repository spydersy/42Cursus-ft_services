# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/09 10:22:58 by abelarif          #+#    #+#              #
#    Updated: 2021/02/09 15:45:38 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	    alpine
EXPOSE	    443 80
COPY	    srcs/ /srcs
RUN		    ./srcs/nginx_config.sh
CMD 		nginx -g "daemon off;"