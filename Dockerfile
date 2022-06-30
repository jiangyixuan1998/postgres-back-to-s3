FROM postgres:latest
RUN apt update && \
    apt install awscli  -y

WORKDIR /home
RUN apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/apt/lists/*

# COPY mongodump /usr/bin
# COPY pg_dumpall /usr/bin
# RUN chmod 777 /usr/bin/mongodump
# RUN chmod 777 /usr/bin/pg_dumpall
## docker build -t registry.cn-shanghai.aliyuncs.com/kcr-3rd/pgsqldump:v1 .