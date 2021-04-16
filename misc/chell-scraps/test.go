package main

import (
	"fmt"
	//"regexp"
	"net/url"
	"strings"
)

func main() {
	test := "https://example.com/app_launched/personal"
	testurl, _ := url.Parse(test)
	/*testQuery := testurl.Query()
	if testQuery.Get("yo") != "" {
		fmt.Println("YUP")
	} else {
		fmt.Println("NOPE")
	}*/

	path := testurl.Path
	fmt.Println(path)
	fmt.Println(strings.Contains(path, "personal"))

}
