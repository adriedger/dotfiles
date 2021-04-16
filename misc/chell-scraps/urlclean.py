#!/usr/bin/python3

from urllib.parse import urlparse
import sys

#url = sys.argv[1]
url = sys.stdin.read()

a = urlparse(url)

print(a.netloc+a.path)
