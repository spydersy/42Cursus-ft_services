FROM        alpine:3.12
EXPOSE      5050
COPY        /srcs /srcs
RUN         ./srcs/install_all.sh
CMD         ./srcs/start_services.sh