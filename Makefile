watch:
	HTTP_SERVER_PORT=2080 ./docker/run.sh

server:
	ruby -rwebrick -e 'WEBrick::HTTPServer.new(:DocumentRoot => "./webroot", :Port => 2080).start'
