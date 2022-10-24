CREATE ROLE fargate with SUPERUSER LOGIN PASSWORD 'password';

create database fargate;
ALTER DATABASE fargate OWNER TO fargate;

create database "fargate-test";
ALTER DATABASE  "fargate-test" OWNER TO fargate;
