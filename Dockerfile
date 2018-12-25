FROM drecom/centos-base:latest AS rubybuild
MAINTAINER Drecom Technical Development Department <pr_itn@drecom.co.jp>

ENV RUBY_VERSION 2.6.0
ENV RUBY_ROOT=/usr/local/ruby

RUN git clone git://github.com/rbenv/ruby-build.git /usr/local/ruby/plugins/ruby-build \
&&  /usr/local/ruby/plugins/ruby-build/install.sh
RUN ruby-build $RUBY_VERSION $RUBY_ROOT

FROM centos:7
ENV RUBY_ROOT=/usr/local/ruby
ENV PATH /usr/local/ruby/bin:$PATH
COPY --from=rubybuild $RUBY_ROOT $RUBY_ROOT
RUN yum -y install \
        epel-release \
        make \
        gcc \
        git \
        libxslt-devel \
        openssl-dev \
        mysql-dev \
        redis \
        sqlite-devel
