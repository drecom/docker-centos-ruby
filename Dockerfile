FROM drecom/centos-base:latest AS rubybuild
LABEL maintainer "Drecom Technical Development Department <pr_itn@drecom.co.jp>"

ENV RUBY_VERSION 2.6.0
RUN git clone git://github.com/rbenv/ruby-build.git /usr/local/ruby/plugins/ruby-build \
&&  /usr/local/ruby/plugins/ruby-build/install.sh
RUN ruby-build $RUBY_VERSION /usr/local/ruby

FROM centos:7
ENV PATH /usr/local/ruby/bin:$PATH
COPY --from=rubybuild /usr/local/ruby /usr/local/ruby
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
