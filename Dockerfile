FROM linuxserver/radarr:preview

RUN apt-get update && \
    apt install gnupg ca-certificates && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list && \
    apt update && \
    apt-get install -y mono-devel mkvtoolnix gpac && \
    apt-get clean && \
    rm -rf /tmp/* /var/tmp/*
