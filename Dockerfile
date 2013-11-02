FROM ubuntu
RUN apt-get install -y ruby rubygems git
RUN git clone git@github.com:luisbebop/docker-sinatra-hello-world.git /opt/sinatra/
RUN gem install bundler
EXPOSE :5000
RUN cd /opt/sinatra && bundle install
CMD ["/usr/local/bin/foreman","start","-d","/opt/sinatra"]