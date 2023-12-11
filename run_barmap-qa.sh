#!/bin/bash
# run_barmap-qa.sh version 0.2.0
#
# Run the PUBLIC barmap-qa docker image in a new container. Mount a passed
# directory inside the container such that one can read and write files there.


################################### Config ###################################

set -euo pipefail
export LC_ALL=C                 # use decimal point in 'date' despite locale

die() { echo "ERROR: $*" 1>&2; exit 1; }        # exit with an error message


image_name='xilef1337/barmap-qa'

update_interval_days=1          # check for image updates every n days


############################ Check positional arg ############################

# Check we have exactly one positional arg.
[ $# -eq 1 ] || die 'Pass the directory to mount inside container.'

host_dir="$1"

# Test for a directory.
[ -d "$host_dir" ] || die "'$host_dir' is not a directory"

# Resolve relative paths.
host_dir="$(cd "$host_dir" && pwd)"
[ -d "$host_dir" ] || die "cannot enter passed directory, check permissions"

# TODO check permissions of the passed directory, need x bit in all father
# dirs!

########################## Check for image updates ###########################

# image_date="$(                      # empty if image does not exist locally
#     docker image inspect --format='{{.Created}}' "$image_name" || true
# )"

# Get time since last modification of this file.
last_modified_secs="$(stat --printf '%Y' "$0")"     # seconds since epoch
time_secs="$(date '+%s')"                           # seconds since epoch
days_since_last_mod=$(( (time_secs-last_modified_secs) / (60*60*24) ))

if [ "$days_since_last_mod" -ge "$update_interval_days" ]; then
    echo "Checking for image updates (last check was $days_since_last_mod"\
         "days ago) ..."

    # Pull the latest image version from the registry ("latest" tag by default)
    docker pull "$image_name"

    touch "$0"                      # reset update counter: modify this file
fi

############################### Run container ################################

# Run the registry version of the image in a new container.
# Mount host dir (source) to target directory /host inside container.
# Recommended --mount option not supported yet by old Fedora docker, use
# --volume instead.
# The Z option to --volume fixes SELinux permission issues.
docker run --volume "$host_dir":'/host':Z \
    --user "$(id --user):$(id --group)" \
    --rm -it "$image_name"

