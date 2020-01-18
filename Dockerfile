FROM yandex/clickhouse-server:19.17


RUN  apt-get update && apt-get install -y unixodbc odbcinst odbc-postgresql && sed -i 's@^Driver=@Driver=/usr/lib/x86_64-linux-gnu/odbc/@' /etc/odbcinst.ini && apt-get clean 

