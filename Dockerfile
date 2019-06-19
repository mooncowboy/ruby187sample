FROM hublogix/minimal-ruby

# RUN echo "gem: --no-document" > ~/.gemrc

RUN gem install bundler -v '~>1' --no-rdoc --no-ri
RUN gem install rake -v 0.8.7 --no-rdoc --no-ri
RUN gem install rails -v 2.3.18 --no-rdoc --no-ri

CMD ["bin/bash"]

