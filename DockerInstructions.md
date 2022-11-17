
### Initial commands to run after cloning the project (with the two Dockerfiles at the same directory level):
docker build -t next_task_base -f Dockerfile.base_setup .

docker build -t next_task .

### If this is an existing project (there are files beyond the Dockerfiles):
#### Start a container running the server:
docker container run -it -v $PWD:/app -v $PWD/bundle:/bundle -e BUNDLE_PATH=/bundle --rm -p 3000:3000 --name next_task next_task

#### Now you can navigate to the running app at `localhost:3030`

#### When the server is running in a container, that container can be accessed with (execute in another terminal):
docker container exec -it next_task /bin/bash

### If this is a new project and a Rails application has not been created yet:
Create a folder: bundle at the root level

#### Start a container with:
docker container run -it -v $PWD:/app -v $PWD/bundle:/bundle -e BUNDLE_PATH=/bundle --rm -p 3000:3000 --name next_task next_task /bin/bash

#### Create the rails application with:
rails new .

##### API only:
rails new . --api

##### with bootstrap:
rails new . -j esbuild --css bootstrap

#### Once the rails app is created
rails db:create
rails db:migrate

#### the server can be started using `rails server -b 0.0.0.0`

#### Now you can navigate to the running app at `localhost:3000`
