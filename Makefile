# Makefile for Polyglotte Go project

# Go variables
GO := go
PKG := ./...
BINARY_NAME := polyglotte
BUILD_DIR := build

# Targets
.PHONY: all build test clean

all: build

build:
	@echo "Building Polyglotte..."
	@mkdir -p $(BUILD_DIR)
	$(GO) build -o $(BUILD_DIR)/$(BINARY_NAME) $(PKG)

test:
	@echo "Running tests for Polyglotte..."
	$(GO) test $(PKG)

clean:
	@echo "Cleaning up..."
	$(GO) clean
	rm -rf $(BUILD_DIR)
