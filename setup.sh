# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thoberth <thoberth@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/17 15:12:01 by thoberth          #+#    #+#              #
#    Updated: 2021/05/17 15:20:12 by thoberth         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

minikube start --driver=virtualbox \ 
eval $(minikube docker-env) \ 
sh srcs/metalLB/metallb.sh \ 
docker build -t nginx-image srcs/nginx/ \ 
kubectl apply -f srcs/nginx/nginxconfig.yaml