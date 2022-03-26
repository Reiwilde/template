FROM ubuntu:jammy

ARG EMAIL=john.doe@my-company.com
ARG NAME="John Doe"
ARG PGP_KEY=
ARG USERNAME=user
ARG USER_UID=1000
ARG GROUP_UID=${USER_UID}

COPY configs /tmp/configs
COPY scripts /tmp/scripts

RUN bash /tmp/scripts/apt_update.sh
RUN bash /tmp/scripts/unminimize.sh
RUN bash /tmp/scripts/locales.sh

ENV LANG=en_US.UTF-8  
ENV LANGUAGE=en_US:en  
ENV LC_ALL=en_US.UTF-8 

RUN bash /tmp/scripts/common.sh "${USERNAME}" "${USER_UID}" "${GROUP_UID}"
RUN bash /tmp/scripts/git.sh "${USERNAME}" "${EMAIL}" "${NAME}" "${PGP_KEY}"
RUN bash /tmp/scripts/nvm.sh "${USERNAME}"
RUN bash /tmp/scripts/npm_gitmoji.sh "${USERNAME}"
RUN bash /tmp/scripts/zsh.sh "${USERNAME}"
RUN bash /tmp/scripts/zsh_nvm.sh "${USERNAME}"

RUN bash /tmp/scripts/apt_clean.sh

USER ${USERNAME}
WORKDIR /home/${USERNAME}
