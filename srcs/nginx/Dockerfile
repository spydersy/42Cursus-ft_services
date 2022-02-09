FROM	    alpine:3.12
EXPOSE	    443 80 22
COPY	    srcs/ /srcs
RUN		    ./srcs/nginx_config.sh
CMD 		./srcs/start_nginx.sh