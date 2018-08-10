# blog.smockle.com

## Setup

```Bash
$ docker run -v ~/Developer/blog.smockle.com:/srv/jekyll/blog.smockle.com -w /srv/jekyll/ -it jekyll/jekyll jekyll new blog.smockle.com
$ docker run -p 4000:4000 -v ~/Developer/blog.smockle.com:/srv/jekyll/blog.smockle.com -w /srv/jekyll/blog.smockle.com -it jekyll/jekyll /bin/bash -c "bundle install && jekyll serve"
```
