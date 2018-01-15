server:
	ruby -rwebrick -e 'WEBrick::HTTPServer.new(:DocumentRoot => "./webroot", :Port => 2080).start'

update:
	./docker/run.sh
