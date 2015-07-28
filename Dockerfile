FROM isdockreg101.innovate.ibm.com/ciohcld/redhat
RUN yum install -y ruby 
RUN yum install -y rubygems
RUN yum install -y git
RUN git clone https://github.com/AndrewLangford1/docker-ruby-hello-world.git  /opt/sinatra/
RUN gem install bundler
EXPOSE 5000
RUN cd /opt/sinatra && git pull && bundle install
CMD ["/usr/local/bin/foreman","start","-d","/opt/sinatra"]
