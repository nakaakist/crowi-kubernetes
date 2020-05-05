# AWS access key ID, secret access key, S3 bucket name, and host name of the target mongodb
# are given as environmental variables ACCESS_KEY_ID, SECRET_ACCESS_KEY, BUCKET_NAME, and MONGO_HOST
FROM mongo:3.6.3
RUN apt-get update && \
    apt-get install -y curl zip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    mkdir /root/.aws && \
    rm awscliv2.zip
COPY ./entrypoint.sh /
ENTRYPOINT ["bin/sh", "/entrypoint.sh"]