#* Show all current containers (their process status)
docker ps

#* Show all containers (their process status)
docker ps -a

#* Show all IDs, both running and stopped
docker ps -aq

#* Start (execute) process
docker start *process_id*

#* Stop process
docker stop *process_id*

#* Remove process (you need to stop the process before removing it)
docker rm *process_id*

#* Force remove process
docker rm -f *process_id*

#* Create docker Volume Container to reflect changes made with image on the local machine
docker run -d -p 8081:80 --name website2 -v $(pwd):/website nginx

#* Execute image
docker exec -it website2 bash

#* Create new docker volume Container with the name set as website2 and nginx as image
docker run -d -p 8080:80 --name website2 -v $(pwd):/usr/share/nginx/html nginx

#* Enter the docker container with a bash shell
docker exec -it website2 bash

#* Exit the docker container
exit

# -d        -> Run in the background (detached)
# -p        -> Set port
# -v        -> Volume
# --name    -> Set name 