FROM alpine:3.12

RUN		apk update \
&& apk upgrade \
&& apk add vim \
&& apk add php7 php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom nginx \
&& mkdir -p /usr/share/webapps/ \
&& wget -P /usr/share/webapps/ http://wordpress.org/latest.tar.gz \
&& tar -xzvf /usr/share/webapps/latest.tar.gz \
&& rm /usr/share/webapps/latest.tar.gz

CMD sh