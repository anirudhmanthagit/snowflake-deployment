FROM debian:bullseye

RUN apt-get update && apt-get install -y curl unzip

# Install SnowSQL
RUN curl -O https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.2/linux_x86_64/snowsql-1.2.21-linux_x86_64.bash && \
    bash snowsql-1.2.21-linux_x86_64.bash

ENV PATH="/root/.snowsql:${PATH}"
