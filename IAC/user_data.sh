#!/bin/bash
set -e

apt update -y
apt install -y docker.io docker-compose

systemctl start docker
systemctl enable docker
usermod -aG docker ubuntu

sleep 20

cd /home/ubuntu

git clone https://github.com/PearlThoughts-DevOps-Internship/Strapi--code-Deployers.git

cd Strapi--code-Deployers/

git checkout GovindM-Branch






# mkdir -p /srv/pgdata

# # creating a network
# docker network create strapi-net 

# # Start PostgreSQL container
# docker run -d \
#   --name postgres \
#   --network strapi-net \
#   -e POSTGRES_USER=${db_username} \
#   -e POSTGRES_PASSWORD=${db_password} \
#   -e POSTGRES_DB=${db_name} \
#   -p 5432:5432 \
#   -v /srv/pgdata:/var/lib/postgresql/data \
#   postgres:15

# # Wait for DB to be ready
# sleep 20

# docker pull manojgovind/sample-strappiapp:latest


# docker run -d \
#   --name strapi-app \
#   --network strapi-net \
#   -p 1337:1337 \
#   -e DATABASE_CLIENT=postgres \
#   -e DATABASE_HOST=postgres \
#   -e DATABASE_PORT=5432 \
#   -e DATABASE_NAME=${db_name} \
#   -e DATABASE_USERNAME=${db_username} \
#   -e DATABASE_PASSWORD=${db_password} \
#   -e DATABASE_SSL=false \
#   -e APP_KEYS="${APP_KEYS}" \
#   -e API_TOKEN_SALT="${API_TOKEN_SALT}" \
#   -e ADMIN_JWT_SECRET="${ADMIN_JWT_SECRET}" \
#    manojgovind/sample-strappiapp:latest
