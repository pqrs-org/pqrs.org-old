package main

import (
	"io/ioutil"
	"log"
	"net"
	"net/http"
	"net/http/fcgi"
	"os"
	"path"
	"path/filepath"
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
	switch path.Base(r.URL.Path) {
	case "karabiner-latest.dmg":
		redirectToLatestFile(w, r, "../../webroot/osx/karabiner/files/appcast.xml")
	case "seil-latest.dmg":
		redirectToLatestFile(w, r, "../../webroot/osx/karabiner/files/seil-appcast.xml")
	case "noejectdelay-latest.dmg":
		redirectToLatestFile(w, r, "../../webroot/osx/karabiner/files/noejectdelay-appcast.xml")
	case "showyedge-latest.dmg":
		redirectToLatestFile(w, r, "../../webroot/osx/ShowyEdge/files/appcast.xml")
	}
}

func main() {
	basedir, err := filepath.Abs(filepath.Dir(os.Args[0]))
	if err != nil {
		log.Fatal(err)
	}
	os.Chdir(basedir)

	l, err := net.Listen("tcp", "127.0.0.1:9100")
	if err != nil {
		return
	}
	http.HandleFunc("/", handler)
	fcgi.Serve(l, nil)
}
