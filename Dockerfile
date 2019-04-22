FROM jekyll/jekyll

RUN mkdir -p /srv/jekyll/blog.smockle.com
WORKDIR /srv/jekyll/blog.smockle.com

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

EXPOSE 4000

CMD jekyll serve