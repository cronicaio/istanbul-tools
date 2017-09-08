CURDIR = $(shell pwd)
GOBIN = $(CURDIR)/build/bin
GO ?= latest

istanbul:
	go build -v -o ./build/bin/istanbul ./cmd/istanbul
	@echo "Done building."
	@echo "Run \"$(GOBIN)/istanbul\" to launch istanbul."

load-testing:
	@echo "Run load testing"
	@CURDIR=$(CURDIR) go test -v github.com/getamis/istanbul-tools/tests/load/... --timeout 1h

clean:
	rm -rf build/bin/
