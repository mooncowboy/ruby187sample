FROM rifiel.azurecr.io/ruby187

WORKDIR /app
COPY ./sample ./
RUN chmod +x script/*
RUN chmod +x run-server.sh

RUN rbenv global
RUN echo $PATH
RUN /bin/bash -l -c "bundle"

EXPOSE 3000
ENTRYPOINT /bin/bash -l -c "./run-server.sh"