# Clean up disk space

### DOCKER 

# see: https://docs.docker.com/engine/reference/commandline/system_prune/
#
# Add -a arg to:
# [prune] all images without at least one container associated to
docker system prune --volumes

# docker run leaves the container by default. This can be expensive in terms
# of disk space usage, especially during testing. 
# Remember to use docker run --rm flag if you don’t need to inspect the 
# container later. This flag doesn’t work with background containers (-d),
# so you’ll be left with finished containers anyway.
# Clean up dead and exited containers using command:
docker ps --filter status=dead --filter status=exited -aq \
  | xargs docker rm -v


# From: https://lebkowski.name/docker-volumes/
# hint osx users: your version of xargs won’t have the -r switch
# so just skip it (you may encounter an error if there are no
# images to clean up)
# Non Mac line 2
# | xargs -r docker rmi

docker images --no-trunc | grep '<none>' | awk '{ print $3 }' \
    | xargs docker rmi

# see: http://stackoverflow.com/questions/32723111/how-to-remove-old-and-unused-docker-images
docker images --filter "dangling=true" -q --no-trunc \
    | xargs docker rmi

# Clean up unused docker volumes
docker volume ls -qf dangling=true | xargs docker volume rm


# Adding time based pruning of everything not used in the last week
docker container prune --filter "until=168h"
docker network prune --filter "until=168h"
# docker image prune --filter "until=168h"


