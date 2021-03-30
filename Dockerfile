FROM mcr.microsoft.com/dotnet/core/sdk:5.0

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs

# source
RUN mkdir /code
WORKDIR /code

# host user
ARG UID=1000
ARG GID=1000
RUN useradd -m -u ${UID} docker
USER ${UID}:${GID}