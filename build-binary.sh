# prerequisites: git go(1.12.4 and above)
set -x
rm -rf go 
git clone https://github.com/xteve-project/xTeVe "go/src/xTeVe" && cd "go/src/xTeVe"
go clean
go get github.com/koron/go-ssdp
go get github.com/gorilla/websocket
go get github.com/kardianos/osext
GOOS=linux GOARCH=arm64 go build -o xteve xteve.go
mv xteve ../../../xteve
cd ../../../
rm -rf go/
