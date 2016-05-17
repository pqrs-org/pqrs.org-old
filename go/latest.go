package main

import (
	"io/ioutil"
	"net"
	"net/http"
	"net/http/fcgi"
	"regexp"
)

func redirectToLatestFile(w http.ResponseWriter, r *http.Request, filepath string) {
	appcast, err := ioutil.ReadFile(filepath)
	if err != nil {
		return
	}

	re := regexp.MustCompile(`<enclosure url="(https://pqrs.org/.+?)"`)
	res := re.FindStringSubmatch(string(appcast))
	if len(res) <= 1 {
		return
	}

	http.Redirect(w, r, res[1], 303)
}

func handler(w http.ResponseWriter, r *http.Request) {
	switch r.URL.Path[1:] {
	case "karabiner":
		redirectToLatestFile(w, r, "../webroot/osx/karabiner/files/appcast.xml")
	case "seil":
		redirectToLatestFile(w, r, "../webroot/osx/karabiner/files/seil-appcast.xml")
	case "noejectdelay":
		redirectToLatestFile(w, r, "../webroot/osx/karabiner/files/noejectdelay-appcast.xml")
	case "showyedge":
		redirectToLatestFile(w, r, "../webroot/osx/ShowyEdge/files/appcast.xml")
	}
}

func main() {
	l, err := net.Listen("tcp", "127.0.0.1:9000")
	if err != nil {
		return
	}
	http.HandleFunc("/", handler)
	fcgi.Serve(l, nil)
}
