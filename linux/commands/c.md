## Test Rest API with curl

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
