## chomod - change mode

```bash
chmod [options] mode[,mode] file1 [file2 ...]
-R recursive, i.e. include objects in subdirectories
-f force, forge ahead with all objects even if errors occur
-v verbose, show objects processed
# If a symbolic link is specified, the target object is affected.
# File modes directly associated with symbolic links themselves are typically never used.
# To view the file mode, the ls or stat

# octal modes
7	read, write and execute	    rwx
6	read and write	            rw-
5	read and execute     	    r-x
4	read only       	    r--
3	write and execute   	    -wx
2	write only	            -w-
1	execute only        	    --x
0	none	                    ---

# symbolic modes

chmod a+r publicComments.txt # add read permission for all (user, group, other)
chomod ugo+x file # same as above

```


## curl - transfer a url

Test Rest API with curl

Resources:

[codingpedia](http://www.codingpedia.org/ama/how-to-test-a-rest-api-from-command-line-with-curl/)

```bash
# HEAD request -I --head fetch header only
curl -I https://www.apple.com
# -X [cmd], cmd: GET, PUT, DELETE, HEAD, POST
# -i --include, include HTTP-header in output

# authentication using normal login
curl -u username:password http://www.example.com

# GET request, idempotent
# returns html source of apple front page
curl https://www.apple.com
# -H --header custom header, -v --verbose
curl -H "Accept:application/json" http://localhost:8888/demo-rest-jersey-spring/podcasts/1
curl -v -H "Accept:application/json" -H "Accept-encoding:gzip" http://localhost:8888/demo-rest-jersey-spring/podcasts/

# DELETE request, -X --request (HTTP) Specifies a custom request method
curl -i -X DELETE http://localhost:8888/demo-rest-jersey-spring/podcasts/

# POST request, used to modify and update a resource, create unamed resource (return name)
curl -i -X POST -H "Content-Type:application/json" http://localhost:8888/demo-rest-jersey-spring/podcasts/ -d '{"title":"- The Naked Scientists Podcast - Stripping Down Science","linkOnPodcastpedia":"http://www.podcastpedia.org/podcasts/792/-The-Naked-Scientists-Podcast-Stripping-Down-Science","feed":"feed_placeholder","description":"The Naked Scientists flagship science show brings you a lighthearted look at the latest scientific breakthroughs, interviews with the world top scientists, answers to your science questions and science experiments to try at home."}'
# -d --data, pass in data

# PUT request, used to create or overrite a resource, idempotent
curl -i -X PUT -H "Content-Type:application/json" http://localhost:8888/demo-rest-jersey-spring/podcasts/2 -d '{"id":2,"title":"Quarks & Co - zum Mitnehmen","linkOnPodcastpedia":"http://www.podcastpedia.org/quarks","feed":"http://podcast.wdr.de/quarks.xml","description":"Quarks & Co: Das Wissenschaftsmagazin"}'
```
