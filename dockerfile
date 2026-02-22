FROM docker.io/nixos/nix

# Build Arguments
ARG MC_VERSION=1_20_4

# Volume to contain the server
VOLUME [ "/server" ]

ENV NIX_CONFIG="experimental-features = nix-command flakes"
RUN nix-channel --update
RUN nix profile add nixpkgs#jdk21_headless

RUN mkdir -p /setup/server
ADD installers/${MC_VERSION}/neoforge-*.jar /setup
ADD server/. /setup

WORKDIR /setup/server
RUN java -jar /setup/neoforge-*.jar --installServer
RUN echo "eula=true" > eula.txt

# Run as root
#USER 1000:1000

EXPOSE 25565

WORKDIR /setup
ENTRYPOINT [ "bash", "entrypoint.bash" ]
