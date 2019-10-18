ARG RUBY_PATH=/usr/local
ARG RUBY_VERSION=2.4.9

FROM drecom/centos-base:7 AS rubybuild
ARG RUBY_PATH
ARG RUBY_VERSION
RUN git clone git://github.com/rbenv/ruby-build.git $RUBY_PATH/plugins/ruby-build \
&&  $RUBY_PATH/plugins/ruby-build/install.sh
RUN ruby-build $RUBY_VERSION $RUBY_PATH/

FROM centos:7
LABEL maintainer "Drecom Technical Development Department <pr_itn@drecom.co.jp>"
ARG RUBY_PATH
ENV PATH $RUBY_PATH/bin:$PATH
COPY --from=rubybuild $RUBY_PATH $RUBY_PATH

RUN gem update --system
CMD [ "irb" ]
