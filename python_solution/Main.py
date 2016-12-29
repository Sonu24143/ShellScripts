#!/usr/bin/python

def Main():
    filename="/usr/local/appnomic/appsone/current/collection-service/conf/config.properties"
    file=open(filename,"r")
    buffer=file.readlines()
    print buffer

if __name__ is "__main__":
    Main()
