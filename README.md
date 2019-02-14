# blog.smockle.com

[![Build Status](https://travis-ci.com/smockle/blog.smockle.com.svg?branch=master)](https://travis-ci.com/smockle/blog.smockle.com)
[![Depfu](https://badges.depfu.com/badges/da68e8ebc1e87b22ee0b2b0df1510367/overview.svg)](https://depfu.com/github/smockle/blog.smockle.com?project_id=6950)

## Setup

```Bash
$ docker run -v ~/Developer/blog.smockle.com:/srv/jekyll/blog.smockle.com -w /srv/jekyll/ -it jekyll/jekyll jekyll new blog.smockle.com
$ docker run -p 4000:4000 -v ~/Developer/blog.smockle.com:/srv/jekyll/blog.smockle.com -w /srv/jekyll/blog.smockle.com -it jekyll/jekyll /bin/bash -c "bundle install && jekyll serve"
```
