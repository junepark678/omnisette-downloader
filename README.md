# omnisette-downloader
A way to launch omnisette without actually building it.


The point of this is to use on various free Docker hosting sites that require building an image, but takes too long to reliably build in a short amount of time.
This repo merely downloads the release artifact and then deploys it.

How to use this repo: 
1. Go to a Docker hosting site (we'll be using [[http://render.com]] as an example)
2. Make a GitHub account
3. **FORK** this repo (if you don't do this, you may ban my repo)
4. Set the upstream to the forked repo
5. Some providers (such as render) need a health check path or else the build won't finish, you can set the health check to `/v3/client_info`
6. Deploy!
