FROM ubuntu:16.04

WORKDIR /root
RUN apt update
RUN apt -y install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

# FROM https://github.com/tcnksm/dockerfile-rbenv/blob/master/Dockerfile
RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN /root/.rbenv/plugins/ruby-build/install.sh
ENV PATH /root/.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
RUN echo 'eval "$(rbenv init -)"' >> .bashrc
ENV CONFIGURE_OPTS --disable-install-doc
RUN echo 'gem: --no-rdoc --no-ri' >> .gemrc

# Install Ruby 187
RUN apt -y install subversion
RUN rbenv install 1.8.7-p375
RUN rbenv global 1.8.7-p375

ENV PATH $HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH

# Use mysql
RUN apt -y install libmysqlclient-dev

# Install rails 
RUN /bin/bash -l -c "gem install bundler -v '~>1'"
RUN /bin/bash -l -c "gem install rake -v 0.8.7" 
RUN /bin/bash -l -c "gem install rails -v 2.3.18"

CMD ["/bin/bash"]

