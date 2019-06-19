FROM rifiel.azurecr.io/ruby187

WORKDIR /app

RUN git clone https://github.com/shoegazer99/ruby187sample.git
WORKDIR /app/ruby187sample/sample
RUN chmod +x script/*

RUN rbenv global
RUN echo $PATH
RUN /bin/bash -l -c "bundle"

EXPOSE 3000
#ENTRYPOINT [ "/bin/bash script/server" ]
ENTRYPOINT /bin/bash -l -c "run-server.sh"