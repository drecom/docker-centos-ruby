ARG RUBY_PATH=/usr/local
ARG RUBY_VERSION=2.6.7
ARG RUBY_CONFIGURE_OPTS=--with-jemalloc

FROM drecom/centos-base:7 AS rubybuild
ARG RUBY_PATH
ARG RUBY_VERSION
ARG RUBY_CONFIGURE_OPTS
RUN git clone git://github.com/rbenv/ruby-build.git $RUBY_PATH/plugins/ruby-build \
&&  $RUBY_PATH/plugins/ruby-build/install.sh
RUN yum -y install jemalloc-devel
RUN RUBY_CONFIGURE_OPTS=$RUBY_CONFIGURE_OPTS ruby-build $RUBY_VERSION $RUBY_PATH/

FROM centos:7
ARG RUBY_PATH
ENV PATH $RUBY_PATH/bin:$PATH
RUN yum -y install \
        epel-release 
RUN yum -y install \
	jemalloc-devel \
        make \
        gcc \
        git \
        openssl-devel \
        zlib-devel \
        mysql-devel \
        redis \
        sqlite-devel \
	bzip2

COPY --from=rubybuild $RUBY_PATH $RUBY_PATH

RUN gem update --system
CMD [ "irb" ]
