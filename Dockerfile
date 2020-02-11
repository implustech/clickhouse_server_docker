FROM yandex/clickhouse-server:20.1.4.14

RUN  apt-get update && apt-get install -y unixodbc odbcinst odbc-postgresql && sed -i 's@^Driver=@Driver=/usr/lib/x86_64-linux-gnu/odbc/@' /etc/odbcinst.ini && apt-get clean 

