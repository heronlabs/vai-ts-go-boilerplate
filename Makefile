download: 
	go mod download

build: 
	rm -rf bin && go build -o ./bin/ ./src/*.go

test:
	go test -v ./tests/*.go

test-coverage:
	rm -rf coverage
	mkdir coverage
	go test -v ./tests/*.go  -coverpkg=./src/... -coverprofile ./coverage/coverage.txt
	go tool cover -html ./coverage/coverage.txt -o ./coverage/coverage.html

lint: 
	golangci-lint run ./src/...

script-run: 
	go run ./src/main.go

docker-build: 
	docker build -t go-script:latest . -f Dockerfile.local

docker-up-script: 
	docker-compose up -d go-script --build --force-recreate

docker-down: 
	docker-compose down --rmi all