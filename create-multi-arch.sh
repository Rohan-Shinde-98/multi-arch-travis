# #!/bin/bash

# export DOCKER_CLI_EXPERIMENTAL=enabled

# docker manifest create quay.io/rohan_shinde_98/multi-arch-travis:latest \
# quay.io/rohan_shinde_98/multi-arch-travis:x86_64 quay.io/rohan_shinde_98/multi-arch-travis:ppc64le quay.io/rohan_shinde_98/multi-arch-travis:s390x

# docker manifest inspect quay.io/rohan_shinde_98/multi-arch-travis


#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

REGISTRY='quay.io/rohan_shinde_98'
image='multi-arch-travis'

AMEND=""
AMEND+=" --amend ${REGISTRY}/${image}:x86_64";
AMEND+=" --amend ${REGISTRY}/${image}:ppc64le";
AMEND+=" --amend ${REGISTRY}/${image}:s390x";

docker manifest create quay.io/rohan_shinde_98/multi-arch-travis:latest ${AMEND}

docker manifest inspect quay.io/rohan_shinde_98/multi-arch-travis

# docker login quay.io -u "$ROBOT_USER" -p $ROBOT_TOKEN

# docker manifest push quay.io/rohan_shinde_98/multi-arch-travis:latest ${AMEND}
