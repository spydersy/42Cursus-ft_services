# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install_requirement.sh                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abelarif <abelarif@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/11 19:06:09 by abelarif          #+#    #+#              #
#    Updated: 2021/04/12 21:49:18 by abelarif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

apk update
apk upgrade
apk add openrc
rc-status
touch /run/openrc/softlevel