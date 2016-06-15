FROM ubuntu:trusty
RUN apt-get update && \
    apt-get install -y apache2 php5 php5-curl php5-json php5-mcrypt php5-ldap php5-mysql php5-gd php5-sybase php5-redis libphp-predis redis-server mono-complete git && \
    locale-gen en_US.UTF-8 && \
    echo 'America/New_York' > /etc/timezone && \
    dpkg-reconfigure --frontend noninteractive tzdata
EXPOSE 80
COPY entrypoint.sh /
COPY hcpss-EduCrypt /hcpss-EduCrypt
# leaving this off for now
# COPY hcpss-SynergyAuthAPI /hcpss-SynergyAuthAPI
# RUN ln -s /hcpss-SynergyAuthAPI/www/api.php /var/www/html/api.php
ENTRYPOINT ["/entrypoint.sh"]
