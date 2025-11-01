git submodule update --init --recursive --remote

cd ./solidbench
    yarn install
    yarn run solidbench-generate
cd ../

cd ./solidbench-multiple-vocab
    ./install.sh
    yarn run solidbench-generate
cd ../

docker compose build --no-cache
docker compose up
